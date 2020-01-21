defmodule FinalResult do
  @moduledoc """
  Documentation for FinalResult.
  """

  def results(f) do
    fs = File.stream!(f)
    d = CSV.decode(fs, headers: false)
    l = Enum.to_list(d)
    {:ok, hr} = hd(l)
    rcs = Enum.map(tl(l), fn dt ->   
        {:ok, d} = dt
        amt = case Float.parse(Enum.at(d, 6)) do
        {val, _} -> val
        _ -> 0
        end
        ban = if (Enum.at(d, 6) == nil), do: "Bank account number missing", else: Enum.at(d, 6)
        bac = if (Enum.at(d, 2) == nil), do: "Bank account number missing", else: Enum.at(d, 2)
        e2e = if (Enum.at(d, 10) == nil && Enum.at(d, 11) == nil), do: "End to end id missing", else: Enum.at(d, 10) <> Enum.at(d, 11)
        %{
          amount: %{
            currency: Enum.at(hr, 0),
            subunits: (amt * 100.0) |> Kernel.trunc()
          },
          bank_account_name: String.downcase(String.replace(Enum.at(d, 7), " ", "_")),
          bank_account_number: ban,
          bank_branch_code: bac,
          bank_code: Enum.at(d, 0),
          end_to_end_id: e2e,
        }
      end
    )
    %{
      filename: String.split(f, "/") |> List.last(),
      document: File.read!(f),
      failure_code: Enum.at(hr, 1),
      failure_message: Enum.at(hr, 2),
      records: Enum.reject(rcs, &is_nil/1)
    }
  end
end

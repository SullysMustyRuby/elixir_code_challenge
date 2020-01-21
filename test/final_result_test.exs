defmodule FinalResultTest do
  use ExUnit.Case
  doctest FinalResult

  test "greets the world" do
    res = FinalResult.results("test/support/data_sample.csv")
    assert expected_return() == Map.delete(res, :document)
  end

  defp expected_return() do
 		%{
 			failure_code: "100", 
 			failure_message: "All systems go", 
 			filename: "data_sample.csv", 
 			records: [
 				%{amount: %{currency: "SGD", subunits: 1234567898700}, bank_account_name: "sing_bank", bank_account_number: "12345678987", bank_branch_code: "221", bank_code: "1034", end_to_end_id: "Abcdef1226"}, 
 				%{amount: %{currency: "SGD", subunits: 1234567898600}, bank_account_name: "hsbc", bank_account_number: "12345678986", bank_branch_code: "", bank_code: "1035", end_to_end_id: "Abcdef1498"}, 
 				%{bank_account_name: "shinsei_ginko", amount: %{currency: "SGD", subunits: 1234567898500}, bank_account_number: "12345678985", bank_branch_code: "223", bank_code: "1036", end_to_end_id: "Abcdef1947"}, 
 				%{amount: %{currency: "SGD", subunits: 1234567898400}, bank_account_name: "sumitomo", bank_account_number: "12345678984", bank_branch_code: "224", bank_code: "1037", end_to_end_id: "Abcdef1517"}, 
 				%{bank_account_name: "sing_bank", amount: %{currency: "SGD", subunits: 0}, bank_account_number: "", bank_branch_code: "225", bank_code: "1038", end_to_end_id: "Abcdef1155"}, 
 				%{amount: %{currency: "SGD", subunits: 1234567898200}, bank_account_name: "hsbc", bank_account_number: "12345678982", bank_branch_code: "226", bank_code: "1039", end_to_end_id: "Abcdef1431"}, 
 				%{amount: %{currency: "SGD", subunits: 1234567898100}, bank_account_name: "shinsei_ginko", bank_account_number: "12345678981", bank_branch_code: "303", bank_code: "1040", end_to_end_id: "Abcdef1999"}, 
 				%{amount: %{currency: "SGD", subunits: 1.234567898e12}, bank_account_name: "sumitomo", bank_account_number: "12345678980", bank_branch_code: "304", bank_code: "1041", end_to_end_id: "Abcdef1536"}, 
 				%{amount: %{currency: "SGD", subunits: 1234567897900}, bank_account_name: "sing_bank", bank_account_number: "12345678979", bank_branch_code: "305", bank_code: "1042", end_to_end_id: ""}, 
 				%{amount: %{currency: "SGD", subunits: 1234567897800}, bank_account_name: "hsbc", bank_account_number: "12345678978", bank_branch_code: "306", bank_code: "1043", end_to_end_id: "Abcdef1028"}, 
 				%{amount: %{currency: "SGD", subunits: 1234567897700}, bank_account_name: "shinsei", bank_account_number: "12345678977", bank_branch_code: "307", bank_code: "1044", end_to_end_id: "Abcdef1790"}, 
 				%{amount: %{currency: "SGD", subunits: 1234567897600}, bank_account_name: "sumitomo", bank_account_number: "12345678976", bank_branch_code: "123", bank_code: "1045", end_to_end_id: "Abcdef1188"}, 
 				%{bank_account_name: "sing_bank", amount: %{currency: "SGD", subunits: 1234567897500}, bank_account_number: "12345678975", bank_branch_code: "124", bank_code: "1046", end_to_end_id: "Abcdef1583"}, 
 				%{amount: %{currency: "SGD", subunits: 1234567897400}, bank_account_name: "hsbc", bank_account_number: "12345678974", bank_branch_code: "125", bank_code: "1047", end_to_end_id: "Abcdef1463"}, 
 				%{bank_account_name: "shinsei_ginko", amount: %{currency: "SGD", subunits: 1234567897300}, bank_account_number: "12345678973", bank_branch_code: "721", bank_code: "1048", end_to_end_id: "Abcdef1995"}, 
 				%{amount: %{currency: "SGD", subunits: 1234567897200}, bank_account_name: "sumitomo", bank_account_number: "12345678972", bank_branch_code: "722", bank_code: "1049", end_to_end_id: "Abcdef1633"}, 
 				%{amount: %{currency: "SGD", subunits: 1234567897100}, bank_account_name: "bot", bank_account_number: "12345678971", bank_branch_code: "723", bank_code: "1050", end_to_end_id: "Abcdef1115"}
 			]
 		}
  end
end

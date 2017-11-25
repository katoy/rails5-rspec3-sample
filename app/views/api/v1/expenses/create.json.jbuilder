json.expenses do
  json.partial! 'api/v1/expenses/expense', expense: @expense
end

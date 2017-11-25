json.extract! expense, :id, :payee, :amount, :title
json.day_at expense.day_at.strftime('%Y-%m-%d')

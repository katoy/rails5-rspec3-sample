class Expense < ApplicationRecord
  validates :payee, presence: true
  validates :amount, presence: true
  validates :day_at, presence: true
end

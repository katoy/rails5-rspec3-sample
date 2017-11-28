# == Schema Information
#
# Table name: expenses
#
#  id         :integer          not null, primary key
#  payee      :string
#  amount     :decimal(10, 2)
#  day_at     :datetime
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Expense < ApplicationRecord
  validates :payee, presence: true
  validates :amount, presence: true
  validates :day_at, presence: true
end

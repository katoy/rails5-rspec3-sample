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

FactoryBot.define do
  factory :expense do
    payee 'MyString'
    amount '9.99'
    day_at '2017-11-24'
    title 'MyString'
  end
end

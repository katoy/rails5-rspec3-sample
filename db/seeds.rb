# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

data = [
  {
    payee: 'Youichi Kato',
    amount: 10.23,
    title: 'Amazon.com',
    day_at: Time.zone.parse('2018-11-10')
  },
  {
    payee: 'Youichi Kato',
    amount: 10.23,
    title: 'Amazon.com',
    day_at: Time.zone.parse('2018-11-10')
  },
  {
    payee: 'Youichi Kato',
    amount: 5.00,
    title: 'seve-eleven',
    day_at: Time.zone.parse('2018-11-12')
  }
]
Expense.create(data)


```
$ rails new rails5-rspec3 --skip-test --api
$ cd rails5-rspec3
$ bundle install --path vendor/bundle

$ bundle exec rails g rspec:install

$ rails g scaffold Expense payee:string 'amount:decimal{10,2}' day_at:datetime title:string
```

```
$ bin/rails db:drop
$ bin/rails db:migrate db:seed

# $ 別端末で bin/rails s で サーバー起動してから以下を行う

$ curl http://localhost:3000/api/v1/expenses -w '\n'
{"expenses":[{"id":1,"payee":"Youichi Kato","amount":"10.23","title":"Amazon.com","day_at":"2018-11-10"},{"id":2,"payee":"Youichi Kato","amount":"10.23","title":"Amazon.com","day_at":"2018-11-10"},{"id":3,"payee":"Youichi Kato","amount":"5.0","title":"seve-eleven","day_at":"2018-11-12"}]}

$ curl http://localhost:3000/api/v1/expenses/2018-11-10 -w '\n'
{"expenses":[{"id":1,"payee":"Youichi Kato","amount":"10.23","title":"Amazon.com","day_at":"2018-11-10"},{"id":2,"payee":"Youichi Kato","amount":"10.23","title":"Amazon.com","day_at":"2018-11-10"}]}

$ curl -X POST  http://localhost:3000/api/v1/expenses -d 'expense[payee]=Dr.x&expense[amount]=5&expense[title]=Books&expense[day_at]=2018-12-01'  -w '\n'
{"expenses":{"id":12,"payee":"Dr.x","amount":"5.0","title":"Books","day_at":"2018-12-01"}}
```

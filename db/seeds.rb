# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
client = Client.create!(first_name: "raphael", last_name: "alanpay", middle_name: "B", client_number: "0123456789")
BankAccount.create!(client: client, account_number: "0000001")
client = Client.create!(first_name: "celso", last_name: "junior", middle_name: "luiz", client_number: "0123456790")
BankAccount.create!(client: client, account_number: "0000002")

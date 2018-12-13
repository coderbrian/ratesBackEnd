# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Currency.destroy_all 

c1 = Currency.create(currency_name: "USD")
c2 = Currency.create(currency_name: "Bond")
c3 = Currency.create(currency_name: "RTGS")
c4 = Currency.create(currency_name: "OMIR")

p "Created #{Currency.count} currencies"

m1 = Market.create(base_currency_id: c1.id, quoted_currency_id: c2.id)
m2 = Market.create(base_currency_id: c2.id, quoted_currency_id: c3.id)
m3  = Market.create(base_currency_id: c1.id, quoted_currency_id: c3.id)
m4  = Market.create(base_currency_id: c3.id, quoted_currency_id: c4.id)
p "Created #{Market.count} markets"

r1 = Rate.create(market_id: m1.id, price: 280)
r2 = Rate.create(market_id: m2.id, price: 20)
r3 = Rate.create(market_id: m3.id, price: 230)
r4 = Rate.create(market_id: m4.id, price: 440)

p "Created #{Rate.count} rates"
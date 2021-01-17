# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |no|
  Bunrui.create( bun_name: "分類#{no + 1}" )
end

10.times do |no|
  User.create(
    name: "ユーザ#{no}",
    age: 1,
    kubun: '区分 1',
    zipcode: 1,
    bunid: 1,
    email: "test#{no}@h.com",
    password: 'password'
  )
end

10.times do |no|
  Parent.create(name: "親_名前#{no}")
end

Parent.all.each do |p|
  3.times do |no|
    p.children.create(
      name: "親 #{p.id} の子供 No. #{no + 1}",
      parent_id: p.id
    )
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(0...10).each do |no|
  Bunrui.create( bun_name: "分類 #{no}" )
end

10.times do |no|
  User.create(
    name: "ユーザ #{no}",
    age: no,
    kubun: "区分 #{no}",
    zipcode: no,
    bunid: no
  )
end

10.times do |no|
  Parent.create(
    name: "親 #{no}"
  )
end


Parent.all.each do |p|
  3.times do |no|
    p.children.create(
      name: "親 #{p.id} の子供 No. #{no}"
    )
  end
end

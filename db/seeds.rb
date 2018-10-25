require 'faker'

10.times do
  assembly = Assembly.create!(name: Faker::Cannabis.strain)
end

10.times do
  part = Part.create!(part_number: Faker::Number.number(10))
end

20.times do
	Assembly.find(rand(1..10)).parts << Part.find(rand(1..10))
end
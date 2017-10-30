require 'faker'

users = []


15.times do
  users << User.create!(:first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name, :email => Faker::Internet.email, :password => 'password')
end


users.each do |user|
  15.times do
    user.posts << Post.create!(title: Faker::Lorem.word, description: Faker::Lorem.paragraph(5), condition: Faker::Lorem.sentence, price: Faker::Number.number(2))
  end
end

require 'faker'

users = []


15.times do
  users << User.create!(:user_name => Faker::Internet.user_name, :email => Faker::Internet.email, :password => 'password')
end


users.each do |user|
  15.times do
    user.posts << Post.create!(title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph(5), condition: Faker::Lorem.sentence, price: Faker::Number.number(2))
  end
end

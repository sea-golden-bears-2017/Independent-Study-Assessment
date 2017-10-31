require 'faker'

users = []


15.times do
  users << User.create!(:user_name => Faker::Internet.user_name, :email => Faker::Internet.email, :password => 'password')
end


users.each do |user|
  5.times do
    user.posts << Post.create!(title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph(5), condition: Faker::Lorem.sentence, start: DateTime.now, end: DateTime.new(2018,2,3,4,5,6,'+7') ,price: 1)
  end
end

puts 'Destroying data'

Goal.destroy_all
Role.destroy_all
Dificulty.destroy_all
User.destroy_all

puts 'creating user'

user = User.create(email: 'email@email.com', password: '123456')


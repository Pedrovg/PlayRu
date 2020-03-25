puts 'Destroying data'

Goal.destroy_all
Role.destroy_all
Dificulty.destroy_all
User.destroy_all

puts 'creating user'

user = User.create(email: 'email@email.com', password: '123456')

puts 'creating goals'

Goal.create(user: User.first, name: "Read")
Goal.create(user: User.first, name: "Lift")
Goal.create(user: User.first, name: "Gardening")

name = %w(Read Lift Gardening)

type = %w([
  {
    "type": "Brain"
  },
  {
    "type": "Muscle"
  },
  {
    "type": "Specialty"
  }])

exp = %w([
  {
    "exp": 20
  },
  {
    "exp": 50
  },
  {
    "exp": 5
  }])

goal = Goal.new(name: name.sample,
  type: type.sample,
  exp: exp.sample,
  user: user)

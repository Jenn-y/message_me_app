5.times do |user|
  User.create!(
    username: 'john #{user}',
    password: '123456'
  )
end

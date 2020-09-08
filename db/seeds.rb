5.times do |user|
  User.create!(
    username: "john#{user}",
    password: '123456'
  )
end

4.times do |message|
  Message.create!(
    body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione magnam provident doloribus labore, ea dolor! Inventore totam libero voluptate tempora?",
    user_id: User.last.id
  )
end

# ユーザー
User.create!(
  name:                   'Ryota',
  email:                  'rails_sample@example.com',
  password:               'password',
  password_confirmation:  'password',
  activated:               true,
  activated_at:            Time.zone.now,
)

99.times do |n|
  name = Faker::Name.name
  email = Faker::Internet.email
  password = 'password'
  User.create!(
    name:                   name,
    email:                  email,
    password:               password,
    password_confirmation:  password,
    activated:              true,
    activated_at:           Time.zone.now,
  )
end

# 本
users = User.all
10.times do |n|
  n += 1
  title = "#{n}個目の本"
  content = "#{n}個目の本の内容"
  users.each do |user|
    user.books.create!(
      title: title,
      content: content,
    )
  end
end

# フォローとフォロワー
users = User.all
user = users.first
following = users[3..50]
followers = users[4..45]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

# いいね
# users = User.all
# user = users.first
# books = Book.all

# コメント
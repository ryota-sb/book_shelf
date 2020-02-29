20.times do |i|
  i += 1
  user = User.create(
    name: "Sample_user#{i}",
    email: "sample#{i}@example.co.jp",
    password: "password",
    password_confirmation: "password",
    activated: true
  )

  10.times do |j|
    j += 1
    book = Book.create(
      title: "#{user.name}#{j}",
      content: "#{j}番目の投稿",
      user_id: user.id
    )
    
    Like.create(book_id: i, user_id: j)
  end
end
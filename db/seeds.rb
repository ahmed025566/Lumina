# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

first_Account = Account.create!(first_name: 'Ahmed', last_name: 'Salah', username: 'ahmed657',email: 'ahmed025566@outlook.com', password: 'first_account_password', website: 'ahnedSalah.com', description: 'Living life one photo at a time 📷')
second_Account = Account.create!(first_name: 'Alex', last_name: 'Martiene', username: 'alex967',email: 'alexmartieni986@yahho.com', password: 'second_account_password', website: 'Alex_martienie.com', description: 'Artist by day, dreamer by night 🌙')
third_Account = Account.create!(first_name: 'Janet', last_name: 'Robert', username: 'janet402',email: 'janetRoberto567@gmail.com', password: 'third_account_password', website: 'Janet.com', description: 'Creating my own sunshine ☀️')
forth_Account = Account.create!(first_name: 'Andrew', last_name: 'flex', username: 'andrew947',email: 'andrew095@gmail.com', password: 'forth_account_password', website: 'AndrewFlexBlog.com', description: 'Dancing to the rhythm of my own heart')
fifth_Account = Account.create!(first_name: 'Antoan', last_name: 'Nagy', username: 'antoan78',email: 'antoanNagy385@gmail.com', password: 'fifth_account_password', website: 'MaryGalary.com', description: 'Lost in the world of words 📚')
sixth_Account = Account.create!(first_name: 'Jim', last_name: 'Dan', username: 'Jim765',email: 'jimdan429@gmail.com', password: 'sixth_account_password', website: 'Jim_agency.com', description: 'On a journey to explore the extraordinary ✈️')
seventh_Account = Account.create!(first_name: 'James', last_name: 'Robnson', username: 'james37',email: 'james377@gmail.com', password: 'seventh_account_password', website: 'James_factory.com', description: 'Embracing the chaos with a smile 😄')
eightth_Account = Account.create!(first_name: 'Jenes', last_name: 'Waxman', username: 'Jenes867',email: 'Jenes867@gmail.com', password: 'eightth_account_password', website: 'JeneesWorkshops.com', description: 'Solving problems, delivering solutions 🧩')
ninth_Account = Account.create!(first_name: 'Otto', last_name: 'harte', username: 'Otto73',email: 'otto73@gmail.com', password: 'ninth_account_password', website: 'Otto_automation.com', description: 'Making life better, one [product/service] at a time 🌟')
tenth_Account = Account.create!(first_name: 'Robert', last_name: 'macly', username: 'robert94',email: 'robertmac96W@gmail.com', password: 'tenth_account_password', website: 'robert_linky.com', description: '🚴‍♀️ Cycling through life’s adventures 🚴‍♂️')


first_Account.image.attach(io: File.open(Rails.root.join("app/assets/images/firstACCOUNT.jpg")), filename: "firstACCOUNT.jpg")
second_Account.image.attach(io: File.open(Rails.root.join("app/assets/images/SWCOND.jpg")), filename: "SWCOND.jpg")
third_Account.image.attach(io: File.open(Rails.root.join("app/assets/images/THIRD.jpg")), filename: "THIRD.jpg")
forth_Account.image.attach(io: File.open(Rails.root.join("app/assets/images/FORTH.jpg")), filename: "FORTH.jpg")
fifth_Account.image.attach(io: File.open(Rails.root.join("app/assets/images/fifth.jpg")), filename: "fifth.jpg")
sixth_Account.image.attach(io: File.open(Rails.root.join("app/assets/images/sixth.jpg")), filename: "sixth.jpg")
seventh_Account.image.attach(io: File.open(Rails.root.join("app/assets/images/seventh.jpg")), filename: "seventh.jpg")
eightth_Account.image.attach(io: File.open(Rails.root.join("app/assets/images/eighthth.jpg")), filename: "eighthth.jpg")
ninth_Account.image.attach(io: File.open(Rails.root.join("app/assets/images/ninth.jpg")), filename: "ninth.jpg")
tenth_Account.image.attach(io: File.open(Rails.root.join("app/assets/images/tenth.jpg")), filename: "tenth.jpg")



first_post = Post.create!(account_id: 1, active: true, description: 'The earth will not continue to offer its harvest, except with faithful stewardship')
second_post = Post.create!(account_id: 2, active: true, description: 'Books are important for the mind, heart, and soul. But dont take it from us: These quotes about reading speak for themselves.')
third_post = Post.create!(account_id: 3, active: true, description: 'Man cannot discover new oceans unless he has the courage to lose sight of the shore')
forth_post = Post.create!(account_id: 4, active: true, description: '“Just one small positive thought in the morning can change your whole day.')
fifth_post = Post.create!(account_id: 5, active: true, description: 'Opportunities dont happen, you create them.')
sixth_post = Post.create!(account_id: 6, active: true, description: 'Love your family, work super hard, live your passion.')
seventh_post = Post.create!(account_id: 7, active: true, description: '“It is never too late to be what you might have been.” ')
eightth_post = Post.create!(account_id: 8, active: true, description: 'There are three ways to ultimate success: The first way is to be kind. The second way is to be kind. The third way is to be kind.')
ninth_post = Post.create!(account_id: 9, active: true, description: 'Success is peace of mind, which is a direct result of self-satisfaction in knowing you made the effort to become the best of which you are capable.')
tenth_post = Post.create!(account_id: 10, active: true, description: 'I never dreamed about success. I worked for it.')

first_post.images.attach(io: File.open(Rails.root.join("app/assets/images/POST1.jpeg")), filename: "POST1.jpeg")
second_post.images.attach(io: File.open(Rails.root.join("app/assets/images/post2.jpeg")), filename: "post2.jpeg")
third_post.images.attach(io: File.open(Rails.root.join("app/assets/images/post3.jpeg")), filename: "post3.jpeg")
forth_post.images.attach(io: File.open(Rails.root.join("app/assets/images/post4.jpeg")), filename: "post4.jpeg")
fifth_post.images.attach(io: File.open(Rails.root.join("app/assets/images/post5.webp")), filename: "post5.webp")
sixth_post.images.attach(io: File.open(Rails.root.join("app/assets/images/post6.webp")), filename: "post6.webp")
seventh_post.images.attach(io: File.open(Rails.root.join("app/assets/images/post7.jpeg")), filename: "post7.jpeg")
eightth_post.images.attach(io: File.open(Rails.root.join("app/assets/images/post8.jpeg")), filename: "post8.jpeg")
ninth_post.images.attach(io: File.open(Rails.root.join("app/assets/images/post9.webp")), filename: "post9.webp")
tenth_post.images.attach(io: File.open(Rails.root.join("app/assets/images/post10.jpeg")), filename: "post10.jpeg")


follower = 1
while follower <= 10
    (1..10).each do |following|
       Follower.create(follower_id: follower, following_id: following) if follower != following
    end
    follower += 10
end


account = 1
while account <= 10
  (1..10).each do |post|
    Like.create(account_id: account, post_id: post)
  end
  account += 1
end

puts "Data Base seeded successfully!"
Post.destroy_all

5.times do |i|
  Post.create!(title: "Post number #{i}", body: "Some good question #{i}")
end
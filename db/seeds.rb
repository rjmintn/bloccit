# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'random_data'
#50.times do
  Post.find_or_create_by!(title: "Examples") do |post|
    post.body = "This file should contain all the record creation needed to seed the database with its default values. The data can then be loaded with the rake db:seed (or created alongside the db with db:setup)."
  end
#end
posts = Post.find_by_title("Examples")

  Comment.find_or_create_by!(post_id: posts.id) do |comment|
    comment.body = "blah blah blab blah blah dee blah"
  end
puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

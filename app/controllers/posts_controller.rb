class PostsController < ApplicationController
  def index
    @posts = Post.all

    @posts.each_with_index do |post, idx|
      if idx%5 == 0
        post.title = "SPAM"
      end
    end
  end

  def show
  end

  def new
  end

  def edit
  end
end

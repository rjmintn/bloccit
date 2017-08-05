class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :post


  def favorite_list(id)
    @p = Post.find(id)
    @vt = votes.where(post_id: id).count
    @usr = Post.find(id).user
    avatar_url2(24, @usr)
  end
end

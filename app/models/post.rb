class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  after_save :update_post_counter

  private

  def update_post_counter
    author.update(post_counter: author.posts.count)
  end
  
  private

def update_post_counter
   post.update(comments_counter: post.comments.count)
end
  
 def last_5_comments
    comments.order(created_at: :desc).limit(5)
  end
end

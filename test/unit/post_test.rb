require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert tru
  # end
  
  
test "should not save post without title" do
  post = Post.new
  assert !post.save
end


test "should not save post without picture" do
  post = Post.new
  post.title ="test title"
  assert !post.save
end


end

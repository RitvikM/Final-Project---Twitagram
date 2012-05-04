require 'test_helper'

class UserTest < ActiveSupport::TestCase
 
 
 test "should not save user without username" do
  user = User.new
  user.email = "test@gmail.com"
  user.password = "passwordtest"  
  assert !user.save
 end
 
  test "should not save user without email" do
  user = User.new
  user.username = "Test Username"
  user.password = "passwordtest"  
  assert !user.save
 end
 
 test "should not save user without password" do
  user = User.new
  user.username = "Test Username"
  user.email = "test@gmail.com"
  assert !user.save
 end

 
 
 
 
end

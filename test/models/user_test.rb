require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @user = User.new(nick: "adTest", email: "adtest@tu.pl", password: "testPass", password_confirmation: "testPass")
  end
  
  test "should be valid" do
    assert @user.valid?
  end
  
  test "nick should be present" do
    @user.nick = "     "
    assert_not @user.valid?
  end
  
  test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end
  
  test "nick should be not so long" do
    @user.nick = "a"*51
    assert_not @user.valid?
  end
  
  test "email should be not so long" do
    @user.email = "a"*255+"@tu.pl"
    assert_not @user.valid?
  end
  
  test "email validation should pass" do
    addresses = %w[email@wp.pl EMAIL@wp.pl E_ma-Il@wp.pl ema.il@wp.pl]
    addresses.each do |address|
      @user.email = address
      assert @user.valid?, "#error with {address.inspect}"
    end
  end
  
  test "user should be unique" do
    userDup = @user.dup
    @user.save
    assert_not userDup.valid?
  end
  
  test "email should be unique" do
    userDup = @user.dup
    @user.save
    userDup.email.upcase
    assert_not userDup.valid?
  end
  
  test "password should not be too short" do
    @user.password = "a"*5
    @user.password_confirmation = @user.password
    assert_not @user.valid?
  end
end

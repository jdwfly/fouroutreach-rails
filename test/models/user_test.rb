require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:joe)
    @prospect = prospects(:tom)
    @prospect_no_access = prospects(:richard)
  end
  test "user can only read prospects they own" do
    ability = Ability.new(@user)
    assert ability.can?(:read, @prospect)
    assert ability.cannot?(:read, @prospect_no_access)
  end
end

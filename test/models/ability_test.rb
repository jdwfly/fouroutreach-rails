require 'test_helper'

class AbilityTest < ActiveSupport::TestCase
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

  test "user can only edit prospects they own" do
    ability = Ability.new(@user)
    assert ability.can?(:update, @prospect)
    assert ability.cannot?(:update, @prospect_no_access)
  end

  test "user can only delete prospects they own" do
    ability = Ability.new(@user)
    assert ability.can?(:delete, @prospect)
    assert ability.cannot?(:delete, @prospect_no_access)
  end

  test "users may create prospects" do
    ability = Ability.new(@user)
    assert ability.can?(:create, Prospect)
  end
end

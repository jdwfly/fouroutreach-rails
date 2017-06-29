require 'test_helper'

class AbilityTest < ActiveSupport::TestCase
  def setup
    @user = users(:joe)
    @prospect = prospects(:tom)
    @prospect_no_access = prospects(:richard)
    @followup = followups(:followup1)
    @followup_no_access = followups(:followup2)
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
    assert ability.can?(:destroy, @prospect)
    assert ability.cannot?(:destroy, @prospect_no_access)
  end

  test "users may create prospects" do
    ability = Ability.new(@user)
    assert ability.can?(:create, Prospect)
  end

  test "users can only create followups on prospects they own" do
    ability = Ability.new(@user)
    assert ability.can?(:create, Followup.new(prospect: @prospect))
    assert ability.cannot?(:create, Followup.new(prospect: @prospect_no_access))
  end

  test "users can only read followups on prospects they own" do
    ability = Ability.new(@user)
    assert ability.can?(:read, @followup)
    assert ability.cannot?(:read, @followup_no_access)
  end

  test "users can only edit followups on prospects they own" do
    ability = Ability.new(@user)
    assert ability.can?(:update, @followup)
    assert ability.cannot?(:update, @followup_no_access)
  end

  test "users can only delete followups on prospects they own" do
    ability = Ability.new(@user)
    assert ability.can?(:destroy, @followup)
    assert ability.cannot?(:destroy, @followup_no_access)
  end
end

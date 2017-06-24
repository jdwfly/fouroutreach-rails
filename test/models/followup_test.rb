require 'test_helper'

class FollowupTest < ActiveSupport::TestCase

  def setup
    @prospect = prospects(:tom)
    @followup = @prospect.followups.build(visit_type: "Visit")
  end

  test "should be valid" do
    assert @followup.valid?
  end

end

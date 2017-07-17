require 'test_helper'

class ProspectTest < ActiveSupport::TestCase

  def setup
    @prospect = prospects(:tom)
  end

  test "should be valid" do
    assert @prospect.valid?
  end

  test "name should be present" do
    @prospect.name = "      "
    assert_not @prospect.valid?
  end

  test "date first contact should be present" do
    @prospect.date_first_contact = "           "
    # Even though its set to invalid the default value will correct it
    assert @prospect.valid?
  end

  test "last_update should not be nil" do
    assert_not @prospect.last_update.nil?
  end
end

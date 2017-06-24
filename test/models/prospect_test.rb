require 'test_helper'

class ProspectTest < ActiveSupport::TestCase

  def setup
    @prospect = Prospect.new(name: 'Clark Kent')
  end

  test "should be valid" do
    assert @prospect.valid?
  end
end

require 'test_helper'

class OctoeventTest < ActiveSupport::TestCase
  test "should not save an octoevent without all the fields filled" do
      octoevent = Octoevent.new
      assert !octoevent.save
  end
end

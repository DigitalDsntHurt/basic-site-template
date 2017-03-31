class LandController < ApplicationController
  def test
  	@tracked_things = TrackedThing.all
  end
end

class TopController < ApplicationController
  def index
    @goals = Goal.find(:all)
  end

end

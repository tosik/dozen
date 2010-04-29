class TopController < ApplicationController
  def index
    @goals = Goal.find(:all, :conditions=>{:is_deleted => false})
  end

end

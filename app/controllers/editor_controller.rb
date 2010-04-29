class EditorController < ApplicationController

  def add
    goal = Goal.create(
      :description=>params[:description],
      :term=> Time.now + params[:term].to_i * 24*60*60
    )

    goal.new_record?
  end

  def remove
    goal = Goal.find(params[:id])
    goal.is_deleted = true
  end

  def edit
    goal = Goal.find(params[:id])
    goal.description = params[:description]
    goal.term = Time.now + params[:term].to_i * 24*60*60
  end

end

class EditorController < ApplicationController

  def add
    goal = Goal.create(
      :description=>params[:description],
      :term=> (DateTime.now >> params[:term].to_f * 12)
    )

    goal.new_record?
  end

  def remove
    goal = Goal.find(params[:id])
    goal.is_deleted = true
    goal.save
  end

  def edit
    goal = Goal.find(params[:id])
    goal.description = params[:description]
    goal.term = (DateTime.now >> params[:term].to_f * 12)
  end

end

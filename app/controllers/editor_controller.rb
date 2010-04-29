class EditorController < ApplicationController

  def add
    goal = Goal.create(
      :description=>params[:description],
      :term=> Time.now + dayToTime(params[:term].to_i)
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
    goal.term = Time.now + dayToTime(params[:term].to_i)
  end

end

def dayToTime(day)
  day * 24*60*60
end

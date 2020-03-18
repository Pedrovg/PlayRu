class GoalsController < ApplicationController
  def index
    @goals = Goal.all
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.user = current_user
     if @goal.save!
      redirect_to goals_path
    else
      render_errors
    end
  end

  def goal_params
    params.require(:attraction).permit(:name)
  end
end

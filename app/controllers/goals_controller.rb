class GoalsController < ApplicationController
  def index
    @goals = Goal.all
    @goals = policy_scope(Goal).order(created_at: :desc)
  end

  def new
    @goal = Goal.new
    authorize @goal
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def create
    @goal = Goal.new(goal_params)
    authorize @goal
  end

  private

  def goal_params
    params.require(:goal).permit(:name)
  end
end

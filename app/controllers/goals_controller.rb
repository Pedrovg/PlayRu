  class GoalsController < ApplicationController
  before_action :set_goal, only: [ :edit, :update, :destroy, :levelup, :show]

  def index
    @goals = policy_scope(Goal).order(created_at: :desc)
    @goals = current_user.goals
    filter_goals
    @params = params.permit(:role)
  end

  def filter_goals
    if params[:role]
      @goals = @goals.where(role: params[:role])
    end
  end

  def show
    authorize @goal
    redirect_to goals_path
  end

  def new
    @goal = Goal.new
    authorize @goal
  end

  def create
    @goal = Goal.new(goal_params)
    authorize @goal
    @goal.user = current_user
    if @goal.save!
      redirect_to goals_path
    else
      render_errors
    end
  end

  def edit
    authorize @goal
  end

  def update
    authorize @goal
    if @goal.update(goal_params)
      @goal.save
      redirect_to goals_path
    else
      puts @goal.errors.messages
      render :edit
    end
  end

  def destroy
    authorize @goal
    if @goal.destroy
      redirect_to goals_path, notice: "Goal was successfully destroyed"
    else
      puts @goal.errors.messages
    end
  end

  def levelup
    authorize @goal
    @level = goal.exp + current_user.exp_bar
    raise
    @destroy
    if @level == 100
      current_user.experience + 1
      @level = 0
    end
    redirect_to goals_path
  end

  private

  def goal_params
    params.require(:goal).permit(:name, :role, :exp)
  end

  def set_goal
    @goal = Goal.find(params[:id])
  end
end

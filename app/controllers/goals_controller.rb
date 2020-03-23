class GoalsController < ApplicationController
  before_action :set_goal, only: [ :edit, :update, :destroy]

  def index
    @goals = Goal.all
    @roles = Role.all
    @goals = policy_scope(Goal).order(created_at: :desc)
  end

  def new
    @goal = Goal.new
    @role = Role.new
    @dificulty = Dificulty.new
    authorize @goal
  end

  def show
    @goal = Goal.find(params[:id])
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
      redirect_to goal_path
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

  private

  def goal_params
    params.require(:goal).permit(:name, :roles_attributes => [:type], :dificulties_attributes => [:exp])
  end

  def set_goal
      @goal = Goal.find(params[:id])
  end
end

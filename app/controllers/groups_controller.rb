class GroupsController < ApplicationController
  def index
    @groupalp = Group.all.order(:name)
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.save

    redirect_to group_path(@group)
  end

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end

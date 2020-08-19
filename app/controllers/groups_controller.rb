class GroupsController < ApplicationController
  def index
    @groups = Group.all
<<<<<<< HEAD
    @groupalp = Group.all.order(:name)
=======
    @groupalp = Group.all.sort { |b, a| a.name <=> b.name }
>>>>>>> parent of 604f42f... fix groupalp algorithm
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

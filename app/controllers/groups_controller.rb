class GroupsController < ApplicationController
  def index
    @groups = current_user.groups
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user

    respond_to do |f|
      if @group.save
        f.html { redirect_to groups_path, notice: 'The Category was created successfully.' }
      else
        f.html { render :index, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end

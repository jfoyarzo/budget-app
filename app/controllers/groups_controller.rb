class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group, only: :show

  def index
    @groups = current_user.groups
  end

  def show; end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end

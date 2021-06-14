class PatchesController < ApplicationController
  before_action :find_patch, only: [:show, :edit, :update]

  def new
    @patch = Patch.new
  end

  def create
    @patch = Patch.new(patch_params)
    @patch.user = current_user
    if @patch.save
      redirect_to edit_patch_path(@patch)
    else
      render :new
    end
  end

  def show
    @patches = Patch.where(user: current_user)
  end

  def edit
    @vegetables = Vegetable.where('sun_score < ?', @patch.hours_of_sun)
  end

  def update
    @patch.update(patch_params)
    redirect_to patches_path
  end

  def planting
    @vegetables = @patch.vegetables
  end

  def harvesting
  end

  def setup
  end

  private

  def patch_params
    params.require(:patch).permit(:hours_of_sun, vegetable_ids: [])
  end

  def find_patch
    @patch = Patch.find(params[:id])
  end
end

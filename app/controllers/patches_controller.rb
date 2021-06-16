class PatchesController < ApplicationController
  before_action :find_patch, except: [:new, :create]

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
    @patches = current_user.patches.find(params[:id])
  end

  def edit
    @vegetables = Vegetable.where('sun_score < ?', @patch.hours_of_sun)
  end

  def update
    @patch.update(patch_params)

    redirect_to patch_path(@patch)
  end

  def planting
    @vegetables = @patch.vegetables
  end

  def harvesting
    @crops = @patch.crops.planted
  end

  def setup
  end

  def care
  end

  private

  def patch_params
    params.require(:patch).permit(:hours_of_sun, vegetable_ids: [])
  end

  def find_patch
    @patch = Patch.find(params[:id])
  end
end

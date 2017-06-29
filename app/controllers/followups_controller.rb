class FollowupsController < ApplicationController
  load_and_authorize_resource :prospect
  load_and_authorize_resource :followup, through: :prospect
  before_action :authenticate_user!
  before_action :set_prospect_by_id
  before_action :set_followup, only: [:show, :edit, :update, :destroy]

  def index
    # probably not needed
  end

  def show
    #probably not needed
  end

  def new
    @followup = @prospect.followups.new
  end

  def create
    @followup = @prospect.followups.new(followup_params)
    if @followup.save
      flash[:success] = "Followup successfully created!"
      redirect_to @prospect
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @followup.update(followup_params)
      flash[:success] = "Followup updated!"
      redirect_to @prospect
    else
      render 'edit'
    end
  end

  def destroy
    Followup.find(params[:id]).destroy
    flash[:success] = "Followup deleted!"
    redirect_to @prospect
  end

  private

    def set_prospect_by_id
      @prospect = Prospect.find(params[:prospect_id])
    end

    def set_followup
      @followup = Followup.find(params[:id])
    end

    def followup_params
      params.require(:followup).permit(:visit_type,
                                       :date,
                                       :comments)
    end


end

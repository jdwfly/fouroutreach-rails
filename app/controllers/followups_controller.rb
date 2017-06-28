class FollowupsController < ApplicationController
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
    # TODO
  end

  def edit
  end

  def update
    # TODO
  end

  def destroy
    # TODO
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

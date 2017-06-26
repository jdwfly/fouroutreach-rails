class ProspectsController < ApplicationController
  def index
    @prospects = Prospect.paginate(page: params[:page], per_page: 10)
  end

  def show
    @prospect = Prospect.find(params[:id])
  end

  def new
    @prospect = Prospect.new
  end

  def create
    @prospect = Prospect.new(prospect_params)
    if @prospect.save
      flash[:success] = "Prospect successfully created!"
      redirect_to @prospect
    else
      render 'new'
    end
  end

  def edit
    @prospect = Prospect.find(params[:id])
  end

  def update
    if @prospect.update_attributes(prospect_params)
      flash[:success] = "Prospect information updated!"
      redirect_to @prospect
    else
      render 'edit'
    end
  end

  def destroy
    Prospect.find(params[:id]).destroy
    flash[:success] = "Prospect deleted!"
    redirect_to prospects_url
  end

  private
    def prospect_params
      params.require(:prospect).permit(:name,
                                       :address,
                                       :city,
                                       :state,
                                       :zip,
                                       :phone,
                                       :email,
                                       :point_of_contact,
                                       :interests,
                                       :comments,
                                       :date_first_contact)
    end
end

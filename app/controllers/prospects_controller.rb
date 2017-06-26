class ProspectsController < ApplicationController
  def index
    @prospects = Prospect.paginate(page: params[:page])
  end

  def show
    @prospect = Prospect.find(params[:id])
  end

  def new

  end
end

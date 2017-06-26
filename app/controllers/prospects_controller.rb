class ProspectsController < ApplicationController
  def index
    @prospects = Prospect.paginate(page: params[:page])
  end
end

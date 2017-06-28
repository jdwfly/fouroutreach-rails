class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
    render html: "Home"
  end

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden }
      format.html { redirect_to main_app.root_url, :flash => { :danger => "Access Denied!" } }
    end
  end
end

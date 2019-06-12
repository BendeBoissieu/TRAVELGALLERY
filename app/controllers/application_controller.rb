class ApplicationController < ActionController::Base
  before_action :getCategoryNav
  private

  def getCategoryNav
    @categoryNav = Category.all
  end

  def default_url_options
  { host: ENV["https://mytravelgallery.herokuapp.com/"] || "localhost:3000" }
  end

end

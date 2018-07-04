class ApplicationController < ActionController::Base
  before_action :getCategoryNav
  private

  def getCategoryNav
    @categoryNav = Category.all
  end
end

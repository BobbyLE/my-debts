class PagesController < ApplicationController
  def index
  	@user = current_user
  end
  def about
  end
end

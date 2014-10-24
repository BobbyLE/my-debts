class PagesController < ApplicationController
  before_action :set_debt, only: [:show, :edit, :update, :destroy]
  def index
    if user_signed_in?
    	@user = current_user
    	@debts = @user.debt.all
    	#They owe you
    	@theyoweyous = Debt.where(user_id: current_user.id, youtothem: false)

    	#You owe them
    	@youowethems = Debt.where(user_id: current_user.id, youtothem: true)
      
      #new debt
      @debt = Debt.new
    end
  end
  def about
  end
end

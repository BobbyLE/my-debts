class PagesController < ApplicationController
  def index
  	@user = current_user
  	@debts = @user.debt.all
  	#They owe you
  	@theyoweyous = Debt.where(user_id: current_user.id, youtothem: false)

  	#You owe them
  	@youowethems = Debt.where(user_id: current_user.id, youtothem: true)
  end
  def about
  end
end

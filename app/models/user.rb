class User < ActiveRecord::Base
	has_many :debt, dependent: :destroy
	default_scope -> { order('created_at DESC') }
	# Include default devise modules. Others available are:
 	# :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

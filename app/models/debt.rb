class Debt < ActiveRecord::Base
	belongs_to :user
	validates :amount, presence: true, numericality: true

	validates :person, presence: true, length: {maximum: 40}
	validates :user_id, presence: true
	validates :youtothem, inclusion: [true, false ]

	default_scope { order('created_at') } 
end

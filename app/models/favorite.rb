class Favorite < ApplicationRecord
	belongs_to :user
	belongs_to :book
	validates_uniqueness_of :book_id, scope: :user_id
	
	scope :created_a_week_ago, -> { where(created_at: 1.week.ago.all_day) }
end

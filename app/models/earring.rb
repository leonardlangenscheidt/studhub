class Earring < ActiveRecord::Base
	validates :brand, :color, :user_id, presence: true

	belongs_to :user
end

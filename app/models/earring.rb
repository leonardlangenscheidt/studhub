class Earring < ActiveRecord::Base
	validates :brand, :color, :user_id, presence: true

	attr_accessible :brand, :color, :matched

	belongs_to :user
end

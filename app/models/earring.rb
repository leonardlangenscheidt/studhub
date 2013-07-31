class Earring < ActiveRecord::Base
	validates :brand, :color, :user_id, presence: true

      	validates :image, presence:true

	belongs_to :user
      	has_attached_file :image, styles: {
      		medium: "320x240>"
      	}

      	# def not_matches
      	#   @earring = Earrings.find(:id)
      	#   not_matches = @earring.not_matches
      	#   not_matches.join(",")
      	# end

      	# def self.search_for(brand, color, id)
      	# 	Earring.where("brand = :brand AND color = :color AND id NOT IN (#{not_matches})", brand: "%#{brand}%", color:"%#{color}%", id:"%#{id}%")
      	# end

      	def self.search_for(brand, color, id)
      		Earring.where("brand = :brand AND color = :color AND id != :id", brand: "%#{brand}%", color:"%#{color}%", id:"%#{id}%")
      	end
end

class Earring < ActiveRecord::Base
	validates :brand, :color, :user_id, presence: true

      validates :image, presence:true

	belongs_to :user
      has_attached_file :image, styles: { medium: "320x240>"}
end

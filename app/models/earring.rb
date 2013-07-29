class Earring < ActiveRecord::Base
	validates :brand, :color, :user_id, presence: true

      	validates :image, presence:true

	belongs_to :user
      	has_attached_file :image,
	# path: ":rails_root/public/system/:attachment/:id/:style/:filename",
 #       	url: "/system/:attachment/:id/:style/:filename"
      	styles: {
      		medium: "320x240>"
      	}
end

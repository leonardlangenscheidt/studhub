class Earring < ActiveRecord::Base
	attr_accessible :brand, :color, :matched, :image

	validates :brand, :color, :user_id, presence: true
	# validates_attachment :image, presence: true,
	# 											content_type: {content_type: ['image/jpeg', 'image/jpg', 'image/png'] },
	# 											size: {less_than: 5.megabytes }

	# before_image_post_process do |image|
 #    if changed?
 #      processing = true
 #      false
 #    end
 #  end

	# has_attached_file :image, style: {medium: "320x240>"}
	belongs_to :user

end

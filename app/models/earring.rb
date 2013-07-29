class Earring < ActiveRecord::Base
	validates :brand, :color, :user_id, presence: true

      	validates :image, presence:true

	belongs_to :user
      	has_attached_file :image, styles: {
      		medium: "320x240>"
      	},
       	url: "https://s3-us-west-2.amazonaws.com/studhubearringimage/earrings/images/000/000/009/medium/earring1.jpeg?AWSAccessKeyId=ASIAJEHNXRK3CICOSHLQ&Expires=1375109531&Signature=UnX42RjCt%2B27l8%2BpvX6qfNhw74Q%3D&x-amz-security-token=AQoDYXdzEF8awAK9sS19Fj9UNQbBGA%2BMDZp2ZR4C98M1weESy1AVnyiY%2BhZjJ57hR577WW3rFddz8axoNCuA5Hp85mQwpLJXXZUdv67cXbIuouv/KWXJ3NagraBrmtymCeyOChLFl18t7T7OvIUvowWNf7Z4E1NebT2E%2BvogEmo04wwdsk4feXzeexvZ5mingTtpnK1jZmsBkSkom3kdnl7oA2/%2Bgf7dVfpOPWMckJ/1OV5f9tVQSNuMzDK8scOONVBDQRMIE4wYMCYwADKHhOs0gJOkzrMGWAjdMuwrCxR6N5NTsVfXgBQ28YFnw8NCuzdeTFFOhHr6TQPjWIym9hSsge9%2BQZ7qsuowI81zmZA01WX6Ij/CWa1mtATipvWVw3Y1HIQx/6OTsTZ1JkoW1ysfk9cUHMhggkBrNXybj84SK0G5OFl3K6utsCDr89mPBQ%3D%3D"
       	# "/system/:attachment/:id/:style/:filename"
end

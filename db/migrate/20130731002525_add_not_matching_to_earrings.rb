class AddNotMatchingToEarrings < ActiveRecord::Migration
	def change
		add_column :earrings, :not_matching, :text
	end
end

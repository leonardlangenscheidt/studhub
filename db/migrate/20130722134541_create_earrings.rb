class CreateEarrings < ActiveRecord::Migration
  def change
    create_table :earrings do |t|
      t.string :brand
      t.string :color
      t.boolean :matched

      t.timestamps
    end
  end
end

class CreateImageDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :image_details do |t|
      t.integer :image_id
      t.integer :stat_id
      t.string :data

      t.timestamps
    end
  end
end

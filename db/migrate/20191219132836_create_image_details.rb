class CreateImageDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :image_details do |t|
      t.integer :image_id
      t.integer :stat_id
      t.string :tag
      t.decimal :value
      t.string :model

      t.timestamps
    end
  end
end

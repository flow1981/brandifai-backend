class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.integer :profile_id
      t.string :data

      t.timestamps
    end
  end
end

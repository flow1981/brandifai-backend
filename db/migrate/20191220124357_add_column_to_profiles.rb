class AddColumnToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :icon_url, :string
  end
end

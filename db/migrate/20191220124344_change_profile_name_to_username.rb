class ChangeProfileNameToUsername < ActiveRecord::Migration[6.0]
  def change
    rename_column :profiles, :profile_name, :username
  end
end

class AddThemeToStats < ActiveRecord::Migration[6.0]
  def change
    add_column :stats, :theme, :jsonb
  end
end

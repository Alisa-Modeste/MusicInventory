class AddNull < ActiveRecord::Migration
  def change
    change_column :albums, :name, :string, null: false
    change_column :albums, :band_id, :integer, null: false

    change_column :bands, :name, :string, null: false

    change_column :tracks, :name, :string, null: false
    change_column :tracks, :album_id, :integer, null: false
  end
end

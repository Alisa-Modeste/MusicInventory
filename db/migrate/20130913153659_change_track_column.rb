class ChangeTrackColumn < ActiveRecord::Migration
  def change
    rename_column :tracks, :number, :name
  end
end

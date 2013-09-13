class FixTrackColumn < ActiveRecord::Migration
  def change
    change_column :tracks, :name, :string
  end
end

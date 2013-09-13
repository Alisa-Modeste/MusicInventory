class FixNotes < ActiveRecord::Migration
  def change
    add_column :notes, :track_id, :integer, null:false, index:true
  end
end

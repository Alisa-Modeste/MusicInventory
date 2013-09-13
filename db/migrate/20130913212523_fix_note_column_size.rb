class FixNoteColumnSize < ActiveRecord::Migration
  def change
    change_column :notes, :note, :text, null:false
  end
end

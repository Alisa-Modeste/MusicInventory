class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :user_id, null:false, index:true
      t.string :note, null:false

      t.timestamps
    end
  end
end

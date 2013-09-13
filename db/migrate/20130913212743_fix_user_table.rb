class FixUserTable < ActiveRecord::Migration
  def change
    change_column :users, :email, :string, null: false
    change_column :users, :user_type, :string, null: false
  end
end

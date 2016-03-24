class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :string
    add_column :users, :photo , :string
    add_column :users, :bio , :text
    add_column :users, :phone , :string
  end
end

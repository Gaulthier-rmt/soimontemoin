class AddTextsToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :bio, :text
    add_column :users, :marriage_desc, :text
  end
end

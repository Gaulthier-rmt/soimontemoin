class AddAttrsToWitnesses < ActiveRecord::Migration[7.1]
  def change
    add_column :witnesses, :description, :text
  end
end

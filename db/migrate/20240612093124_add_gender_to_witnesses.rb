class AddGenderToWitnesses < ActiveRecord::Migration[7.1]
  def change
    add_column :witnesses, :gender, :string
  end
end

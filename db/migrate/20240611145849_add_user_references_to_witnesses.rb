class AddUserReferencesToWitnesses < ActiveRecord::Migration[7.1]
  def change
    add_reference :witnesses, :user, null: false, foreign_key: true
  end
end

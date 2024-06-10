class CreateWitnesses < ActiveRecord::Migration[7.1]
  def change
    create_table :witnesses do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :price_per_day
      t.string :address
      t.string :name

      t.timestamps
    end
  end
end

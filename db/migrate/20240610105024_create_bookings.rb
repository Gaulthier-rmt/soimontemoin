class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :witness, null: false, foreign_key: true
      t.date :wedding_date
      t.string :wedding_address
      t.string :booking_status

      t.timestamps
    end
  end
end

class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :furniture, foreign_key: true
      t.integer :start_date
      t.integer :end_date
      t.string :status

      t.timestamps
    end
  end
end

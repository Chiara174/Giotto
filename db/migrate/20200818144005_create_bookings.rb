class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :furniture, null: false, foreign_key: true
      t.integer :start_date
      t.integer :end_date
      t.string :status

      t.timestamps
    end
  end
end

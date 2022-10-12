class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :service, null: false, foreign_key: true
      t.references :service_provider, null: false, foreign_key: true
      t.string :client
      t.date :date

      t.timestamps
    end
  end
end

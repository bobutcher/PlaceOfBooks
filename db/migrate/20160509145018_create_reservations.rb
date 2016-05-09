class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.date :return_date

      t.timestamps null: false
    end
  end
end

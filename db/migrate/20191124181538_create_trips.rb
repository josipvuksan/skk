class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :company_name
      t.string :starting_station
      t.string :destination
      t.datetime :departure
      t.datetime :arrival
      t.integer :remaining_tickets
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :trips, [:user_id, :created_at]
  end
end

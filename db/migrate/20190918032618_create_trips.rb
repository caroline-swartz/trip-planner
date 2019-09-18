class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :destination
      t.string :start_date
      t.string :end_date
      t.integer :budget

      t.timestamps
    end
  end
end

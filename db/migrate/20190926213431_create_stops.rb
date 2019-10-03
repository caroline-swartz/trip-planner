class CreateStops < ActiveRecord::Migration[6.0]
  def change
    create_table :stops do |t|
      t.string :destination
      t.string :start_date
      t.string :end_date
      t.string :accommodation
      t.integer :cost
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end

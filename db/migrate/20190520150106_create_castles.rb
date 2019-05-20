class CreateCastles < ActiveRecord::Migration[5.2]
  def change
    create_table :castles do |t|
      t.string :name
      t.string :description
      t.string :prince
      t.string :location
      t.string :equipment
      t.string :vehicle
      t.string :photo
      t.integer :price_per_night
      t.references :princess, foreign_key: true

      t.timestamps
    end
  end
end

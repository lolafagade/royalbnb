class CreatePrincesses < ActiveRecord::Migration[5.2]
  def change
    create_table :princesses do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :avatar

      t.timestamps
    end
  end
end

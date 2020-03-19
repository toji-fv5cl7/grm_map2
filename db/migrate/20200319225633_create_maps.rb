class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.string :name
      t.string :type
      t.integer :price
      t.string :closing_day
      t.time :open_time
      t.text :website
      t.text :photo1
      t.text :photo2
      t.text :photo3
      t.boolean :beji
      t.integer :tel
      t.boolean :parking
      t.text :address

      t.timestamps
    end
  end
end

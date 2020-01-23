class CreateChickens < ActiveRecord::Migration[6.0]
  def change
    create_table :chickens do |t|
      t.string :name
      t.string :flavor
      t.integer :age
      t.string :image

      t.timestamps
    end
  end
end

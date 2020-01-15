class CreateAbductions < ActiveRecord::Migration[6.0]
  def change
    create_table :abductions do |t|
      t.string :location
      t.integer :alien_id
      t.integer :chicken_id

      t.timestamps
    end
  end
end

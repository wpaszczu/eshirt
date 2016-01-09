class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :inscription
      t.string :size, default: "L"
      t.string :color, default: "white"
      t.integer :price, default: 100
      t.boolean :availability, default: true

      t.timestamps null: false
    end
  end
end

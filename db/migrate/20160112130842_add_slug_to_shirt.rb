class AddSlugToShirt < ActiveRecord::Migration
  def change
    add_column :shirts, :slug, :string
    add_index :shirts, :slug, unique: true
  end
end

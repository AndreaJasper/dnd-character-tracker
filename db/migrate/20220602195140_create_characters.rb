class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :char_class
      t.integer :level
      t.string :race
      t.string :background
      t.string :alignment
      t.integer :experience_points
      t.text :languages
      t.text :equipment
      t.text :features
      t.text :character_details
      t.integer :copper
      t.integer :silver
      t.integer :gold
      t.integer :platinum
      t.text :treasure
      t.timestamps
    end
  end
end

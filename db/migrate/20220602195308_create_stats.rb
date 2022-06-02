class CreateStats < ActiveRecord::Migration[6.1]
  def change
    create_table :stats do |t|
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :passive_wisdom
      t.integer :inspiration
      t.integer :proficiency_bonus
      t.integer :armor_class
      t.integer :initiative
      t.integer :speed
      t.integer :hit_points
      t.string :hit_dice
      t.string :hit_dice_type
      t.string :weapon
      t.integer :attack_bonus
      t.string :damage
      t.timestamps
    end
  end
end

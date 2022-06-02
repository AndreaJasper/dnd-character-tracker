class CreateSpells < ActiveRecord::Migration[6.1]
  def change
    create_table :spells do |t|
      t.string :spell_ability
      t.integer :spell_save
      t.integer :spell_attack_bonus
      t.text :spell_slots
      t.text :spell_types
      t.timestamps
    end
  end
end

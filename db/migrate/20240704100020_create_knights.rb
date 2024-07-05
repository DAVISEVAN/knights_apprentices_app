class CreateKnights < ActiveRecord::Migration[7.1]
  def change
    create_table :knights do |t|
      t.string :name, null: false
      t.boolean :is_active, default: true
      t.integer :number_of_quests, default: 0

      t.timestamps
    end
  end
end

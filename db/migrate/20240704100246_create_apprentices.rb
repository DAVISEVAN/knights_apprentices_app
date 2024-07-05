class CreateApprentices < ActiveRecord::Migration[7.1]
  def change
    create_table :apprentices do |t|
      t.string :name, null: false
      t.boolean :is_knighted, default: false
      t.integer :age
      t.references :knight, foreign_key: true

      t.timestamps
    end
  end
end

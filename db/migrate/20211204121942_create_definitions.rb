class CreateDefinitions < ActiveRecord::Migration[6.1]
  def change
    create_table :definitions do |t|
      t.string :word
      t.references :language, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :definition
      t.integer :level

      t.timestamps
    end
  end
end

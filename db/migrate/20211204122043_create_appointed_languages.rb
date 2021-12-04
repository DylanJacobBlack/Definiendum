class CreateAppointedLanguages < ActiveRecord::Migration[6.1]
  def change
    create_table :appointed_languages do |t|
      t.references :user, null: false, foreign_key: true
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end

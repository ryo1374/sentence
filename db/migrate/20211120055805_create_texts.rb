class CreateTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :texts do |t|
      t.text :sentence, null: false
      t.text :translate, null: false
      t.text :remarks
      t.text :tag, null: false
      t.integer :type_id, null: false
      t.references :user, null: false, foreign_key: true 
      t.timestamps
    end
  end
end

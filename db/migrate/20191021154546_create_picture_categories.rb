class CreatePictureCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :picture_categories do |t|
      t.references :picture, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

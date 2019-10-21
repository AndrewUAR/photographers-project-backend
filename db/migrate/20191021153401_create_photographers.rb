class CreatePhotographers < ActiveRecord::Migration[6.0]
  def change
    create_table :photographers do |t|
      t.string :name
      t.date :birthdate
      t.text :bio
      t.date :start_date
      t.string :city

      t.timestamps
    end
  end
end

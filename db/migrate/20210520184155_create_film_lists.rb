class CreateFilmLists < ActiveRecord::Migration[6.1]
  def change
    create_table :film_lists do |t|
      t.references :group, null: false, foreign_key: true
      t.references :film, null: false, foreign_key: true
      t.datetime :date_discussed

      t.timestamps
    end
  end
end

class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.string :rating
      t.string :runtime
      t.string :genre
      t.integer :theater_id
      t.datetime :release_date

      t.timestamps
    end
  end
end

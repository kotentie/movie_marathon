class CreateChosenmovies < ActiveRecord::Migration
  def change
    create_table :chosenmovies do |t|
      t.integer :marathon_id
      t.integer :movie_id

      t.timestamps
    end
  end
end

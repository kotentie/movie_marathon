class CreateLikedmovies < ActiveRecord::Migration
  def change
    create_table :likedmovies do |t|
      t.integer :user_id
      t.integer :movie_id

      t.timestamps
    end
  end
end

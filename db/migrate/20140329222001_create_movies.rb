class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :rt_score
      t.integer :runtime
      t.text :genre, array: true, null: false, default: '{}'
      t.timestamps
    end
  end
end

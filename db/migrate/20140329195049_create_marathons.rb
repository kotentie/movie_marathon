class CreateMarathons < ActiveRecord::Migration
  def change
    create_table :marathons do |t|
      t.string :name
      t.integer :duration
      t.datetime :time_start
      t.integer :user_id

      t.timestamps
    end
  end
end

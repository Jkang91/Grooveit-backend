class CreateUserVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :user_videos do |t|
      t.integer :user_id
      t.string :title
      t.date :date

      t.timestamps
    end
  end
end

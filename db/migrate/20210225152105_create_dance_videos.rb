class CreateDanceVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :dance_videos do |t|
      t.string :url
      t.string :category
      t.string :difficulty_level
      t.string :title

      t.timestamps
    end
  end
end

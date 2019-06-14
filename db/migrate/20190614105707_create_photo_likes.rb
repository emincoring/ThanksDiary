class CreatePhotoLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_likes do |t|
      t.integer :user_id, null: false, unique: true, index: true
      t.integer :photo_id, null: false, unique: true, index: true

      t.timestamps
    end
  end
end

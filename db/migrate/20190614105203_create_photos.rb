class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.integer :user_id, null: false
      t.date :date
      t.string :image, null: false

      t.timestamps
    end
  end
end

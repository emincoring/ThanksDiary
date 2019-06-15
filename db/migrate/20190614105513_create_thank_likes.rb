class CreateThankLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :thank_likes do |t|
      t.integer :user_id, null: false, unique: true, index: true
      t.integer :thank_id, null: false, unique: true, index: true

      t.timestamps
    end
  end
end

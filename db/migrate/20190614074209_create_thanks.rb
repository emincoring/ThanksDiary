class CreateThanks < ActiveRecord::Migration[5.2]
  def change
    create_table :thanks do |t|
      t.integer :user_id, null: false
      t.date :date
      t.text :diary, null:false

      t.timestamps
    end
  end
end

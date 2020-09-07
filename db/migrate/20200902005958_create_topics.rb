class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.date :date
      t.string :brand
      t.string :item
      t.string :size
      t.string :price
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end

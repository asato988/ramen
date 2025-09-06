class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :genre
      t.string :address
      t.text :about

      t.timestamps
    end
  end
end

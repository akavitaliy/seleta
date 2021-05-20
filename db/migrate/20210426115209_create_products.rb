class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.decimal :size
      t.text :a_type
      t.string :path_to_image
      t.string :path_to_litle_image
      t.timestamps
    end
  end
end

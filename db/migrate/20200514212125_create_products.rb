class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :price
      t.string :url

      t.timestamps
    end
  end
end

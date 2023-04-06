class CreateGymProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :gym_products do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :numInStock

      t.timestamps
    end
  end
end

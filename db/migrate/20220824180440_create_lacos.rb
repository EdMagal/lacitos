class CreateLacos < ActiveRecord::Migration[6.1]
  def change
    create_table :lacos do |t|
      t.string :name
      t.float :price
      t.text :description
      t.integer :quantity

      t.timestamps
    end
  end
end

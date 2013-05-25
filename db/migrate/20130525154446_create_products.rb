class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :minimumAmount
      t.float :maximumAmount

      t.timestamps
    end
  end
end

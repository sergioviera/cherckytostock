class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.datetime :createDate
      t.datetime :expireDate
      t.text :description
      t.float :amount
      t.float :currentAmount
      t.float :productId

      t.timestamps
    end
  end
end

class CreateLogEvents < ActiveRecord::Migration
  def change
    create_table :log_events do |t|
      t.datetime :date
      t.float :user
      t.text :description
      t.integer :product_id

      t.timestamps
    end
  end
end

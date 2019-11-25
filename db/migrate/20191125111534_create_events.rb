class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :status
      t.datetime :date
      t.string :cuisine
      t.string :location
      t.string :description
      t.integer :price
      t.integer :capacity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :status
      t.datetime :last_updated_at
      t.references :restaurant, null: false, foreign_key: true
      t.boolean :is_central

      t.timestamps
    end
  end
end

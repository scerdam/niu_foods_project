class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :status
      t.datetime :last_updated_at

      t.timestamps
    end
  end
end

class CreateRecommends < ActiveRecord::Migration[6.0]
  def change
    create_table :recommends do |t|
      t.string :place_name, null: false, unique: true
      t.integer :region_id, null: false
      t.integer :city_id, null: false
      t.integer :category_id, null: false
      t.references :user, null: false
      t.timestamps
    end
  end
end

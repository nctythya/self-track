class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets do |t|
      t.string :name
      t.float :price
      t.datetime :date_bought

      t.timestamps
    end
  end
end

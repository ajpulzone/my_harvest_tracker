class CreatePlot < ActiveRecord::Migration[7.1]
  def change
    create_table :plots do |t|
      t.string :name
      t.float :size
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end

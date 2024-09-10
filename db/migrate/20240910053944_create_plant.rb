class CreatePlant < ActiveRecord::Migration[7.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :type
      t.date :purchase_date
      t.date :bloom_start_date
      t.date :bloom_end_date
      t.date :harvest_start_date
      t.date :harvest_end_date
      t.string :description

      t.timestamps
    end
  end
end

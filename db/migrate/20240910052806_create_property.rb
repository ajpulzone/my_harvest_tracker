class CreateProperty < ActiveRecord::Migration[7.1]
  def change
    create_table :properties do |t|
      t.string :name
      t.integer :zipcode
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

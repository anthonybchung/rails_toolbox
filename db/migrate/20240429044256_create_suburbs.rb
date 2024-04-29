class CreateSuburbs < ActiveRecord::Migration[7.1]
  def change
    create_table :suburbs do |t|
      t.string :name
      t.integer :postcode
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end

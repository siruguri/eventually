class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :name
      t.text :description
      t.datetime :start
      t.datetime :end
      t.boolean :in_series
      t.string :address
      t.integer :vol_need

      t.timestamps
    end
  end
end

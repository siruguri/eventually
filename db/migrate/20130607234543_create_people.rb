class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :online_uris

      t.timestamps
    end
  end
end

class CreateEnrolments < ActiveRecord::Migration
  def change
    create_table :enrolments do |t|
      t.references :team
      t.references :person
      t.string :teamrole

      t.timestamps
    end
    add_index :enrolments, :team_id
    add_index :enrolments, :person_id
  end
end

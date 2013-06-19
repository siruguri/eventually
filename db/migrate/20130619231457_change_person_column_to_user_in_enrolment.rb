class ChangePersonColumnToUserInEnrolment < ActiveRecord::Migration
  def change
    rename_column :enrolments, :person_id, :user_id
  end
end

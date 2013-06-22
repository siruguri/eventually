class AddUserCountToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :user_count, :integer
  end
end

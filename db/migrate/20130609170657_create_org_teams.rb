class CreateOrgTeams < ActiveRecord::Migration
  def change
    create_table :org_teams do |t|
      t.references :organization
      t.references :team

      t.timestamps
    end
    add_index :org_teams, :organization_id
    add_index :org_teams, :team_id
  end
end

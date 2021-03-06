# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs


Organization.create([
  { :name => "Eventually", :created_at => "2013-06-05 04:14:51", :updated_at => "2013-06-05 04:14:51" },
  { :name => "Sierra Club", :created_at => "2013-06-05 04:14:51", :updated_at => "2013-06-05 04:14:51" },
  { :name => "YMCA", :created_at => "2013-06-05 04:14:52", :updated_at => "2013-06-05 04:14:52" }
], :without_protection => true )

User.create([
  { :created_at => "2013-06-10 19:18:12", :updated_at => "2013-06-19 23:40:52", :email => "admin@eventually.org", :password => "admin123", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 4, :current_sign_in_at => "2013-06-19 23:40:52", :last_sign_in_at => "2013-06-19 23:00:45", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :name => "admin", :organization_id => 1 },
  { :created_at => "2013-06-10 19:50:03", :updated_at => "2013-06-19 23:39:38", :email => "sierraclub@eventually.org", :password => "admin123", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 5, :current_sign_in_at => "2013-06-19 23:39:38", :last_sign_in_at => "2013-06-19 23:35:27", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :name => "sierraclub", :organization_id => 2 },
  { :created_at => "2013-06-11 03:01:41", :updated_at => "2013-06-19 23:39:51", :email => "ymca@eventually.org", :password => "admin123", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 3, :current_sign_in_at => "2013-06-19 23:39:50", :last_sign_in_at => "2013-06-19 23:39:03", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :name => "ymca", :organization_id => 3 },
  { :created_at => "2013-06-17 19:50:03", :updated_at => "2013-06-17 20:53:29", :email => "sc_vol1@eventually.org", :password => "admin123", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 0, :current_sign_in_at => "2013-06-17 21:00:00", :last_sign_in_at => "2013-06-17 21:00:00", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :name => "sc_vol1", :organization_id => 2 },
  { :created_at => "2013-06-19 23:23:57", :updated_at => "2013-06-19 23:40:41", :email => "scvol1@eventually.org", :password => "admin123", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 0, :current_sign_in_at => nil, :last_sign_in_at => nil, :current_sign_in_ip => nil, :last_sign_in_ip => nil, :name => "ymca_vol1", :organization_id => 3 }
], :without_protection => true )


Authorization.create([
  { :user_id => 1, :role_id => 1, :created_at => "2013-06-10 19:18:31", :updated_at => "2013-06-10 19:18:31" },
  { :user_id => 4, :role_id => 2, :created_at => "2013-06-10 19:18:31", :updated_at => "2013-06-10 19:18:31" },
  { :user_id => 5, :role_id => 2, :created_at => "2013-06-10 19:18:31", :updated_at => "2013-06-10 19:18:31" }
], :without_protection => true )


Event.create([
  { :name => "Cleanup", :description => "yeah let's clean up!", :start => "2013-06-05 18:00:00", :end => "2013-06-05 19:00:00", :in_series => false, :address => "123 Main St.", :vol_need => 5, :created_at => "2013-06-05 04:17:20", :updated_at => "2013-06-05 04:17:20", :organization_id => 2, :team_id => 1 },
  { :name => "event Y", :description => "", :start => "2013-06-09 17:00:00", :end => "2013-06-09 18:00:00", :in_series => false, :address => "", :vol_need => 5, :created_at => "2013-06-09 17:43:01", :updated_at => "2013-06-09 17:43:01", :organization_id => 2, :team_id => 4 },
  { :name => "SC gala", :description => "", :start => "2013-06-09 17:00:00", :end => "2013-06-10 17:00:00", :in_series => false, :address => "", :vol_need => 5, :created_at => "2013-06-09 17:44:33", :updated_at => "2013-06-09 17:44:33", :organization_id => 2, :team_id => 1 },
  { :name => "SC gala 1", :description => "", :start => "2013-06-09 17:00:00", :end => "2013-06-09 17:00:00", :in_series => false, :address => "", :vol_need => 11, :created_at => "2013-06-09 17:47:55", :updated_at => "2013-06-09 17:47:55", :organization_id => 2, :team_id => 4 },
  { :name => "an event", :description => "", :start => "2013-06-10 18:00:00", :end => "2013-06-10 18:00:00", :in_series => false, :address => "", :vol_need => 5, :created_at => "2013-06-10 18:19:34", :updated_at => "2013-06-10 18:19:34", :organization_id => 2, :team_id => 1 },
  { :name => "ymca event 1", :description => "", :start => "2013-06-11 04:00:00", :end => "2013-06-11 04:00:00", :in_series => false, :address => "", :vol_need => 4, :created_at => "2013-06-11 04:47:45", :updated_at => "2013-06-11 04:47:45", :organization_id => 3, :team_id => 2 }
], :without_protection => true )

Team.create([
  { :name => "A Club Team", :organization_id => 2, :created_at => "2013-06-09 03:53:22", :updated_at => "2013-06-19 23:38:14", :event_id => 1 },
  { :name => "team X", :organization_id => 3, :created_at => "2013-06-09 17:29:19", :updated_at => "2013-06-19 23:38:50", :event_id => 15 },
  { :name => "ywca gala organizers", :organization_id => 3, :created_at => "2013-06-09 17:44:33", :updated_at => "2013-06-19 23:39:29", :event_id => nil },
  { :name => "A club soda", :organization_id => 1, :created_at => "2013-06-09 17:47:55", :updated_at => "2013-06-11 03:46:12", :event_id => nil }
], :without_protection => true )

Enrolment.create([
  { :team_id => 1, :user_id => 4, :teamrole => "volunteer", :created_at => "2013-06-19 23:05:52", :updated_at => "2013-06-19 23:05:52" },
  { :team_id => 2, :user_id => 5, :teamrole => "volunteer", :created_at => "2013-06-19 23:31:33", :updated_at => "2013-06-19 23:31:33" }
], :without_protection => true )


OrgTeam.create([
  { :organization_id => 2, :team_id => 1, :created_at => "2013-06-18 06:13:23", :updated_at => "2013-06-18 06:13:23" },
  { :organization_id => 2, :team_id => 4, :created_at => "2013-06-18 06:13:23", :updated_at => "2013-06-18 06:13:23" },
  { :organization_id => 3, :team_id => 2, :created_at => "2013-06-18 06:13:23", :updated_at => "2013-06-18 06:13:23" },
  { :organization_id => 3, :team_id => 3, :created_at => "2013-06-18 06:13:23", :updated_at => "2013-06-18 06:13:23" }
], :without_protection => true )





Role.create([
  { :name => "admin", :created_at => "2013-06-10 19:17:03", :updated_at => "2013-06-10 19:17:03" },
  { :name => "volunteer", :created_at => "2013-06-20 19:17:03", :updated_at => "2013-06-20 19:17:03" }
], :without_protection => true )



Shift.create([
  { :name => nil, :description => nil, :start => nil, :end => nil, :in_series => nil, :address => nil, :vol_need => nil, :created_at => nil, :updated_at => nil }
], :without_protection => true )


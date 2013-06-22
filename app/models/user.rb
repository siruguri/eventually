class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessor :online_uris, :is_volunteer
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :online_uris, :organization_id, :is_volunteer
  serialize :online_uris, Array

  # attr_accessible :title, :body

  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false

  has_many :authorizations
  has_many :roles, :through => :authorizations

  has_many :teams, through: :enrolments
  has_many :enrolments
  accepts_nested_attributes_for :enrolments
  accepts_nested_attributes_for :authorizations

  belongs_to :organization

  scope :volunteers, joins(:authorizations).where("authorizations.role_id = ?", Settings.volunteer_role_id)

  def is?(rolename)
    roles = self.roles.map { |obj| obj.name }
    roles.include? rolename
  end


  # Need this to pick up more params from the user creation form than are handled by the Devise registration
  after_create :build_authorization

  private

  def build_authorization
    if self.is_volunteer then
      vol_role = Role.find_by_name("volunteer")
      self.roles << vol_role
    end
  end
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :online_uris, :organization_id
  serialize :online_uris, Array

  # attr_accessible :title, :body

  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false


  has_many :authorizations
  has_many :roles, :through => :authorizations

  has_many :teams, through: :enrolments
  has_many :enrolments
  accepts_nested_attributes_for :enrolments

  belongs_to :organization

  scope :volunteers, joins(:teams)

  def is?(rolename)
    roles = self.roles.map { |obj| obj.name }
    roles.include? rolename
  end
end

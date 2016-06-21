class User < ActiveRecord::Base

  attr_accessible :username, :password, :password_confirmation, :first_name,
                  :last_name, :user_type, :last_login_time

  attr_accessor :password
  before_save :encrypt_password
  before_create :pre_create

  validates_confirmation_of :password
  validates_length_of :password,
    minimum: 8,
    too_short: 'Please enter a password with at least 8 characters'
  validates_presence_of :password, :on => :create
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_length_of :username,
    minimum: 3,
    too_short: 'Usernames have to be at least 3 characters'

  def self.authenticate(username, password)
    user = find_by_username(username)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def pre_create
    self.user_type = 2
  end

end

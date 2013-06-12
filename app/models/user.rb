class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  attr_accessor :password
  before_save :encrypt_password
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,presence: true, format: { with: VALID_EMAIL_REGEX },                  uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6  }, :on => :create
  validates_confirmation_of :password
  validates :password_confirmation, presence: true

  def password_present?
    !password.nil?
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
       user
    else
      nil
    end
  end

  def generate_token(column)  
    begin  
      self[column] = SecureRandom.urlsafe_base64  
    end while User.exists?(column => self[column])  
  end  


  def send_password_reset  
    generate_token(:password_reset_token)  
    self.password_reset_sent_at = Time.zone.now  
    save!(:validate => false)
    UserMailer.password_reset(self).deliver  
  end  
private
   def create_remember_token
     self.remember_token = SecureRandom.urlsafe_base64
   end
end

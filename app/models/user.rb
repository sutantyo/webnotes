class User < ActiveRecord::Base

  validates :username,
    uniqueness: { case_sensitive: false }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :lockable,
         #:registerable,
         #:recoverable, 
         :rememberable, 
         :trackable, 
         :validatable

  attr_accessor :login

private

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end


end

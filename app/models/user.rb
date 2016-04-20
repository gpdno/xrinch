class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validate :email_is_unique, on: :create
  after_create :create_account
  has_one :account, dependent: :destroy
  has_many :portfolios
  has_many :blogs
  has_many :images
  
  accepts_nested_attributes_for :account
         
  def confirmation_required?
    true # false to remove need of comformation email if needed
  end
  
  private
  
    def email_is_unique
      return false unless self.errors[:email].empty?
      
      unless Account.find_by_email(email).nil?
        error.add(:email, " is already taken")
      end
    end

    def create_account
      account = Account.new(:user_id => id, :email => email)
      account.save!
    end
    
end

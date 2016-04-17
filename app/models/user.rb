class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validate :email_is_unique, on: :create
  after_create :build_default_account
  has_one :account, dependent: :destroy
  has_many :portfolios
  has_many :images
  has_many :blogs
  
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
  
    def build_default_account
      # build default profile instance. Will use default params.
      # The foreign key to the owning User model is set automatically
      build_account
      true # Always return true in callbacks as the normal 'continue' state
      # Assumes that the default_profile can **always** be created.
      # or
      # Check the validation of the profile. If it is not valid, then
      # return false from the callback. Best to use a before_validation
      # if doing this. View code should check the errors of the child.
      # Or add the child's errors to the User model's error array of the :base
      # error item
    end

    #def create_account
    #  account = current_user.build_profile 
      #account = Account.new(:email => email)
      #account.save!
   # end
    
end

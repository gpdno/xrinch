class Account < ActiveRecord::Base
    belongs_to :user
    has_many :portfolios
    has_many :blogs
    validates_associated :user
    
end

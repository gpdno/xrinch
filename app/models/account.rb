class Account < ActiveRecord::Base
    has_many :portfolios
    has_many :images
    
end

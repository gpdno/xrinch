class Account < ActiveRecord::Base
    has_many :portfolios
    
end

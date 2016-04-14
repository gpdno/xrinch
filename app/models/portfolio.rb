class Portfolio < ActiveRecord::Base
    belongs_to :account
    
    validates :name, presence: true, length: {minimum: 3, maximum: 150}
    validates :description, presence: true, length: {minimum: 10, maximum: 7500}
    
end

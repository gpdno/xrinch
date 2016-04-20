class Blog < ActiveRecord::Base
    belongs_to :user
    belongs_to :account
    
    validates :title, presence: true, length: {minimum: 3, maximum: 150}
    validates :description, presence: true, length: {minimum: 10, maximum: 7500}
end

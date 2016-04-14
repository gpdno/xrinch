class Portfolio < ActiveRecord::Base
    belongs_to :account
    
    validates :name, presence: true, length: {minimum: 3, maximum: 150}
    validates :description, presence: true, length: {minimum: 10, maximum: 7500}
    
# This method associates the attribute ":avatar" with a file attachment
  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end

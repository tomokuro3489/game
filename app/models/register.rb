class Register < ApplicationRecord
    belongs_to :user
    mount_uploader :image, ImageUploader
    validates :about, presence: true, length: { maximum: 100 }
    
    has_many :register_tags, dependent: :destroy
    has_many :tags, through: :register_tags
    
   
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
end

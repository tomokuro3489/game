class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :registers, dependent: :destroy
         has_many :likes, dependent: :destroy
         has_many :liked_registers, through: :likes, source: :register

   def already_liked?(register)
      self.likes.exists?(register_id: register.id)
   end

   has_many :registers, dependent: :destroy
   validates :name, presence: true
   validates :profile, length: { maximum: 200 }
end

class Like < ApplicationRecord
  belongs_to :register
  belongs_to :user

  validates_uniqueness_of :register_id, scope: :user_id
end

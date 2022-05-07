class Tag < ApplicationRecord
    has_many :register_tags, dependent: :destroy
    has_many :registers, through: :register_tags
end

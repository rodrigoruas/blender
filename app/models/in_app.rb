class InApp < ApplicationRecord
    has_many :buttons
    belongs_to :user
    belongs_to :type
    has_one_attached :image
end
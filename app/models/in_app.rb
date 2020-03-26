class InApp < ApplicationRecord
    has_many :buttons, dependent: :destroy
    belongs_to :user
    belongs_to :type
    has_one_attached :image
end
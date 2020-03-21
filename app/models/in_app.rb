class InApp < ApplicationRecord
    has_many :buttons
    belongs_to :user
    belongs_to :type
end
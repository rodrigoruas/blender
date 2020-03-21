class Type < ApplicationRecord
    belongs_to :user
    has_many :in_apps 
end

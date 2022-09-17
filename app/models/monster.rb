class Monster < ApplicationRecord
    validates :name, presence: true, uniqueness:true
    has_many :attacks
    has_many :victims, :through => :attacks
end
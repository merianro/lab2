class Victim < ApplicationRecord
    validates :name, presence: true
    has_many :attacks , :through => :monsters 
end
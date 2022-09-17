class Attack < ApplicationRecord
    belongs_to :monster
    belongs_to :victim  

    def must_have_older_than_18
        if (monster.scare_level > 5) && (Date.today - victim.birthdate) < 6570
            errors.add(:birthdate, "You should be older than 18")
        end
    end
end
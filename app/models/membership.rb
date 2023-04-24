class Membership < ApplicationRecord
    belongs_to :client
    belongs_to :gym

    validates :gym_id, presence: true
    validates :client_id, presence: true
    validates :charge, presence: true
    validate :membership_exists

    def membership_exists
        memberships = Membership.all
        result = memberships.find{|m| m.gym_id == self.gym_id && s.client_id == self.client_id}
        if result
            errors.add(:client, "is already signed up for this membership")
        end
    end
end

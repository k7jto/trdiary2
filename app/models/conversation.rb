class Conversation < ApplicationRecord
    validates :uuid, presence: true, length: { minimum: 5, maximum: 36 }
end

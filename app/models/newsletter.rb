class Newsletter < ApplicationRecord
    has_many :sections, inverse_of: :newsletter

    validates :title, presence: true
    validates :address, presence: true
    validates :date, presence: true
end

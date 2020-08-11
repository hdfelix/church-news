class Newsletter < ApplicationRecord
    validates :title, presence: true
    validates :address, presence: true
    validates :date, presence: true
end

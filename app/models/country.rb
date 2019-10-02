class Country < ApplicationRecord
  validates :countries, presence: true, length: {maximum: 50, minimum: 3}
end

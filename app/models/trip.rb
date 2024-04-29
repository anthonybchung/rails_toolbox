class Trip < ApplicationRecord
  has_many :suburbs, dependent: :destroy
end

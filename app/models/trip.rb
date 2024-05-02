class Trip < ApplicationRecord
  has_many :suburbs, dependent: :destroy

  validates :driver, presence: true
  validates :odometre_start, presence: true

  
end

class Trip < ApplicationRecord
  has_many :suburbs, dependent: :destory
end

class Suburb < ApplicationRecord
  belongs_to :trip

  delegate  :name,
            :postcode,
            to: :trip,
            prefix: true
end

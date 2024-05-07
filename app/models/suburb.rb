class Suburb < ApplicationRecord
  belongs_to :trip

  delegate  :driver,
            :teacher,
            to: :trip,
            prefix: true
end

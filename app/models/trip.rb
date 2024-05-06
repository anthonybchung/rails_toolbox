class Trip < ApplicationRecord
  has_many :suburbs, dependent: :destroy

  before_validation :set_defaults

  validates :driver, presence: true
  validates :odometre_start, presence: true

  private

  def set_defaults
    self.tracking_interval = 2 if self.tracking_interval.blank?
  end
  
end

class Step < ApplicationRecord
  belongs_to :platform
  belongs_to :standard
  belongs_to :reason

  validates :step_number, :presence => true
end

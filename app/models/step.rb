class Step < ApplicationRecord
  belongs_to :platform
  belongs_to :reason
  has_many :step_relations
  has_many :standards, through: :step_relations
  
  validates :step_number, :presence => true
end

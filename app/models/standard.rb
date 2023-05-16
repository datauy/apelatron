class Standard < ApplicationRecord
  has_many :step_relations
  has_many :steps, through: :step_relations
end

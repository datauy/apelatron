class StepRelation < ApplicationRecord
  belongs_to :step
  belongs_to :standard, optional: true
end

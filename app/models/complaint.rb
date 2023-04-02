class Complaint < ApplicationRecord
  belongs_to :platform
  belongs_to :copyright
  belongs_to :standard
  belongs_to :country
  belongs_to :limitations
end

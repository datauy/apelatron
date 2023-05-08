class Complaint < ApplicationRecord
  belongs_to :platform
  belongs_to :standard
  belongs_to :country
  belongs_to :reason

end

class Special < ApplicationRecord
  validates_presence_of :title, :run_time
  belongs_to :comedian
end

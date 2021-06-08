class Event < ApplicationRecord

  belongs_to :creator, foreign_key: true
end

class Event < ActiveRecord::Base
  validates :name, presence: true
  validates :location, presence: true
  validates :date, presence: true
  validates :event_type_id, presence: true


  belongs_to :event_type
end

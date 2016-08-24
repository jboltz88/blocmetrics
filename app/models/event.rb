class Event < ActiveRecord::Base
  belongs_to :registered_app

  validates :registered_app, presence: true
end

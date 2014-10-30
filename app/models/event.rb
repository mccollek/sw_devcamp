class Event < ActiveRecord::Base
  has_many :registrations
  has_many :users, through: :registrations
  belongs_to :coordinator, class_name: 'User'
end

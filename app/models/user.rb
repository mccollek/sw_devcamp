class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :registrations
  has_many :events, through: :registrations
  has_many :coordinated_meetings, class_name: 'Event', foreign_key: 'coordinator_id'
end

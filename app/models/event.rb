# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  event_date  :date
#  event_name  :string
#  menus_count :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Event < ApplicationRecord

  has_many  :menus, dependent: :destroy

  validates :event_date, presence: true

  validates :event_date, uniqueness: true

  validates :event_name, presence: true

  validates :event_name, uniqueness: false
end

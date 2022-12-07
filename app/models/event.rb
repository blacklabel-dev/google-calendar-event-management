class Event < ApplicationRecord
  validates :title, :start_at, :end_at, :user_id, presence: true

  belongs_to :user

  scope :searched_by, ->(start_at, end_at) { where('start_at >= ? AND end_at <= ?', start_at, end_at) }
end

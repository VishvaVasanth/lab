class Task < ApplicationRecord
  belongs_to :project

  STATUSES = %w[todo doing done]

  validates :title, presence: true
  validates :status, inclusion: { in: STATUSES }
end
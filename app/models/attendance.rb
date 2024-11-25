class Attendance < ApplicationRecord
  belongs_to :user
  validates :date, presence: true
  validates :status, inclusion: { in: %w[hadir sakit izin] }
end

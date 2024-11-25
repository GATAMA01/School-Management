class Payment < ApplicationRecord
  belongs_to :user
  validates :amount, numericality: { greater_than: 0 }
  validates :status, inclusion: { in: %w[pending completed failed] }
end

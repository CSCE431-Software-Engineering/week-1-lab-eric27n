class Book < ApplicationRecord
  validates :title, :author, :published_date, presence: true
  validates :price, presence: true, numericality: true
  validate :correct_date_format

  private

  def correct_date_format
    errors.add(:published_date, 'must be a valid date in the format YYYY-MM-DD') unless published_date.is_a?(Date)
  end
end

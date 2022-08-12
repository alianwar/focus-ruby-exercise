class LeaveApplication < ApplicationRecord
  belongs_to :employee

  validates :leave_start_date, :leave_end_date, presence: true
  validate :leave_start_date_must_be_before_leave_end_date, if: :leaves_dates_validatable?

  enum status: %i[pending approved]

  private

  def leave_start_date_must_be_before_leave_end_date
    return if leave_start_date <= leave_end_date

    errors.add(:leave_end_date, "can't be before start date")
  end

  def leaves_dates_validatable?
    leave_start_date.present? && leave_end_date.present?
  end
end

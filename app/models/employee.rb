class Employee < ApplicationRecord
  has_many :leave_applications, dependent: :destroy

  def response_body
    attributes.slice "id", "first_name", "last_name", "date_of_birth"
  end
end

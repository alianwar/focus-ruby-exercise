class Employee < ApplicationRecord
  def response_body
    attributes.slice "id", "first_name", "last_name", "date_of_birth"
  end
end

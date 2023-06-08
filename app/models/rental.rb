class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :equipment

  def duration
    return unless rented_date.present? && return_date.present?

    return_date.to_date - rented_date.to_date
  end

  def total_cost
    duration.to_i * equipment.price
  end
end

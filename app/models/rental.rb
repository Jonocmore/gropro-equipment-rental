class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :equipment

  def duration
    return unless rented_date.present? && return_date.present?

    begin
      rented_date = Date.parse(self.rented_date.to_s)
      return_date = Date.parse(self.return_date.to_s)
      return_date - rented_date
    rescue ArgumentError => e
      Rails.logger.error("Error calculating duration: #{e.message}")
      nil
    end
  end

  def total_cost
    duration.to_i * equipment.price
  end
end

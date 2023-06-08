class Equipment < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :rentals
  include PgSearch::Model

  pg_search_scope :search_by_name,
    against: [:name],
    using: {
      tsearch: { prefix: true },
    }

  def available?
    rentals.where("return_date > ?", Date.today).empty?
  end
end

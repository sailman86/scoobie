class Dog < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_breed,
    against: [:breed, :gender ],
    associated_against: {
      user: [:address]
    },
    using: {
      tsearch: { prefix: true }
    }
end

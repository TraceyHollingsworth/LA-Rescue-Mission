class Question < ActiveRecord::Base
  has_many :answers, -> { order(created_at: :desc) }
  belongs_to :user

  validates :title,
    presence: true,
    length: { minimum: 40 }

  validates :description,
    presence: true,
    length: { minimum: 150,
    too_short: "%{count} characters is the minimum allowed" }

end

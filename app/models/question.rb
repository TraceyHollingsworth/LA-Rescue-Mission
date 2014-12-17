class Question < ActiveRecord::Base
  has_many :answers, dependent: :destroy
  belongs_to :user

  validates :title,
    presence: true,
    length: { minimum: 40,
      maximum: 254,
      too_short: "%{count} characters is the minimum allowed.",
      too_long: "%{count} characters is the maximum allowed."  }

  validates :description,
    presence: true,
    length: { minimum: 150,
      maximum: 1000,
      too_short: "%{count} characters is the minimum allowed.",
      too_long: "%{count} characters is the minimum allowed."
    }

end

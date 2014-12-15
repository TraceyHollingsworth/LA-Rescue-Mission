class Question < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 40 }
  validates :description, presence: true, length: { minimum: 150,
    too_short: "%{count} characters is the minimum allowed" }
end

class Answer < ActiveRecord::Base
  validates :description, presence: true, length: { minimum: 50,
    too_short: "%{count} characters is the minimum allowed" }
end

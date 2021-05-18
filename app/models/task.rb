class Task < ApplicationRecord
  # task is only used for associations and validations
  validates :title, presence: true
end

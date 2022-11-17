class Publisher < ApplicationRecord
  has_many :movie, dependent: :destroy
end

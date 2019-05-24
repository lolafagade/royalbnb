class Review < ApplicationRecord
  belongs_to :castle
  validates :content, length: { minimum: 20 }
end

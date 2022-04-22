class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 8,  maximum: 100}
  validates :description, presence: true, length: { minimum: 13, maximum: 300}
end
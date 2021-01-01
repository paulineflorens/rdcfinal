class Article < ApplicationRecord
  belongs_to :collection
  belongs_to :brand
  has_one_attached :photo
end

class Article < ApplicationRecord
  belongs_to :collection
  belongs_to :brand
end

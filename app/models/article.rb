class Article < ApplicationRecord
  has_many :paragraphs, inverse_of: :article
  accepts_nested_attributes_for :paragraphs, reject_if: :all_blank, allow_destroy: true
end

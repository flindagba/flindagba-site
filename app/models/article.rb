class Article < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :paragraphs, dependent: :destroy, inverse_of: :article
  accepts_nested_attributes_for :paragraphs, reject_if: :all_blank, allow_destroy: true
end

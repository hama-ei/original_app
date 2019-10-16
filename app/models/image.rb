class Image < ApplicationRecord
  has_one_attached :image
  mount_uploader :image, ImagesUploader
  has_many   :likes
  belongs_to :user
end

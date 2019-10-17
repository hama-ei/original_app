class Image < ApplicationRecord
  mount_uploader :image, ImagesUploader
  has_many   :likes
  belongs_to :user
end

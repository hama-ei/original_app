class Image < ApplicationRecord
  validates :image, :user_id, :date_year, :date_month, presence: true
  mount_uploader :image, ImagesUploader
  has_many   :likes
  belongs_to :user
end

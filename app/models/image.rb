class Image < ApplicationRecord
  belongs_to :user
  belongs_to :grade
  belongs_to :class_day
  belongs_to :class_time
end

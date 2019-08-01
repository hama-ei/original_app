class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :images
  belongs_to :grade
  belongs_to :class_day
  belongs_to :class_time
  has_many :comments
end

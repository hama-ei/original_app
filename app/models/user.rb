class User < ApplicationRecord
  validates :name, :name_kana, presence: true
  has_many :images
end

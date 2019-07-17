class ClassDay < ApplicationRecord
  has_many :users
end




class Comment < ApplicationRecord
  belongs_to :user
end
class Grade < ApplicationRecord
  has_many :users
end
class Image < ApplicationRecord
  belongs_to :user
  belongs_to :grade
  belongs_to :class_day
  belongs_to :class_time
end
class Like < ApplicationRecord
  belongs_to :image
  belongs_to :user
end
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :images
  belongs_to :grade
  belongs_to :class_day
  belongs_to :class_time
         
end
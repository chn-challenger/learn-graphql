class Course < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :description
  has_many :units, dependent: :destroy
end

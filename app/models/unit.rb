class Unit < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :description
  belongs_to :course
end

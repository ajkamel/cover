class Book < ActiveRecord::Base
  has_and_belongs_to_many :lists

  validates :title, presence: true
end

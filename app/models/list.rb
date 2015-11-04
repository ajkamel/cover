class List < ActiveRecord::Base
  has_and_belongs_to_many :books

  validates :title, :description, presence: true
end

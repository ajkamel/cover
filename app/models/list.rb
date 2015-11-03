class List < ActiveRecord::Base
  validates :title, :description, presence: true
end

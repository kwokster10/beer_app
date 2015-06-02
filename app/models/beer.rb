class Beer < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  validates :name, presence: true
  validates_length_of :description, :minimum => 10, :maximum => 50
end

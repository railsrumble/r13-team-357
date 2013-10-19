class Project < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  has_and_belongs_to_many :users
  accepts_nested_attributes_for :users

  scope :by_owner, lambda { |owner_id| where(owner_id: owner_id) unless owner_id.nil? }
end
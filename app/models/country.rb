class Country < ActiveRecord::Base
  self.primary_key = :code
  attr_accessible :name, :code, :visited

  validates_presence_of :name
  validates_presence_of :code
  validates_uniqueness_of :code, :allow_blank => true

  has_many :currencies

  has_many :user_countries, :foreign_key => "code"

  accepts_nested_attributes_for :currencies, :allow_destroy => true

  scope :visited, :conditions => { :visited => true }
  scope :not_visited, :conditions => { :visited => false }
end

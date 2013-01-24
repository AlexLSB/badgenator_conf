class BadgeSet < ActiveRecord::Base
   has_many :badges
   attr_accessible :name 
   attr_accessible :image
   attr_accessor :name
   attr_accessor :image


end
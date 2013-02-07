class BadgeSet < ActiveRecord::Base
   validates  :name, :presence => true, :length => { :minimum => 2, :maximum => 50}

   has_many :badges	
   attr_accessible :name 

   attr_accessible :image
   attr_accessor :name
   attr_accessor :image


end
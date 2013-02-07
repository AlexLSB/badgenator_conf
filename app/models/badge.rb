class Badge < ActiveRecord::Base
  belongs_to :badge_set
  validates :badge_set_id, :presence => true
  validates :name, :presence => true
  validates :company, :presence => true
  validates :profession, :length => {:minimum => 3, :maximum => 30}
  validates :surname, :length => {:minimum => 2, :maximum => 30}
  validates :company, :length => {:minimum => 3, :maximum => 30}
  validates :name, :length => {:minimum => 2, :maximum => 30}

  attr_accessible :badge_set_id, :company, :created_at, :name, :profession, :surname, :updated_at

end

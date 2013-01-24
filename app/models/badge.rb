class Badge < ActiveRecord::Base
  belongs_to :badge_set
  attr_accessible :badge_set_id, :company, :created_at, :name, :profession, :surname, :updated_at
end

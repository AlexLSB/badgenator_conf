class CreateBadgeSets < ActiveRecord::Migration
  def change
    create_table :badge_sets do |t|
      t.string :name,  null:  false
      t.string :image
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end

class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :name, null: false
      t.string :surname
      t.string :company
      t.string :profession
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :badge_set_id

      t.timestamps
    end
    add_index :badges, :badge_set_id    
  end
end

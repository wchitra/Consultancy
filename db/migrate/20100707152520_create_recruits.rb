class CreateRecruits < ActiveRecord::Migration
  def self.up
    create_table :recruits do |t|
      t.string :first_name
      t.string :last_name
      t.string :status
      t.string :level
      t.date :phone_screen_date
      t.string :phone_screener
      t.date :problem_assigned
      t.date :problem_received
      t.string :reviewer
      t.date :review_completed
      # t.binary :review
      t.text :possible_assignment

      t.timestamps
    end
  end

  def self.down
    drop_table :recruits
  end
end

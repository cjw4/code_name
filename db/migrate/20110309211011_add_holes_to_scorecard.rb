class AddHolesToScorecard < ActiveRecord::Migration
  def self.up
    add_column :scorecards, :hole1, :integer
    add_column :scorecards, :hole2, :integer
    add_column :scorecards, :hole3, :integer
    add_column :scorecards, :hole4, :integer
    add_column :scorecards, :hole5, :integer
    add_column :scorecards, :hole6, :integer
    add_column :scorecards, :hole7, :integer
    add_column :scorecards, :hole8, :integer
    add_column :scorecards, :hole9, :integer
    add_column :scorecards, :hole10, :integer
    add_column :scorecards, :hole11, :integer
    add_column :scorecards, :hole12, :integer
    add_column :scorecards, :hole13, :integer
    add_column :scorecards, :hole14, :integer
    add_column :scorecards, :hole15, :integer
    add_column :scorecards, :hole16, :integer
    add_column :scorecards, :hole17, :integer
    add_column :scorecards, :hole18, :integer
    add_column :scorecards, :pro_tees, :boolean
  end

  def self.down
    remove_column :scorecards, :pro_tees
    remove_column :scorecards, :hole18
    remove_column :scorecards, :hole17
    remove_column :scorecards, :hole16
    remove_column :scorecards, :hole15
    remove_column :scorecards, :hole14
    remove_column :scorecards, :hole13
    remove_column :scorecards, :hole12
    remove_column :scorecards, :hole11
    remove_column :scorecards, :hole10
    remove_column :scorecards, :hole9
    remove_column :scorecards, :hole8
    remove_column :scorecards, :hole7
    remove_column :scorecards, :hole6
    remove_column :scorecards, :hole5
    remove_column :scorecards, :hole4
    remove_column :scorecards, :hole3
    remove_column :scorecards, :hole2
    remove_column :scorecards, :hole1
  end
end

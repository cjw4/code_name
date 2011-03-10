class AddDateToScorecard < ActiveRecord::Migration
  def self.up
    add_column :scorecards, :date, :string
  end

  def self.down
    remove_column :scorecards, :date
  end
end

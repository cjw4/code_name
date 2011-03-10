class CreateScorecards < ActiveRecord::Migration
  def self.up
    create_table :scorecards do |t|
      t.string :score
      t.integer :total

      t.timestamps
    end
  end

  def self.down
    drop_table :scorecards
  end
end

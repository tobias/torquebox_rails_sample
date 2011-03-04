class CreateTpsReports < ActiveRecord::Migration
  def self.up
    create_table :tps_reports do |t|
      t.text :report

      t.timestamps
    end
  end

  def self.down
    drop_table :tps_reports
  end
end

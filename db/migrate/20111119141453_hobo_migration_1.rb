class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :adverts do |t|
      t.string   :title
      t.string   :description
      t.string   :telephone
      t.string   :email
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :adverts
  end
end

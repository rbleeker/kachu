class HoboMigration2 < ActiveRecord::Migration
  def self.up
    drop_table :adverts
  end

  def self.down
    create_table "adverts", :force => true do |t|
      t.string   "title"
      t.string   "description"
      t.string   "telephone"
      t.string   "email"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end

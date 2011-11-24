class HoboMigration4 < ActiveRecord::Migration
  def self.up
    create_table :portfolios do |t|
      t.string   :title
      t.text     :body
      t.string   :costbracket
      t.string   :website
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :category_id
    end
    add_index :portfolios, [:category_id]
  end

  def self.down
    drop_table :portfolios
  end
end

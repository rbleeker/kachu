class HoboMigration3 < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :ideas do |t|
      t.string   :title
      t.text     :body
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :category_id
    end
    add_index :ideas, [:category_id]
  end

  def self.down
    drop_table :categories
    drop_table :ideas
  end
end

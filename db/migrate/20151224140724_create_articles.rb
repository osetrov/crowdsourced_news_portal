class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.text :content
      t.belongs_to :user, index: true, foreign_key: true
      t.boolean :moderated, :default => false

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :articles
  end

end

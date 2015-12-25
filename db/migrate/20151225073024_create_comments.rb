class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :name
      t.text :content
      t.belongs_to :article, index: true, foreign_key: true
      t.belongs_to :comment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :comments
  end
end

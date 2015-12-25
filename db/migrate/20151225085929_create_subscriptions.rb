class CreateSubscriptions < ActiveRecord::Migration
  def self.up
    create_table :subscriptions do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :category, index: true, foreign_key: true
      t.string :secret_code

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :subscriptions
  end
end

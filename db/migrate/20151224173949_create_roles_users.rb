class CreateRolesUsers < ActiveRecord::Migration
  def self.up
    create_table :roles_users do |t|
      t.belongs_to :role, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
    end
  end

  def self.down
    drop_table :roles_users
  end
end

class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :title
    end
    Category.create(title: "Политика")
    Category.create(title: "Спорт")
    Category.create(title: "Культура")
    Category.create(title: "Общество")
    Category.create(title: "Экономика")
    Category.create(title: "Авто")
  end

  def self.down
    drop_table :categories
  end
end

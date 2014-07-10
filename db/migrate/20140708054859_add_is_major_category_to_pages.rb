class AddIsMajorCategoryToPages < ActiveRecord::Migration
  def change
    add_column :pages, :is_major_category, :boolean, default: false
  end
end

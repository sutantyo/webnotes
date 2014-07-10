class AddOrderToPages < ActiveRecord::Migration
  def change
    add_column :pages, :order, :integer, default: 1000
  end
end

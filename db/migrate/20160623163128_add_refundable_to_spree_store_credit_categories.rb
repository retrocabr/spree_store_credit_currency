class AddRefundableToSpreeStoreCreditCategories < ActiveRecord::Migration
  def change
    add_column :spree_store_credit_categories, :refundable, :boolean, :default => false
  end
end

Deface::Override.new(:virtual_path => "spree/admin/store_credit_categories/_form",
                     :name => "add_refundable_to_store_credit_categories_form",
                     :insert_bottom => "[data-hook='additional_store_credit_category_fields']",
                     :partial => "spree/admin/store_credit_categories/additional_fields")

Deface::Override.new(:virtual_path => "spree/admin/store_credit_categories/index",
                    :name => "add_refundable_to_store_credit_categories_index_head",
                    :insert_before => "[data-hook='admin_store_credit_categories_index_headers'] th.actions",
                    :text => "<th><%= Spree.t('spree_store_credit_currency.is_refundable') %></th>")

Deface::Override.new(:virtual_path => "spree/admin/store_credit_categories/index",
                     :name => "add_refundable_to_store_credit_categories_index_body",
                     :insert_before => "[data-hook='admin_store_credit_categories_index_rows'] td.actions",
                     :text => "<td><%= store_credit_category.refundable ? Spree.t('say_yes') : Spree.t('say_no') %></td>")

require "spree_store_credit_currency/version"

module Spree
  module StoreCreditCurrency
    class Engine < Rails::Engine
      engine_name 'spree_store_credit_currency'

      config.autoload_paths += %W(#{config.root}/lib)

      def self.activate
        Dir.glob(File.join(File.dirname(__FILE__), "../app/**/spree/*_decorator*.rb")) do |c|
          Rails.application.config.cache_classes ? require(c) : load(c)
        end
      end
      config.to_prepare &method(:activate).to_proc

    end
  end
end

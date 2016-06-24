# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "spree_store_credit_currency"
  spec.version       = '1.0.0'
  spec.authors       = ["Denise Fugihara"]
  spec.email         = ["denise@retroca.com.br"]

  spec.summary       = 'Spree Store Credits extension'
  spec.description   = 'This is a Spree extension users to withdraw or donate store credits.'
  spec.homepage      = "https://github.com/retrocabr/spree_store_credit_currency"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'spree', '~> 3.1.0'
  spec.add_dependency 'spree_i18n'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end

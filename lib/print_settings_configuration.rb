class PrintSettingsConfiguration < Configuration
  preference :print_logo_path, :string, :default => "#{RAILS_ROOT}/public/images/admin/bg/spree_50.png"
  preference :print_company_name, :string, :default => "Unknown Company (Use Spree::PrintSettings::Config.set(:print_company_name, <value>) to set)"
  preference :print_company_address1, :string, :default => "Unknown Address 1 (Use Spree::PrintSettings::Config.set(:print_company_address1 => <value>) to set)"
  preference :print_company_address2, :string, :default => "Unknown Address 2 (Use Spree::PrintSettings::Config.set(:print_company_address2 => <value>) to set)"
  preference :print_company_phone, :string, :default => "Unknown Phone # (Use Spree::PrintSettings::Config.set(:print_company_phone => <value>) to set)"
  preference :print_company_website, :string, :default => "Unknown Website (Use Spree::PrintSettings::Config.set(:print_company_website => <value>) to set)"
end
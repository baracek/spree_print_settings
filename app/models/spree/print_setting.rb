module Spree
  class PrintSetting < Preferences::Configuration
    preference :print_logo_path, :string, :default => 'logo/spree_50.png'
    preference :print_company_name, :string, :default => 'Unknown Company'
    preference :print_company_address1, :string, :default => 'Unknown Address 1'
    preference :print_company_address2, :string, :default => 'Unknown Address 2'
    preference :print_company_phone, :string, :default => 'Unknown Phone #'
    preference :print_company_website, :string, :default => 'Unknown Website'
    preference :print_prawn_options, :string, :default => ''
  end
end
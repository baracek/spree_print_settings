module Spree
  module Admin
    class PrintSettingsController < ResourceController
      def update
        config = Spree::PrintSetting.new
        params.each do |name, value|
          next unless config.has_preference? name
          config[name] = value
        end

        flash[:success] = Spree.t(:successfully_updated, resource: Spree.t(:print_settings))
        render :edit
      end
    end
  end
end

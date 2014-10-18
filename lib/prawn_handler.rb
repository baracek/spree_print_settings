require 'prawn'
require 'json'

module ActionView
  module Template::Handlers
    class Prawn 
      def self.register!
        Template.register_template_handler :prawn, self
      end
            
      def self.call(template)
        %(extend #{DocumentProxy}; #{template.source}; pdf.render)
      end
      
      module DocumentProxy
        def pdf
          options = JSON.parse( SpreePrintSettings::Config[:print_prawn_options] )
          @pdf ||= ::Prawn::Document.new( options )
        end
        
      private
      
        def method_missing(method, *args, &block)
          pdf.respond_to?(method) ? pdf.send(method, *args, &block) : super
        end
      end
    end
  end
end

ActionView::Template::Handlers::Prawn.register!

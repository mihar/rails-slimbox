# Created by: Miha Rebernik
require 'action_view'

module ActionView
  module Helpers
    module SlimBoxHelper
      def self.included(base)
        base.class_eval do
          include InstanceMethods
        end
      end
      module InstanceMethods
        def lightbox_image_tag(source, destination, image_options = {}, html_options = {})
          group = html_options[:group]
          html_options.merge!(:rel => (group)? "lightbox-#{group}" : "lightbox") unless html_options[:rel]
          html_options.merge!(:title => "") unless html_options[:title]
          link_to(image_tag(source, image_options), destination, html_options)
        end
        
        def lightbox_link_to(name, options = {}, html_options = {}, *parameters_for_method_reference) 
          group = html_options[:group]
          html_options.merge!(:rel => (group)? "lightbox-#{group}" : "lightbox") unless html_options[:rel]
          html_options.merge!(:title => "") unless html_options[:title]
          link_to(name, options, html_options, *parameters_for_method_reference)
        end
      end
    end
  end
end

ActionView::Base.class_eval do
  include ActionView::Helpers::SlimBoxHelper
end

ActionView::Helpers::AssetTagHelper.register_javascript_expansion :slimbox => ["lib/slimbox2"]
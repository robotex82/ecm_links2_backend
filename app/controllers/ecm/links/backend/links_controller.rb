module Ecm
  module Links
    module Backend
      class LinksController < Itsf::Backend::Resource::BaseController
        include ResourcesController::Sorting

        def self.resource_class
          Ecm::Links::Link
        end

        private

        def permitted_params
          params
            .require(:link)
            .permit(:category_id, :name, :url, :markup_language, :description)
        end
      end
    end
  end
end

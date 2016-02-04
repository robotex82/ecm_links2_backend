class Ecm::Links::Backend::LinksController < Itsf::Backend::Resource::BaseController
  def self.resource_class
    Ecm::Links::Link
  end

  private

  def collection_scope
    resource_class.includes(:ecm_links_category)
  end

  def permitted_params
    params
      .require(:ecm_links_link)
        .permit(:ecm_links_category_id, :name, :url, :markup_language, :description)
  end
end

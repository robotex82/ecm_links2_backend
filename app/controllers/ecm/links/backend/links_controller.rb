class Ecm::Links::Backend::LinksController < Itsf::Backend::Resource::BaseController
  def self.resource_class
    Ecm::Links::Link
  end

  private

  def collection_scope
    resource_class.includes(:category)
  end

  def permitted_params
    params
      .require(:link)
      .permit(:category_id, :name, :url, :markup_language, :description)
  end
end

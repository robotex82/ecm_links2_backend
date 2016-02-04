class Ecm::Links::Backend::CategoriesController < Itsf::Backend::BaseController
  def self.resource_class
    Ecm::Links::Category
  end

  private

  def permitted_params
    params
      .require(:ecm_links_category)
        .permit(:parent_id, :locale, :name, :markup_language, :short_description, :long_description, :link_footer_column)
  end
end

module GOVUKFormBuilder
  module Pages
    module Application
      class HomePage < SitePrism::Page
        set_url '/'

        element :form_elements_link, 'a:contains("Form elements")'
        element :error_validations_link, 'a:contains("Errors and validation")'
      end
    end
  end
end

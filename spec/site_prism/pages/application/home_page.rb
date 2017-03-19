module GOVUKFormBuilder
  module Pages
    module Application
      class HomePage < SitePrism::Page
        set_url '/'

        element :form_elements_link, 'a:contains("Form elements")'
      end
    end
  end
end

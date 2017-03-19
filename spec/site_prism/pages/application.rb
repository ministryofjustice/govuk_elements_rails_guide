module GOVUKFormBuilder
  module Pages
    module Application

      # def initialize
      #   @pages = {}
      # end

      def pages
        @pages ||= {}
      end

      def home_page
        pages[:home] ||= GOVUKFormBuilder::Pages::Application::HomePage.new
      end

      def form_elements_page
        pages[:form_elements] ||= GOVUKFormBuilder::Pages::Application::FormElementsPage.new
      end
    end
  end
end

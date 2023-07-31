# frozen_string_literal: true

class HomeController < ApplicationController
  # before_action :set_css_file, only: [
  #   :version_one,
  #   :version_one_page_one,
  #   :version_one_page_two,
  #   :version_one_page_three,
  #   :version_two,
  #   :version_two_page_one,
  #   :version_two_page_two,
  #   :version_two_page_three
  # ]

  # def version_one
  #   render 'home/version_one/version_one', layout: 'layouts/version_one/version_one'
  # end

  # def version_one_page_one
  #   render 'home/version_one/page_one', layout: 'layouts/version_one/version_one'
  # end

  # def version_one_page_two
  #   render 'home/version_one/page_two', layout: 'layouts/version_one/version_one'
  # end

  # def version_one_page_three
  #   render 'home/version_one/page_three', layout: 'layouts/version_one/version_one'
  # end

  # def version_two
  #   render 'home/version_two/version_two', layout: 'layouts/version_two/version_two'
  # end

  # def version_two_page_one
  #   render 'home/version_two/page_one', layout: 'layouts/version_two/version_two'
  # end

  # def version_two_page_two
  #   render 'home/version_two/page_two', layout: 'layouts/version_two/version_two'
  # end

  # def version_two_page_three
  #   render 'home/version_two/page_three', layout: 'layouts/version_two/version_two'
  # end

  # private

  # def set_css_file
  #   case action_name
  #   when 'version_one', 'version_one_page_one', 'version_one_page_two', 'version_one_page_three'
  #     @css_file = 'version_one/version_one.css'
  #   when 'version_two', 'version_two_page_one', 'version_two_page_two', 'version_two_page_three'
  #     @css_file = 'version_two/version_two.css'
  #   end
  # end

end

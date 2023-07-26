# frozen_string_literal: true

class HomeController < ApplicationController
  # def homepage
  #   design_version = params[:design_version]

  #   case design_version
  #   when 'version_one'
  #     @css_file = 'version_one/version_one.css'
  #   when 'version_two'
  #     @css_file = 'version_two/version_two.css'
  #   end

  #   render 'homepage'
  # end

  # Set up 2 methods to handle 2 different views
  # Note this is not the standard rails version:
  # def version_one
  #   @css_file = 'version_one/version_one.css'
  #   render 'home/version_one/version_one', layout: 'layouts/version_one/version_one'
  # end

  # def version_two
  #   @css_file = 'version_two/version_two.css'
  #   render 'home/version_two/version_two', layout: 'layouts/version_two/version_two'
  # end

  def version_one
    @css_file = 'version_one/version_one.css'
    render 'home/version_one/version_one', layout: 'layouts/version_one/version_one'
  end

  def version_one_page_one
    @css_file = 'version_one/version_one.css'
    render 'home/version_one/page_one', layout: 'layouts/version_one/version_one'
  end
end

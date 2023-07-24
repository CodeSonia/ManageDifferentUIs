# frozen_string_literal: true

class HomeController < ApplicationController
  # def homepage
  #   design_version = params[:design_version]

  #   case design_version
  #   when 'version_1'
  #     @css_file = 'version_1/version_1.css'
  #   when 'version_2'
  #     @css_file = 'version_2/version_2.css'
  #   end

  #   render 'homepage'
  # end

  # Set up 2 methods to handle 2 different views
  # Note this is not the standard rails version:
  def version1
    @css_file = 'version_1/version_1.css'
    render 'home/version1/version1'
  end

  def version2
    @css_file = 'version_2/version_2.css'
    render 'home/version2/version2'
  end
end

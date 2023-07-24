# frozen_string_literal: true

class HomeController < ApplicationController
  def homepage
    design_version = params[:design_version]

    case design_version
    when 'version_1'
      @css_file = 'version_1/version_1.css'
    when 'version_2'
      @css_file = 'version_2/version_2.css'
    end

    render 'homepage'
  end
end

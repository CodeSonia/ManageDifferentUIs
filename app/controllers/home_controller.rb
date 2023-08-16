# frozen_string_literal: true

class HomeController < ApplicationController
  helper_method :ui_version
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

  def root
    Rails.logger.info "UI_VERSION: #{ui_version}"
    puts "UI_VERSION: #{ENV['UI_VERSION']}"
    puts "Template path: home/#{ui_version}/#{ui_version}"
    puts "Layout path: layouts/#{ui_version}/#{ui_version}"
    render template: "home/#{ui_version}/#{ui_version}", layout: "layouts/#{ui_version}/#{ui_version}"
  end

  def page_one
    render template: "home/#{ui_version}/page_one", layout: "layouts/#{ui_version}/#{ui_version}"
  end

  def page_two
    render template: "home/#{ui_version}/page_two", layout: "layouts/#{ui_version}/#{ui_version}"
  end

  def page_three
    render template: "home/#{ui_version}/page_three", layout: "layouts/#{ui_version}/#{ui_version}"
  end

  private

  def ui_version
    # params[:ui_version] || ENV['UI_VERSION'] || 'version-one'
    ENV['UI_VERSION'] || 'version-one'
  end

  def version_one_page_one_path
    home_page_one_path(ui_version: 'version-one')
  end

  def version_one_page_two_path
    home_page_two_path(ui_version: 'version-one')
  end

  def version_one_page_three_path
    home_page_three_path(ui_version: 'version-one')
  end

  def version_two_page_one_path
    home_page_one_path(ui_version: 'version-two')
  end

  def version_two_page_two_path
    home_page_two_path(ui_version: 'version-two')
  end

  def version_two_page_three_path
    home_page_three_path(ui_version: 'version-two')
  end
end

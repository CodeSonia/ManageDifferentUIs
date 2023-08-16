# frozen_string_literal: true

class VersionOneController < ApplicationController
  before_action :set_css_file

  def version_one
    render 'home/version_one/version_one', layout: 'layouts/version_one/version_one'
  end

  def version_one_page_one
    render 'home/version_one/page_one', layout: 'layouts/version_one/version_one'
  end

  def version_one_page_two
    render 'home/version_one/page_two', layout: 'layouts/version_one/version_one'
  end

  def version_one_page_three
    render 'home/version_one/page_three', layout: 'layouts/version_one/version_one'
  end

  private

  def set_css_file
    @css_file = 'version_one/version_one.css'
  end
end

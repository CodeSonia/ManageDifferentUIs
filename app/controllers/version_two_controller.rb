# frozen_string_literal: true

class VersionTwoController < ApplicationController
  before_action :set_css_file

  def version_two
    render 'home/version_two/version_two', layout: 'layouts/version_two/version_two'
  end

  def version_two_page_one
    render 'home/version_two/page_one', layout: 'layouts/version_two/version_two'
  end

  def version_two_page_two
    render 'home/version_two/page_two', layout: 'layouts/version_two/version_two'
  end

  def version_two_page_three
    render 'home/version_two/page_three', layout: 'layouts/version_two/version_two'
  end

  private

  def set_css_file
    @css_file = 'version_two/version_two.css'
  end
end

class ErrorsController < ApplicationController
  def not_found
    render template: "error_pages/not_found"
  end
end
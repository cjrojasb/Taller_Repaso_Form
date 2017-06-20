require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get pagina_x" do
    get pages_pagina_x_url
    assert_response :success
  end

end

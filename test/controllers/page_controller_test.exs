defmodule HPlateApi.PageControllerTest do
  use HPlateApi.ConnCase

  # TODO: this test wont run
  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end

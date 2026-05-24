# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::FansTest < Onlyfansapi::Test::ResourceTest
  def test_list_active
    skip("Mock server tests are disabled")

    response = @onlyfansapi.fans.list_active("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::FanListActiveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::FanListActiveResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::FanListActiveResponse::Pagination | nil,
        data: Onlyfansapi::Models::FanListActiveResponse::Data | nil
      }
    end
  end

  def test_list_all
    skip("Mock server tests are disabled")

    response = @onlyfansapi.fans.list_all("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::FanListAllResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::FanListAllResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::FanListAllResponse::Pagination | nil,
        data: Onlyfansapi::Models::FanListAllResponse::Data | nil
      }
    end
  end

  def test_list_expired
    skip("Mock server tests are disabled")

    response = @onlyfansapi.fans.list_expired("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::FanListExpiredResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::FanListExpiredResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::FanListExpiredResponse::Pagination | nil,
        data: Onlyfansapi::Models::FanListExpiredResponse::Data | nil
      }
    end
  end

  def test_list_latest
    skip("Mock server tests are disabled")

    response = @onlyfansapi.fans.list_latest("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::FanListLatestResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::FanListLatestResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::FanListLatestResponse::Pagination | nil,
        data: Onlyfansapi::Models::FanListLatestResponse::Data | nil
      }
    end
  end
end

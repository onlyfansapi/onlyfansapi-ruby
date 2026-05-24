# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::FansTest < Onlyfansapi::Test::ResourceTest
  def test_get_subscription_history_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.fans.get_subscription_history("user_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::FanGetSubscriptionHistoryResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta | nil,
        data: Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Data | nil
      }
    end
  end

  def test_list_active
    skip("Mock server tests are disabled")

    response = @only_fans_api.fans.list_active("acct_XXXXXXXXXXXXXXX")

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

    response = @only_fans_api.fans.list_all("acct_XXXXXXXXXXXXXXX")

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

    response = @only_fans_api.fans.list_expired("acct_XXXXXXXXXXXXXXX")

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

    response = @only_fans_api.fans.list_latest("acct_XXXXXXXXXXXXXXX")

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

  def test_list_top
    skip("Mock server tests are disabled")

    response = @only_fans_api.fans.list_top("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::FanListTopResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::FanListTopResponse::Meta | nil,
        data: Onlyfansapi::Models::FanListTopResponse::Data | nil
      }
    end
  end

  def test_set_custom_name_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.fans.set_custom_name(
        "fan_id",
        account: "acct_XXXXXXXXXXXXXXX",
        custom_name: "🐳Whale ($100+)"
      )

    assert_pattern do
      response => Onlyfansapi::Models::FanSetCustomNameResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::FanSetCustomNameResponse::Meta | nil,
        data: Onlyfansapi::Models::FanSetCustomNameResponse::Data | nil
      }
    end
  end
end

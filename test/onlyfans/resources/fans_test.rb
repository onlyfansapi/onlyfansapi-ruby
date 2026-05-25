# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::FansTest < Onlyfans::Test::ResourceTest
  def test_get_subscription_history_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.fans.get_subscription_history("user_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::FanGetSubscriptionHistoryResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::FanGetSubscriptionHistoryResponse::Meta | nil,
        data: Onlyfans::Models::FanGetSubscriptionHistoryResponse::Data | nil
      }
    end
  end

  def test_list_active
    skip("Mock server tests are disabled")

    response = @only_fans_api.fans.list_active("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::FanListActiveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::FanListActiveResponse::Meta | nil,
        _pagination: Onlyfans::Models::FanListActiveResponse::Pagination | nil,
        data: Onlyfans::Models::FanListActiveResponse::Data | nil
      }
    end
  end

  def test_list_all
    skip("Mock server tests are disabled")

    response = @only_fans_api.fans.list_all("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::FanListAllResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::FanListAllResponse::Meta | nil,
        _pagination: Onlyfans::Models::FanListAllResponse::Pagination | nil,
        data: Onlyfans::Models::FanListAllResponse::Data | nil
      }
    end
  end

  def test_list_expired
    skip("Mock server tests are disabled")

    response = @only_fans_api.fans.list_expired("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::FanListExpiredResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::FanListExpiredResponse::Meta | nil,
        _pagination: Onlyfans::Models::FanListExpiredResponse::Pagination | nil,
        data: Onlyfans::Models::FanListExpiredResponse::Data | nil
      }
    end
  end

  def test_list_latest
    skip("Mock server tests are disabled")

    response = @only_fans_api.fans.list_latest("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::FanListLatestResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::FanListLatestResponse::Meta | nil,
        _pagination: Onlyfans::Models::FanListLatestResponse::Pagination | nil,
        data: Onlyfans::Models::FanListLatestResponse::Data | nil
      }
    end
  end

  def test_list_top
    skip("Mock server tests are disabled")

    response = @only_fans_api.fans.list_top("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::FanListTopResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::FanListTopResponse::Meta | nil,
        data: Onlyfans::Models::FanListTopResponse::Data | nil
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
      response => Onlyfans::Models::FanSetCustomNameResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::FanSetCustomNameResponse::Meta | nil,
        data: Onlyfans::Models::FanSetCustomNameResponse::Data | nil
      }
    end
  end
end

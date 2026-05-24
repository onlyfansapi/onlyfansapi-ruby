# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::SettingsTest < Onlyfansapi::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.settings.retrieve("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::SettingRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SettingRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::SettingRetrieveResponse::Data | nil
      }
    end
  end

  def test_check_username_availability_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.settings.check_username_availability("acct_XXXXXXXXXXXXXXX", username: "MyNewUsername")

    assert_pattern do
      response => Onlyfansapi::Models::SettingCheckUsernameAvailabilityResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SettingCheckUsernameAvailabilityResponse::Meta | nil,
        data: Onlyfansapi::Models::SettingCheckUsernameAvailabilityResponse::Data | nil
      }
    end
  end

  def test_update_profile
    skip("Mock server tests are disabled")

    response = @only_fans_api.settings.update_profile("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::SettingUpdateProfileResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SettingUpdateProfileResponse::Meta | nil,
        data: Onlyfansapi::Models::SettingUpdateProfileResponse::Data | nil
      }
    end
  end

  def test_update_subscription_price_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.settings.update_subscription_price("acct_XXXXXXXXXXXXXXX", price: "4.99")

    assert_pattern do
      response => Onlyfansapi::Models::SettingUpdateSubscriptionPriceResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SettingUpdateSubscriptionPriceResponse::Meta | nil,
        data: Onlyfansapi::Models::SettingUpdateSubscriptionPriceResponse::Data | nil
      }
    end
  end
end

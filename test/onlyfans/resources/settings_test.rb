# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::SettingsTest < Onlyfans::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.settings.retrieve("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::SettingRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SettingRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::SettingRetrieveResponse::Data | nil
      }
    end
  end

  def test_check_username_availability_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.settings.check_username_availability("acct_XXXXXXXXXXXXXXX", username: "MyNewUsername")

    assert_pattern do
      response => Onlyfans::Models::SettingCheckUsernameAvailabilityResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SettingCheckUsernameAvailabilityResponse::Meta | nil,
        data: Onlyfans::Models::SettingCheckUsernameAvailabilityResponse::Data | nil
      }
    end
  end

  def test_update_profile
    skip("Mock server tests are disabled")

    response = @only_fans_api.settings.update_profile("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::SettingUpdateProfileResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SettingUpdateProfileResponse::Meta | nil,
        data: Onlyfans::Models::SettingUpdateProfileResponse::Data | nil
      }
    end
  end

  def test_update_subscription_price_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.settings.update_subscription_price("acct_XXXXXXXXXXXXXXX", price: "4.99")

    assert_pattern do
      response => Onlyfans::Models::SettingUpdateSubscriptionPriceResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SettingUpdateSubscriptionPriceResponse::Meta | nil,
        data: Onlyfans::Models::SettingUpdateSubscriptionPriceResponse::Data | nil
      }
    end
  end
end

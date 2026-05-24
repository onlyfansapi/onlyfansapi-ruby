# frozen_string_literal: true

require_relative "../../../test_helper"

class Onlyfansapi::Test::Resources::SavedForLater::Messages::SettingsTest < Onlyfansapi::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.saved_for_later.messages.settings.retrieve("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::SavedForLater::Messages::SettingRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SavedForLater::Messages::SettingRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::SavedForLater::Messages::SettingRetrieveResponse::Data | nil
      }
    end
  end

  def test_disable_automatic_messaging
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.saved_for_later.messages.settings.disable_automatic_messaging("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::SavedForLater::Messages::SettingDisableAutomaticMessagingResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SavedForLater::Messages::SettingDisableAutomaticMessagingResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]) | nil
      }
    end
  end

  def test_enable_or_update_automatic_messaging_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.saved_for_later.messages.settings.enable_or_update_automatic_messaging(
        "acct_XXXXXXXXXXXXXXX",
        period: 24
      )

    assert_pattern do
      response => Onlyfansapi::Models::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingResponse::Meta | nil,
        data: Onlyfansapi::Models::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingResponse::Data | nil
      }
    end
  end
end

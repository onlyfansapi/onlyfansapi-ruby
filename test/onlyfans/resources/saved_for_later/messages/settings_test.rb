# frozen_string_literal: true

require_relative "../../../test_helper"

class Onlyfans::Test::Resources::SavedForLater::Messages::SettingsTest < Onlyfans::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.saved_for_later.messages.settings.retrieve("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::SavedForLater::Messages::SettingRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SavedForLater::Messages::SettingRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::SavedForLater::Messages::SettingRetrieveResponse::Data | nil
      }
    end
  end

  def test_disable_automatic_messaging
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.saved_for_later.messages.settings.disable_automatic_messaging("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::SavedForLater::Messages::SettingDisableAutomaticMessagingResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SavedForLater::Messages::SettingDisableAutomaticMessagingResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]) | nil
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
      response => Onlyfans::Models::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingResponse::Meta | nil,
        data: Onlyfans::Models::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingResponse::Data | nil
      }
    end
  end
end

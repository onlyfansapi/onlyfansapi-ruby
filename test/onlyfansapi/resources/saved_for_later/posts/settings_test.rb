# frozen_string_literal: true

require_relative "../../../test_helper"

class Onlyfansapi::Test::Resources::SavedForLater::Posts::SettingsTest < Onlyfansapi::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.saved_for_later.posts.settings.retrieve("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Data | nil
      }
    end
  end

  def test_disable_automatic_posting
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.saved_for_later.posts.settings.disable_automatic_posting("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::SavedForLater::Posts::SettingDisableAutomaticPostingResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SavedForLater::Posts::SettingDisableAutomaticPostingResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]) | nil
      }
    end
  end

  def test_enable_or_update_automatic_posting_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.saved_for_later.posts.settings.enable_or_update_automatic_posting(
        "acct_XXXXXXXXXXXXXXX",
        period: 12
      )

    assert_pattern do
      response => Onlyfansapi::Models::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingResponse::Meta | nil,
        data: Onlyfansapi::Models::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingResponse::Data | nil
      }
    end
  end
end

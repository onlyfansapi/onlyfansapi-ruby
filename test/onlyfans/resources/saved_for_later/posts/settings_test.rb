# frozen_string_literal: true

require_relative "../../../test_helper"

class Onlyfans::Test::Resources::SavedForLater::Posts::SettingsTest < Onlyfans::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.saved_for_later.posts.settings.retrieve("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Data | nil
      }
    end
  end

  def test_disable_automatic_posting
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.saved_for_later.posts.settings.disable_automatic_posting("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::SavedForLater::Posts::SettingDisableAutomaticPostingResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SavedForLater::Posts::SettingDisableAutomaticPostingResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]) | nil
      }
    end
  end

  def test_enable_or_update_automatic_posting_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.saved_for_later.posts.settings.enable_or_update_automatic_posting(
        "acct_XXXXXXXXXXXXXXX",
        period: 24
      )

    assert_pattern do
      response => Onlyfans::Models::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingResponse::Meta | nil,
        data: Onlyfans::Models::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingResponse::Data | nil
      }
    end
  end
end

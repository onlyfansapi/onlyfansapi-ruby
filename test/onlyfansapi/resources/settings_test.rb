# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::SettingsTest < Onlyfansapi::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @onlyfansapi.settings.retrieve("acct_XXXXXXXXXXXXXXX")

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

  def test_check_username_exists_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.settings.check_username_exists("acct_XXXXXXXXXXXXXXX", username: "MyNewUsername")

    assert_pattern do
      response => Onlyfansapi::Models::SettingCheckUsernameExistsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SettingCheckUsernameExistsResponse::Meta | nil,
        data: Onlyfansapi::Models::SettingCheckUsernameExistsResponse::Data | nil
      }
    end
  end

  def test_update_profile
    skip("Mock server tests are disabled")

    response = @onlyfansapi.settings.update_profile("acct_XXXXXXXXXXXXXXX")

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
end

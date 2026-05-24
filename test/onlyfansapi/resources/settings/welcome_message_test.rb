# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Settings::WelcomeMessageTest < Onlyfansapi::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.settings.welcome_message.retrieve("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Settings::WelcomeMessageRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Settings::WelcomeMessageRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::Settings::WelcomeMessageRetrieveResponse::Data | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @only_fans_api.settings.welcome_message.update("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Meta | nil,
        data: Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data | nil
      }
    end
  end

  def test_toggle_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.settings.welcome_message.toggle("acct_XXXXXXXXXXXXXXX", enabled: true)

    assert_pattern do
      response => Onlyfansapi::Models::Settings::WelcomeMessageToggleResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Settings::WelcomeMessageToggleResponse::Meta | nil,
        data: Onlyfansapi::Models::Settings::WelcomeMessageToggleResponse::Data | nil
      }
    end
  end
end

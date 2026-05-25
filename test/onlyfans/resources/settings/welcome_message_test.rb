# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Settings::WelcomeMessageTest < Onlyfans::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.settings.welcome_message.retrieve("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Settings::WelcomeMessageRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Settings::WelcomeMessageRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::Settings::WelcomeMessageRetrieveResponse::Data | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @only_fans_api.settings.welcome_message.update("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Settings::WelcomeMessageUpdateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Settings::WelcomeMessageUpdateResponse::Meta | nil,
        data: Onlyfans::Models::Settings::WelcomeMessageUpdateResponse::Data | nil
      }
    end
  end

  def test_toggle_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.settings.welcome_message.toggle("acct_XXXXXXXXXXXXXXX", enabled: true)

    assert_pattern do
      response => Onlyfans::Models::Settings::WelcomeMessageToggleResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Settings::WelcomeMessageToggleResponse::Meta | nil,
        data: Onlyfans::Models::Settings::WelcomeMessageToggleResponse::Data | nil
      }
    end
  end
end

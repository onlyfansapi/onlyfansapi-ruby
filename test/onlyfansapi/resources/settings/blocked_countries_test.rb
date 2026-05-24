# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Settings::BlockedCountriesTest < Onlyfansapi::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.settings.blocked_countries.retrieve("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Data | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.settings.blocked_countries.update("acct_XXXXXXXXXXXXXXX", blocked_countries: ["RU"])

    assert_pattern do
      response => Onlyfansapi::Models::Settings::BlockedCountryUpdateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Settings::BlockedCountryUpdateResponse::Meta | nil,
        data: Onlyfansapi::Models::Settings::BlockedCountryUpdateResponse::Data | nil
      }
    end
  end
end

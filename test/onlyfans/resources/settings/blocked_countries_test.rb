# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Settings::BlockedCountriesTest < Onlyfans::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.settings.blocked_countries.retrieve("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Settings::BlockedCountryRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Data | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.settings.blocked_countries.update("acct_XXXXXXXXXXXXXXX", blocked_countries: ["RU"])

    assert_pattern do
      response => Onlyfans::Models::Settings::BlockedCountryUpdateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Settings::BlockedCountryUpdateResponse::Meta | nil,
        data: Onlyfans::Models::Settings::BlockedCountryUpdateResponse::Data | nil
      }
    end
  end
end

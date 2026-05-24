# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::BankingTest < Onlyfansapi::Test::ResourceTest
  def test_list_available_payout_systems
    skip("Mock server tests are disabled")

    response = @only_fans_api.banking.list_available_payout_systems("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Meta | nil,
        data: Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Data | nil
      }
    end
  end

  def test_list_countries
    skip("Mock server tests are disabled")

    response = @only_fans_api.banking.list_countries("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::BankingListCountriesResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::BankingListCountriesResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::BankingListCountriesResponse::Data]) | nil
      }
    end
  end
end

# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::BankingTest < Onlyfans::Test::ResourceTest
  def test_list_available_payout_systems
    skip("Mock server tests are disabled")

    response = @only_fans_api.banking.list_available_payout_systems("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::BankingListAvailablePayoutSystemsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta | nil,
        data: Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Data | nil
      }
    end
  end

  def test_list_countries
    skip("Mock server tests are disabled")

    response = @only_fans_api.banking.list_countries("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::BankingListCountriesResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::BankingListCountriesResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::BankingListCountriesResponse::Data]) | nil
      }
    end
  end
end

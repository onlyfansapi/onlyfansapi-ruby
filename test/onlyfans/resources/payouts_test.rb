# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::PayoutsTest < Onlyfans::Test::ResourceTest
  def test_list_requests
    skip("Mock server tests are disabled")

    response = @only_fans_api.payouts.list_requests("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::PayoutListRequestsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::PayoutListRequestsResponse::Meta | nil,
        data: Onlyfans::Models::PayoutListRequestsResponse::Data | nil
      }
    end
  end

  def test_request_manual_withdrawal_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.payouts.request_manual_withdrawal("acct_XXXXXXXXXXXXXXX", amount: 50)

    assert_pattern do
      response => Onlyfans::Models::PayoutRequestManualWithdrawalResponse
    end

    assert_pattern do
      case response
      in Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0
      in Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1
      end
    end
  end

  def test_retrieve_balances
    skip("Mock server tests are disabled")

    response = @only_fans_api.payouts.retrieve_balances("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::PayoutRetrieveBalancesResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::PayoutRetrieveBalancesResponse::Meta | nil,
        data: Onlyfans::Models::PayoutRetrieveBalancesResponse::Data | nil
      }
    end
  end

  def test_retrieve_earning_statistics
    skip("Mock server tests are disabled")

    response = @only_fans_api.payouts.retrieve_earning_statistics("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta | nil,
        data: Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data | nil
      }
    end
  end

  def test_retrieve_eligibility
    skip("Mock server tests are disabled")

    response = @only_fans_api.payouts.retrieve_eligibility("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::PayoutRetrieveEligibilityResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::PayoutRetrieveEligibilityResponse::Meta | nil,
        data: Onlyfans::Models::PayoutRetrieveEligibilityResponse::Data | nil
      }
    end
  end

  def test_update_frequency_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.payouts.update_frequency("acct_XXXXXXXXXXXXXXX", frequency: :manual)

    assert_pattern do
      response => Onlyfans::Models::PayoutUpdateFrequencyResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::PayoutUpdateFrequencyResponse::Meta | nil,
        data: Onlyfans::Models::PayoutUpdateFrequencyResponse::Data | nil
      }
    end
  end
end

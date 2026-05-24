# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::PayoutsTest < Onlyfansapi::Test::ResourceTest
  def test_list_payout_requests
    skip("Mock server tests are disabled")

    response = @onlyfansapi.payouts.list_payout_requests("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::PayoutListPayoutRequestsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Meta | nil,
        data: Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Data | nil
      }
    end
  end

  def test_request_manual_withdrawal_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.payouts.request_manual_withdrawal("acct_XXXXXXXXXXXXXXX", amount: 50)

    assert_pattern do
      response => Onlyfansapi::Models::PayoutRequestManualWithdrawalResponse
    end

    assert_pattern do
      case response
      in Onlyfansapi::Models::PayoutRequestManualWithdrawalResponse::UnionMember0
      in Onlyfansapi::Models::PayoutRequestManualWithdrawalResponse::UnionMember1
      end
    end
  end

  def test_retrieve_balances
    skip("Mock server tests are disabled")

    response = @onlyfansapi.payouts.retrieve_balances("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::PayoutRetrieveBalancesResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta | nil,
        data: Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Data | nil
      }
    end
  end

  def test_retrieve_earning_statistics
    skip("Mock server tests are disabled")

    response = @onlyfansapi.payouts.retrieve_earning_statistics("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta | nil,
        data: Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data | nil
      }
    end
  end

  def test_retrieve_eligibility
    skip("Mock server tests are disabled")

    response = @onlyfansapi.payouts.retrieve_eligibility("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::PayoutRetrieveEligibilityResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Meta | nil,
        data: Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Data | nil
      }
    end
  end

  def test_update_payout_frequency_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.payouts.update_payout_frequency("acct_XXXXXXXXXXXXXXX", frequency: :manual)

    assert_pattern do
      response => Onlyfansapi::Models::PayoutUpdatePayoutFrequencyResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::PayoutUpdatePayoutFrequencyResponse::Meta | nil,
        data: Onlyfansapi::Models::PayoutUpdatePayoutFrequencyResponse::Data | nil
      }
    end
  end
end

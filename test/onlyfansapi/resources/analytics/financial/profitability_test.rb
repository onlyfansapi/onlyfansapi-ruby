# frozen_string_literal: true

require_relative "../../../test_helper"

class Onlyfansapi::Test::Resources::Analytics::Financial::ProfitabilityTest < Onlyfansapi::Test::ResourceTest
  def test_get_history_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.analytics.financial.profitability.get_history(
        "acct_XXXXXXXXXXXXXXX",
        account_prefixed_id: "acct_abc123"
      )

    assert_pattern do
      response => ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Analytics::Financial::ProfitabilityGetHistoryResponseItem])
    end
  end

  def test_get_profitability_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.analytics.financial.profitability.get_profitability(
        account_ids: %w[acc_abc123 acc_def456],
        month: 6,
        year: 2024
      )

    assert_pattern do
      response => ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Analytics::Financial::ProfitabilityGetProfitabilityResponseItem])
    end
  end
end

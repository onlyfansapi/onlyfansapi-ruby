# frozen_string_literal: true

require_relative "../../../test_helper"

class Onlyfans::Test::Resources::Analytics::Financial::ProfitabilityTest < Onlyfans::Test::ResourceTest
  def test_get_history_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.analytics.financial.profitability.get_history(
        "acct_XXXXXXXXXXXXXXX",
        account_prefixed_id: "acct_abc123"
      )

    assert_pattern do
      response => Onlyfans::Models::Analytics::Financial::ProfitabilityGetHistoryResponse
    end

    assert_pattern do
      response => {
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Analytics::Financial::ProfitabilityGetHistoryResponse::Data]) | nil
      }
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
      response => Onlyfans::Models::Analytics::Financial::ProfitabilityGetProfitabilityResponse
    end

    assert_pattern do
      response => {
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Analytics::Financial::ProfitabilityGetProfitabilityResponse::Data]) | nil
      }
    end
  end
end

# frozen_string_literal: true

require_relative "../../../test_helper"

class Onlyfans::Test::Resources::Analytics::Financial::TransactionsTest < Onlyfans::Test::ResourceTest
  def test_get_by_type_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.analytics.financial.transactions.get_by_type(
        account_ids: %w[acc_abc123 acc_def456],
        end_date: "2024-12-31",
        start_date: "2024-01-01"
      )

    assert_pattern do
      response => ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Analytics::Financial::TransactionGetByTypeResponseItem])
    end
  end

  def test_get_summary_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.analytics.financial.transactions.get_summary(
        account_ids: %w[acc_abc123 acc_def456],
        end_date: "2024-12-31",
        start_date: "2024-01-01"
      )

    assert_pattern do
      response => Onlyfans::Models::Analytics::Financial::TransactionGetSummaryResponse
    end

    assert_pattern do
      response => {
        disputed_count: Integer | nil,
        refunded_count: Integer | nil,
        succeeded_count: Integer | nil,
        total_fees: Float | nil,
        total_gross: Float | nil,
        total_net: Float | nil
      }
    end
  end
end

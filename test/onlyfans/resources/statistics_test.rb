# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::StatisticsTest < Onlyfans::Test::ResourceTest
  def test_calculate_total_transactions_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.statistics.calculate_total_transactions(
        "acct_XXXXXXXXXXXXXXX",
        end_date: "2025-03-31 23:59:59",
        start_date: "2025-01-01 00:00:00"
      )

    assert_pattern do
      response => Onlyfans::Models::StatisticCalculateTotalTransactionsResponse
    end

    assert_pattern do
      response => {
        total_amount: Float | nil,
        total_transactions: Integer | nil
      }
    end
  end

  def test_get_overview
    skip("Mock server tests are disabled")

    response = @only_fans_api.statistics.get_overview("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::StatisticGetOverviewResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::StatisticGetOverviewResponse::Meta | nil,
        data: Onlyfans::Models::StatisticGetOverviewResponse::Data | nil
      }
    end
  end

  def test_get_subscriber_metrics_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.statistics.get_subscriber_metrics(
        "acct_XXXXXXXXXXXXXXX",
        end_date: "2025-03-31 23:59:59",
        start_date: "2025-01-01 00:00:00"
      )

    assert_pattern do
      response => Onlyfans::Models::StatisticGetSubscriberMetricsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Meta | nil,
        data: Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Data | nil
      }
    end
  end
end

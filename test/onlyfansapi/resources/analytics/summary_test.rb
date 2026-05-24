# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Analytics::SummaryTest < Onlyfansapi::Test::ResourceTest
  def test_get_earnings_overview_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.analytics.summary.get_earnings_overview(
        account_ids: %w[acc_abc123 acc_def456],
        end_date: "2024-12-31",
        start_date: "2024-01-01"
      )

    assert_pattern do
      response => Onlyfansapi::Models::Analytics::SummaryGetEarningsOverviewResponse
    end

    assert_pattern do
      response => {
        messages: Float | nil,
        posts: Float | nil,
        streams: Float | nil,
        subscriptions: Float | nil,
        tips: Float | nil,
        total_accounts: Integer | nil,
        total_earnings: Float | nil,
        total_images: Integer | nil,
        total_messages: Integer | nil,
        total_videos: Integer | nil
      }
    end
  end

  def test_get_historical_performance
    skip("Mock server tests are disabled")

    response = @only_fans_api.analytics.summary.get_historical_performance

    assert_pattern do
      response => ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Analytics::SummaryGetHistoricalPerformanceResponseItem])
    end
  end

  def test_get_period_comparison_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.analytics.summary.get_period_comparison(
        account_ids: %w[acc_abc123 acc_def456],
        period_a: {end: "2024-03-31", start: "2024-01-01"},
        period_b: {end: "2024-06-30", start: "2024-04-01"}
      )

    assert_pattern do
      response => Onlyfansapi::Models::Analytics::SummaryGetPeriodComparisonResponse
    end

    assert_pattern do
      response => {
        breakdown: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]) | nil,
        chart_data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]) | nil,
        period_a_label: String | nil,
        period_b_label: String | nil,
        summary: Onlyfansapi::Models::Analytics::SummaryGetPeriodComparisonResponse::Summary | nil
      }
    end
  end
end

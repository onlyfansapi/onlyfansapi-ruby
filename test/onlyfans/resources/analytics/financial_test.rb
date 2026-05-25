# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Analytics::FinancialTest < Onlyfans::Test::ResourceTest
  def test_get_forecast_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.analytics.financial.get_forecast(
        account_ids: %w[acc_abc123 acc_def456],
        forecast_days: 30,
        historical_days: 90,
        metric: :revenue,
        model: :linear_regression
      )

    assert_pattern do
      response => Onlyfans::Models::Analytics::FinancialGetForecastResponse
    end

    assert_pattern do
      response => {
        forecast: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Analytics::FinancialGetForecastResponse::Forecast]) | nil,
        historical: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Analytics::FinancialGetForecastResponse::Historical]) | nil,
        metric: String | nil,
        model: String | nil
      }
    end
  end
end

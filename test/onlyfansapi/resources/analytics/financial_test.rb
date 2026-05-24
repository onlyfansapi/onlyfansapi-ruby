# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Analytics::FinancialTest < Onlyfansapi::Test::ResourceTest
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
      response => Onlyfansapi::Models::Analytics::FinancialGetForecastResponse
    end

    assert_pattern do
      response => {
        forecast: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Analytics::FinancialGetForecastResponse::Forecast]) | nil,
        historical: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Analytics::FinancialGetForecastResponse::Historical]) | nil,
        metric: String | nil,
        model: String | nil
      }
    end
  end
end

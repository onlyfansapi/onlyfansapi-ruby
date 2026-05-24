# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Statistics::StatementsTest < Onlyfansapi::Test::ResourceTest
  def test_get_earnings_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.statistics.statements.get_earnings(
        "acct_XXXXXXXXXXXXXXX",
        start_date: "2025-01-01 00:00:00"
      )

    assert_pattern do
      response => Onlyfansapi::Models::Statistics::StatementGetEarningsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Statistics::StatementGetEarningsResponse::Meta | nil,
        data: Onlyfansapi::Models::Statistics::StatementGetEarningsResponse::Data | nil
      }
    end
  end
end

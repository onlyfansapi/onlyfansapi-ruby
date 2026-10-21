# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Statistics::StatementsTest < Onlyfans::Test::ResourceTest
  def test_get_earnings_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.statistics.statements.get_earnings(
        "acct_XXXXXXXXXXXXXXX",
        end_date: "2025-03-31 23:59:59",
        start_date: "2025-01-01 00:00:00"
      )

    assert_pattern do
      response => Onlyfans::Models::Statistics::StatementGetEarningsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Statistics::StatementGetEarningsResponse::Meta | nil,
        data: Onlyfans::Models::Statistics::StatementGetEarningsResponse::Data | nil
      }
    end
  end
end

# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Fans::SummaryTest < Onlyfans::Test::ResourceTest
  def test_generate_summary_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.fans.summary.generate_summary("fan_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Fans::SummaryGenerateSummaryResponse
    end

    assert_pattern do
      response => {
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_get_summary_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.fans.summary.get_summary("fan_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Fans::SummaryGetSummaryResponse
    end

    assert_pattern do
      response => {
        analyzed_message_count: Integer | nil,
        custom_fields: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Fans::SummaryGetSummaryResponse::CustomField]) | nil,
        error_message: String | nil,
        last_analyzed_at: String | nil,
        last_buy_date: String | nil,
        status: String | nil,
        summary_data: Onlyfans::Models::Fans::SummaryGetSummaryResponse::SummaryData | nil
      }
    end
  end
end

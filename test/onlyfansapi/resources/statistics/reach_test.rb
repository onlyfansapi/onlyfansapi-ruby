# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Statistics::ReachTest < Onlyfansapi::Test::ResourceTest
  def test_get_profile_visitors_required_params
    skip("Mock server tests are disabled")

    response =
      @onlyfansapi.statistics.reach.get_profile_visitors(
        "acct_XXXXXXXXXXXXXXX",
        end_date: "2025-03-31 23:59:59",
        start_date: "2025-01-01 00:00:00"
      )

    assert_pattern do
      response => Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse
    end

    assert_pattern do
      case response
      in Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0
      in Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1
      in Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2
      end
    end
  end
end

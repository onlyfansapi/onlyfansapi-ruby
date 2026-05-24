# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Statistics
      class Reach
        # Some parameter documentations has been truncated, see
        # {Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsParams} for more
        # details.
        #
        # Get the number of profile visitors for a given period.
        #
        # @overload get_profile_visitors(account, end_date:, start_date:, filter: nil, limit: nil, type: nil, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param end_date [String] The end date for the period.
        #
        # @param start_date [String] The start date for the period
        #
        # @param filter [Symbol, Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsParams::Filter, nil] Optionally, filter the results by `chart` or `topCountries`. See example respons
        #
        # @param limit [Integer, nil] Number of results to return
        #
        # @param type [Symbol, Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsParams::Type, nil] Filter all / users / guests
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0, Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1, Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2]
        #
        # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsParams
        def get_profile_visitors(account, params)
          parsed, options = Onlyfansapi::Statistics::ReachGetProfileVisitorsParams.dump_request(params)
          query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["api/%1$s/statistics/reach/profile-visitors", account],
            query: query,
            model: Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Onlyfansapi::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end

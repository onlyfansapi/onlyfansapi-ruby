# frozen_string_literal: true

module Onlyfans
  module Resources
    class Engagement
      class Messages
        class DirectMessages
          # Some parameter documentations has been truncated, see
          # {Onlyfans::Models::Engagement::Messages::DirectMessageListParams} for more
          # details.
          #
          # List sent direct messages with engagement stats (sent, viewed, purchased, etc.).
          #
          # @overload list(account, end_date: nil, limit: nil, offset: nil, query: nil, start_date: nil, request_options: {})
          #
          # @param account [String] The Account ID
          #
          # @param end_date [String] The latest message to retrieve. Keep empty to get all. MUST BE DATE AFTER `start
          #
          # @param limit [Integer] Number of messages to return (default = 10)
          #
          # @param offset [Integer] Optional offset for manual pagination.
          #
          # @param query [String] Optionally, filter by message text.
          #
          # @param start_date [String] The earliest message to retrieve. Keep empty to get all.
          #
          # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse]
          #
          # @see Onlyfans::Models::Engagement::Messages::DirectMessageListParams
          def list(account, params = {})
            parsed, options = Onlyfans::Engagement::Messages::DirectMessageListParams.dump_request(params)
            query = Onlyfans::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["api/%1$s/engagement/messages/direct-messages", account],
              query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
              model: Onlyfans::Models::Engagement::Messages::DirectMessageListResponse,
              options: options
            )
          end

          # Get engagement chart metrics for direct messages: sent count and purchase amount
          # over time.
          #
          # @overload chart(account, end_date: nil, start_date: nil, with_total: nil, request_options: {})
          #
          # @param account [String] The Account ID
          #
          # @param end_date [String] End of the chart window in `Y-m-d H:i:s` format. Must be after `startDate`.
          #
          # @param start_date [String] Start of the chart window in `Y-m-d H:i:s` format.
          #
          # @param with_total [Boolean] Include `total` and `delta` aggregates in the response. Defaults to `true`.
          #
          # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfans::Models::Engagement::Messages::DirectMessageChartResponse]
          #
          # @see Onlyfans::Models::Engagement::Messages::DirectMessageChartParams
          def chart(account, params = {})
            parsed, options = Onlyfans::Engagement::Messages::DirectMessageChartParams.dump_request(params)
            query = Onlyfans::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["api/%1$s/engagement/messages/direct-messages/chart", account],
              query: query.transform_keys(
                end_date: "endDate",
                start_date: "startDate",
                with_total: "withTotal"
              ),
              model: Onlyfans::Models::Engagement::Messages::DirectMessageChartResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Onlyfans::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end

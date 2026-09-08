# frozen_string_literal: true

module Onlyfans
  module Resources
    class Engagement
      class Messages
        class MassMessages
          # Some parameter documentations has been truncated, see
          # {Onlyfans::Models::Engagement::Messages::MassMessageListParams} for more
          # details.
          #
          # List sent mass messages with engagement stats (sent, viewed, purchased, etc.).
          #
          # @overload list(account, end_date: nil, limit: nil, query: nil, start_date: nil, request_options: {})
          #
          # @param account [String] The Account ID
          #
          # @param end_date [String] The latest message to retrieve. Keep empty to get all. It must be after `startDa
          #
          # @param limit [Integer] Number of messages to return (default = 10)
          #
          # @param query [String] Optionally, filter by message text.
          #
          # @param start_date [String] The earliest message to retrieve. Keep empty to get all.
          #
          # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfans::Models::Engagement::Messages::MassMessageListResponse]
          #
          # @see Onlyfans::Models::Engagement::Messages::MassMessageListParams
          def list(account, params = {})
            parsed, options = Onlyfans::Engagement::Messages::MassMessageListParams.dump_request(params)
            query = Onlyfans::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["api/%1$s/engagement/messages/mass-messages", account],
              query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
              model: Onlyfans::Models::Engagement::Messages::MassMessageListResponse,
              options: options
            )
          end

          # Get engagement chart metrics for mass messages: sent count and purchase amount
          # over time.
          #
          # @overload chart(account, end_date: nil, start_date: nil, with_total: nil, request_options: {})
          #
          # @param account [String] The Account ID
          #
          # @param end_date [String] End of the chart window in `Y-m-d H:i:s` format. It must be after `startDate`.
          #
          # @param start_date [String] Start of the chart window in `Y-m-d H:i:s` format.
          #
          # @param with_total [Boolean] Include `total` and `delta` aggregates in the response. Defaults to `true`.
          #
          # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfans::Models::Engagement::Messages::MassMessageChartResponse]
          #
          # @see Onlyfans::Models::Engagement::Messages::MassMessageChartParams
          def chart(account, params = {})
            parsed, options = Onlyfans::Engagement::Messages::MassMessageChartParams.dump_request(params)
            query = Onlyfans::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["api/%1$s/engagement/messages/mass-messages/chart", account],
              query: query.transform_keys(
                end_date: "endDate",
                start_date: "startDate",
                with_total: "withTotal"
              ),
              model: Onlyfans::Models::Engagement::Messages::MassMessageChartResponse,
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

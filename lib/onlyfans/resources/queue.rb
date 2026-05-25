# frozen_string_literal: true

module Onlyfans
  module Resources
    class Queue
      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::QueueListParams} for more details.
      #
      # List posts and messages in the queue.
      #
      # @overload list(account, limit:, publish_date_end:, publish_date_start:, timezone:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param limit [Integer] Maximum number of queue items to return (default = 20)
      #
      # @param publish_date_end [String] Latest publish date to return
      #
      # @param publish_date_start [String] Earliest publish date to return (must be at least today)
      #
      # @param timezone [String] Time timezone of the provided dates. [View available timezone values](https://ww
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::QueueListResponse]
      #
      # @see Onlyfans::Models::QueueListParams
      def list(account, params)
        parsed, options = Onlyfans::QueueListParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/queue", account],
          query: query.transform_keys(
            publish_date_end: "publishDateEnd",
            publish_date_start: "publishDateStart"
          ),
          model: Onlyfans::Models::QueueListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::QueueCountParams} for more details.
      #
      # Count posts and messages in the queue.
      #
      # @overload count(account, publish_date_end:, publish_date_start:, timezone:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param publish_date_end [String] Latest publish date to count to
      #
      # @param publish_date_start [String] Earliest publish date to count from (must be at least today)
      #
      # @param timezone [String] Time timezone of the provided dates. [View available timezone values](https://ww
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::QueueCountResponse]
      #
      # @see Onlyfans::Models::QueueCountParams
      def count(account, params)
        parsed, options = Onlyfans::QueueCountParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/queue/counts", account],
          query: query.transform_keys(
            publish_date_end: "publishDateEnd",
            publish_date_start: "publishDateStart"
          ),
          model: Onlyfans::Models::QueueCountResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::QueuePublishParams} for more details.
      #
      # Publish a queue item or "saved for later" item (post or mass message). This
      # means that the item will be sent immediately, regardless of its scheduled date.
      #
      # @overload publish(queue_id, account:, request_options: {})
      #
      # @param queue_id [String] The ID of the message queue item. Can be retrieved from Queue or Mass Messaging
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::QueuePublishResponse]
      #
      # @see Onlyfans::Models::QueuePublishParams
      def publish(queue_id, params)
        parsed, options = Onlyfans::QueuePublishParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :put,
          path: ["api/%1$s/queue/%2$s/publish", account, queue_id],
          model: Onlyfans::Models::QueuePublishResponse,
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

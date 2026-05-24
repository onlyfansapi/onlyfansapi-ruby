# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Engagement
      class Messages
        # @return [Onlyfansapi::Resources::Engagement::Messages::MassMessages]
        attr_reader :mass_messages

        # @return [Onlyfansapi::Resources::Engagement::Messages::DirectMessages]
        attr_reader :direct_messages

        # List buyers for a specific message.
        #
        # @overload get_message_buyers(message_id, account:, limit: nil, marker: nil, offset: nil, skip_users: nil, skip_users_dups: nil, request_options: {})
        #
        # @param message_id [String] Path param: The ID of the message.
        #
        # @param account [String] Path param: The Account ID
        #
        # @param limit [Integer] Query param: Number of buyers to return (default = 10)
        #
        # @param marker [Integer] Query param: Marker for pagination
        #
        # @param offset [Integer] Query param: Offset for pagination (default = 0)
        #
        # @param skip_users [String] Query param: Optional flag for subsequent pages (example: all)
        #
        # @param skip_users_dups [Integer] Query param: Skip duplicate users in results (0/1). Default = 1
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse]
        #
        # @see Onlyfansapi::Models::Engagement::MessageGetMessageBuyersParams
        def get_message_buyers(message_id, params)
          parsed, options = Onlyfansapi::Engagement::MessageGetMessageBuyersParams.dump_request(params)
          query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/engagement/messages/%2$s/buyers", account, message_id],
            query: query,
            model: Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Onlyfansapi::Models::Engagement::MessageGetTopMessageParams} for more details.
        #
        # Get the top performing message by purchases in the selected timeframe.
        #
        # @overload get_top_message(account, end_date: nil, start_date: nil, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param end_date [String] The end date for the period. Keep empty to retrieve until now. MUST BE DATE AFTE
        #
        # @param start_date [String] The start date for the period. Keep empty to retrieve from the model start date.
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Engagement::MessageGetTopMessageResponse]
        #
        # @see Onlyfansapi::Models::Engagement::MessageGetTopMessageParams
        def get_top_message(account, params = {})
          parsed, options = Onlyfansapi::Engagement::MessageGetTopMessageParams.dump_request(params)
          query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["api/%1$s/engagement/messages/top-message", account],
            query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
            model: Onlyfansapi::Models::Engagement::MessageGetTopMessageResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Onlyfansapi::Client]
        def initialize(client:)
          @client = client
          @mass_messages = Onlyfansapi::Resources::Engagement::Messages::MassMessages.new(client: client)
          @direct_messages = Onlyfansapi::Resources::Engagement::Messages::DirectMessages.new(client: client)
        end
      end
    end
  end
end

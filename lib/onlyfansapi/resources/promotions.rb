# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Promotions
      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::PromotionCreateParams} for more details.
      #
      # Create a new promotion for the account.
      #
      # @overload create(account, discount:, expiration_days:, offer_limit:, type:, free_trial_days: nil, message: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param discount [Integer] The discount percentage for the promotion's first month. Set to 100 to make this
      #
      # @param expiration_days [Integer] In how many days this offer will expire. Set to 0 to make this promotion infinit
      #
      # @param offer_limit [Integer] Limit how many people can claim this offer. Set to 0 for no limits.
      #
      # @param type [Symbol, Onlyfansapi::Models::PromotionCreateParams::Type] Whether this promotion should apply to new subscribers, expired subscribers, or
      #
      # @param free_trial_days [Integer] Required only when discount is 100. Sets the duration (in days) of the free tria
      #
      # @param message [String] Optionally, provide a message for this promotion.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PromotionCreateResponse]
      #
      # @see Onlyfansapi::Models::PromotionCreateParams
      def create(account, params)
        parsed, options = Onlyfansapi::PromotionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/promotions", account],
          body: parsed,
          model: Onlyfansapi::Models::PromotionCreateResponse,
          options: options
        )
      end

      # List all promotions for the account.
      #
      # @overload list(account, limit: nil, offset: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param limit [Integer] The number of promotions to return. Default `10`
      #
      # @param offset [Integer] The offset used for pagination. Default `0`
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PromotionListResponse]
      #
      # @see Onlyfansapi::Models::PromotionListParams
      def list(account, params = {})
        parsed, options = Onlyfansapi::PromotionListParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/promotions", account],
          query: query,
          model: Onlyfansapi::Models::PromotionListResponse,
          options: options
        )
      end

      # Delete a promotion for the account.
      #
      # @overload delete(promotion_id, account:, request_options: {})
      #
      # @param promotion_id [String] The ID of the promotion to delete.
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PromotionDeleteResponse]
      #
      # @see Onlyfansapi::Models::PromotionDeleteParams
      def delete(promotion_id, params)
        parsed, options = Onlyfansapi::PromotionDeleteParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/promotions/%2$s", account, promotion_id],
          model: Onlyfansapi::Models::PromotionDeleteResponse,
          options: options
        )
      end

      # Stop an active promotion for the account.
      #
      # @overload stop(promotion_id, account:, request_options: {})
      #
      # @param promotion_id [String] The ID of the promotion to stop.
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PromotionStopResponse]
      #
      # @see Onlyfansapi::Models::PromotionStopParams
      def stop(promotion_id, params)
        parsed, options = Onlyfansapi::PromotionStopParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/%1$s/promotions/%2$s/stop", account, promotion_id],
          model: Onlyfansapi::Models::PromotionStopResponse,
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

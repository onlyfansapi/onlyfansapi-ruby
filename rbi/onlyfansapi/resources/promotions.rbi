# typed: strong

module Onlyfansapi
  module Resources
    class Promotions
      # Create a new promotion for the account.
      sig do
        params(
          account: String,
          discount: Integer,
          expiration_days: Integer,
          offer_limit: Integer,
          type: Onlyfansapi::PromotionCreateParams::Type::OrSymbol,
          free_trial_days: Integer,
          message: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::PromotionCreateResponse)
      end
      def create(
        # The Account ID
        account,
        # The discount percentage for the promotion's first month. Set to 100 to make this
        # promotion a Free Trial.
        discount:,
        # In how many days this offer will expire. Set to 0 to make this promotion
        # infinite.
        expiration_days:,
        # Limit how many people can claim this offer. Set to 0 for no limits.
        offer_limit:,
        # Whether this promotion should apply to new subscribers, expired subscribers, or
        # both. **IMPORTANT: when set to new_and_expired, the OF will create two separate
        # promotions.**
        type:,
        # Required only when discount is 100. Sets the duration (in days) of the free
        # trial. Accepted 1-30
        free_trial_days: nil,
        # Optionally, provide a message for this promotion.
        message: nil,
        request_options: {}
      )
      end

      # List all promotions for the account.
      sig do
        params(
          account: String,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::PromotionListResponse)
      end
      def list(
        # The Account ID
        account,
        # The number of promotions to return. Default `10`
        limit: nil,
        # The offset used for pagination. Default `0`
        offset: nil,
        request_options: {}
      )
      end

      # Delete a promotion for the account.
      sig do
        params(
          promotion_id: String,
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::PromotionDeleteResponse)
      end
      def delete(
        # The ID of the promotion to delete.
        promotion_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Stop an active promotion for the account.
      sig do
        params(
          promotion_id: String,
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::PromotionStopResponse)
      end
      def stop(
        # The ID of the promotion to stop.
        promotion_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

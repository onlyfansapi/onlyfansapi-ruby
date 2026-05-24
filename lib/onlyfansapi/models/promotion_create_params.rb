# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Promotions#create
    class PromotionCreateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute discount
      #   The discount percentage for the promotion's first month. Set to 100 to make this
      #   promotion a Free Trial.
      #
      #   @return [Integer]
      required :discount, Integer

      # @!attribute expiration_days
      #   In how many days this offer will expire. Set to 0 to make this promotion
      #   infinite.
      #
      #   @return [Integer]
      required :expiration_days, Integer, api_name: :expirationDays

      # @!attribute offer_limit
      #   Limit how many people can claim this offer. Set to 0 for no limits.
      #
      #   @return [Integer]
      required :offer_limit, Integer, api_name: :offerLimit

      # @!attribute type
      #   Whether this promotion should apply to new subscribers, expired subscribers, or
      #   both. **IMPORTANT: when set to new_and_expired, the OF will create two separate
      #   promotions.**
      #
      #   @return [Symbol, Onlyfansapi::Models::PromotionCreateParams::Type]
      required :type, enum: -> { Onlyfansapi::PromotionCreateParams::Type }

      # @!attribute free_trial_days
      #   Required only when discount is 100. Sets the duration (in days) of the free
      #   trial. Accepted 1-30
      #
      #   @return [Integer, nil]
      optional :free_trial_days, Integer, api_name: :freeTrialDays

      # @!attribute message
      #   Optionally, provide a message for this promotion.
      #
      #   @return [String, nil]
      optional :message, String

      # @!method initialize(account:, discount:, expiration_days:, offer_limit:, type:, free_trial_days: nil, message: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::PromotionCreateParams} for more details.
      #
      #   @param account [String]
      #
      #   @param discount [Integer] The discount percentage for the promotion's first month. Set to 100 to make this
      #
      #   @param expiration_days [Integer] In how many days this offer will expire. Set to 0 to make this promotion infinit
      #
      #   @param offer_limit [Integer] Limit how many people can claim this offer. Set to 0 for no limits.
      #
      #   @param type [Symbol, Onlyfansapi::Models::PromotionCreateParams::Type] Whether this promotion should apply to new subscribers, expired subscribers, or
      #
      #   @param free_trial_days [Integer] Required only when discount is 100. Sets the duration (in days) of the free tria
      #
      #   @param message [String] Optionally, provide a message for this promotion.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # Whether this promotion should apply to new subscribers, expired subscribers, or
      # both. **IMPORTANT: when set to new_and_expired, the OF will create two separate
      # promotions.**
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        NEW = :new
        EXPIRED = :expired
        NEW_AND_EXPIRED = :new_and_expired

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

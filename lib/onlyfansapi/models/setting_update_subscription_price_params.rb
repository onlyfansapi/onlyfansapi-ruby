# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Settings#update_subscription_price
    class SettingUpdateSubscriptionPriceParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute price
      #   The new subscription price. Accepts `0`, `"free"`, or a number between 4.99
      #   and 200.
      #
      #   @return [String]
      required :price, String

      # @!method initialize(account:, price:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::SettingUpdateSubscriptionPriceParams} for more details.
      #
      #   @param account [String]
      #
      #   @param price [String] The new subscription price. Accepts `0`, `"free"`, or a number between 4.99 and
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

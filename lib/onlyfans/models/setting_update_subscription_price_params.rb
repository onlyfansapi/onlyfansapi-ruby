# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Settings#update_subscription_price
    class SettingUpdateSubscriptionPriceParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

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
      #   {Onlyfans::Models::SettingUpdateSubscriptionPriceParams} for more details.
      #
      #   @param account [String]
      #
      #   @param price [String] The new subscription price. Accepts `0`, `"free"`, or a number between 4.99 and
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

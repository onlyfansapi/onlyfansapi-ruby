# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Notifications
      # @see Onlyfansapi::Resources::Notifications::TabsOrder#update
      class TabsOrderUpdateParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute tabs
        #   Array of tab keys. Must include exactly these: all, subscriptions, onlyfans,
        #   purchases, tips, tags, comments, mentions, likes, promotions.
        #
        #   @return [Array<String>]
        required :tabs, Onlyfansapi::Internal::Type::ArrayOf[String]

        # @!method initialize(account:, tabs:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Onlyfansapi::Models::Notifications::TabsOrderUpdateParams} for more details.
        #
        #   @param account [String]
        #
        #   @param tabs [Array<String>] Array of tab keys. Must include exactly these: all, subscriptions, onlyfans, pur
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

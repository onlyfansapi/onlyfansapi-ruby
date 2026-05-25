# frozen_string_literal: true

module Onlyfans
  module Models
    module Notifications
      # @see Onlyfans::Resources::Notifications::TabsOrder#update
      class TabsOrderUpdateParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute tabs
        #   Array of tab keys. Must include exactly these: all, subscriptions, onlyfans,
        #   purchases, tips, tags, comments, mentions, likes, promotions.
        #
        #   @return [Array<String>]
        required :tabs, Onlyfans::Internal::Type::ArrayOf[String]

        # @!method initialize(account:, tabs:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Onlyfans::Models::Notifications::TabsOrderUpdateParams} for more details.
        #
        #   @param account [String]
        #
        #   @param tabs [Array<String>] Array of tab keys. Must include exactly these: all, subscriptions, onlyfans, pur
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

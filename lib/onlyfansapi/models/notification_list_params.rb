# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Notifications#list
    class NotificationListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute from_id
      #   Used for pagination. This value should be the ID of the previous response's last
      #   notification.
      #
      #   @return [Integer, nil]
      optional :from_id, Integer

      # @!attribute limit
      #   The number of notifications. Default `10`
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute skip_users
      #   Whether to skip user details. Default `all`
      #
      #   @return [Symbol, Onlyfansapi::Models::NotificationListParams::SkipUsers, nil]
      optional :skip_users, enum: -> { Onlyfansapi::NotificationListParams::SkipUsers }

      # @!attribute type
      #   Filter notifications by a specific type
      #
      #   @return [Symbol, Onlyfansapi::Models::NotificationListParams::Type, nil]
      optional :type, enum: -> { Onlyfansapi::NotificationListParams::Type }

      # @!method initialize(account:, from_id: nil, limit: nil, skip_users: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::NotificationListParams} for more details.
      #
      #   @param account [String]
      #
      #   @param from_id [Integer] Used for pagination. This value should be the ID of the previous response's last
      #
      #   @param limit [Integer] The number of notifications. Default `10`
      #
      #   @param skip_users [Symbol, Onlyfansapi::Models::NotificationListParams::SkipUsers] Whether to skip user details. Default `all`
      #
      #   @param type [Symbol, Onlyfansapi::Models::NotificationListParams::Type] Filter notifications by a specific type
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # Whether to skip user details. Default `all`
      module SkipUsers
        extend Onlyfansapi::Internal::Type::Enum

        ALL = :all
        NONE = :none

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter notifications by a specific type
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        ALL = :all
        SUBSCRIPTIONS = :subscriptions
        ONLYFANS = :onlyfans
        PURCHASES = :purchases
        TIPS = :tips
        TAGS = :tags
        COMMENTS = :comments
        MENTIONS = :mentions
        LIKES = :likes
        PROMOTIONS = :promotions

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Notifications#list
    class NotificationListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

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
      #   Whether to skip user details. Defaults to `all`.
      #
      #   @return [Symbol, Onlyfans::Models::NotificationListParams::SkipUsers, nil]
      optional :skip_users, enum: -> { Onlyfans::NotificationListParams::SkipUsers }

      # @!attribute type
      #   Filter notifications by a specific type
      #
      #   @return [Symbol, Onlyfans::Models::NotificationListParams::Type, nil]
      optional :type, enum: -> { Onlyfans::NotificationListParams::Type }

      # @!method initialize(account:, from_id: nil, limit: nil, skip_users: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::NotificationListParams} for more details.
      #
      #   @param account [String]
      #
      #   @param from_id [Integer] Used for pagination. This value should be the ID of the previous response's last
      #
      #   @param limit [Integer] The number of notifications. Default `10`
      #
      #   @param skip_users [Symbol, Onlyfans::Models::NotificationListParams::SkipUsers] Whether to skip user details. Defaults to `all`.
      #
      #   @param type [Symbol, Onlyfans::Models::NotificationListParams::Type] Filter notifications by a specific type
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # Whether to skip user details. Defaults to `all`.
      module SkipUsers
        extend Onlyfans::Internal::Type::Enum

        ALL = :all
        NONE = :none

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter notifications by a specific type
      module Type
        extend Onlyfans::Internal::Type::Enum

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

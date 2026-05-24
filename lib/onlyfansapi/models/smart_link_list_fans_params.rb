# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SmartLinks#list_fans
    class SmartLinkListFansParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute smart_link_id
      #
      #   @return [String]
      required :smart_link_id, String

      # @!attribute has_messages
      #   Optional - Filter to fans with or without fan-sent messages
      #
      #   @return [Boolean, nil]
      optional :has_messages, Onlyfansapi::Internal::Type::Boolean

      # @!attribute limit
      #   Rows per page. Default `100`
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute min_messages_sent_by_fan
      #   Optional minimum number of messages sent by fan
      #
      #   @return [Integer, nil]
      optional :min_messages_sent_by_fan, Integer

      # @!attribute min_revenue_net
      #   Optional minimum net revenue
      #
      #   @return [Float, nil]
      optional :min_revenue_net, Float

      # @!attribute min_tips_net
      #   Optional minimum net tips
      #
      #   @return [Float, nil]
      optional :min_tips_net, Float

      # @!attribute offset
      #   Offset for pagination. Default `0`
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!attribute sort
      #   Optional sort field. Default `-revenue_net`
      #
      #   @return [Symbol, Onlyfansapi::Models::SmartLinkListFansParams::Sort, nil]
      optional :sort, enum: -> { Onlyfansapi::SmartLinkListFansParams::Sort }

      # @!method initialize(smart_link_id:, has_messages: nil, limit: nil, min_messages_sent_by_fan: nil, min_revenue_net: nil, min_tips_net: nil, offset: nil, sort: nil, request_options: {})
      #   @param smart_link_id [String]
      #
      #   @param has_messages [Boolean] Optional - Filter to fans with or without fan-sent messages
      #
      #   @param limit [Integer] Rows per page. Default `100`
      #
      #   @param min_messages_sent_by_fan [Integer] Optional minimum number of messages sent by fan
      #
      #   @param min_revenue_net [Float] Optional minimum net revenue
      #
      #   @param min_tips_net [Float] Optional minimum net tips
      #
      #   @param offset [Integer] Offset for pagination. Default `0`
      #
      #   @param sort [Symbol, Onlyfansapi::Models::SmartLinkListFansParams::Sort] Optional sort field. Default `-revenue_net`
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # Optional sort field. Default `-revenue_net`
      module Sort
        extend Onlyfansapi::Internal::Type::Enum

        REVENUE_NET = :revenue_net
        MINUS_REVENUE_NET = :"-revenue_net"
        TIPS_NET = :tips_net
        MINUS_TIPS_NET = :"-tips_net"
        MESSAGES_SENT_BY_FAN = :messages_sent_by_fan
        MINUS_MESSAGES_SENT_BY_FAN = :"-messages_sent_by_fan"
        CONVERTED_AT = :converted_at
        MINUS_CONVERTED_AT = :"-converted_at"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

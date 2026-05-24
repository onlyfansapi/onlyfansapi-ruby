# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SmartLinks#list_clicks
    class SmartLinkListClicksParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute smart_link_id
      #
      #   @return [String]
      required :smart_link_id, String

      # @!attribute date_end
      #   Optional report range end date
      #
      #   @return [String, nil]
      optional :date_end, String

      # @!attribute date_start
      #   Optional report range start date
      #
      #   @return [String, nil]
      optional :date_start, String

      # @!attribute include_bots
      #   Include clicks marked as bots. Default `true`
      #
      #   @return [Boolean, nil]
      optional :include_bots, Onlyfansapi::Internal::Type::Boolean

      # @!attribute include_duplicates
      #   Include duplicate clicks. Default `true`
      #
      #   @return [Boolean, nil]
      optional :include_duplicates, Onlyfansapi::Internal::Type::Boolean

      # @!attribute limit
      #   Rows per page. Default `100`
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   Offset for pagination. Default `0`
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!method initialize(smart_link_id:, date_end: nil, date_start: nil, include_bots: nil, include_duplicates: nil, limit: nil, offset: nil, request_options: {})
      #   @param smart_link_id [String]
      #
      #   @param date_end [String] Optional report range end date
      #
      #   @param date_start [String] Optional report range start date
      #
      #   @param include_bots [Boolean] Include clicks marked as bots. Default `true`
      #
      #   @param include_duplicates [Boolean] Include duplicate clicks. Default `true`
      #
      #   @param limit [Integer] Rows per page. Default `100`
      #
      #   @param offset [Integer] Offset for pagination. Default `0`
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

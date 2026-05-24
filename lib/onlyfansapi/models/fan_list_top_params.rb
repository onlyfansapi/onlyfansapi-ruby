# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Fans#list_top
    class FanListTopParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute by
      #   Sort by: total (default), subscribes, tips, messages, post, streams.
      #
      #   @return [Symbol, Onlyfansapi::Models::FanListTopParams::By, nil]
      optional :by, enum: -> { Onlyfansapi::FanListTopParams::By }, nil?: true

      # @!attribute end_date
      #   End date for filtering (required with start_date). This field is required when
      #   <code>start_date</code> is present.
      #
      #   @return [String, nil]
      optional :end_date, String, nil?: true

      # @!attribute start_date
      #   Start date for filtering (required with end_date). This field is required when
      #   <code>end_date</code> is present.
      #
      #   @return [String, nil]
      optional :start_date, String, nil?: true

      # @!method initialize(account:, by: nil, end_date: nil, start_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::FanListTopParams} for more details.
      #
      #   @param account [String]
      #
      #   @param by [Symbol, Onlyfansapi::Models::FanListTopParams::By, nil] Sort by: total (default), subscribes, tips, messages, post, streams.
      #
      #   @param end_date [String, nil] End date for filtering (required with start_date). This field is required when <
      #
      #   @param start_date [String, nil] Start date for filtering (required with end_date). This field is required when <
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # Sort by: total (default), subscribes, tips, messages, post, streams.
      module By
        extend Onlyfansapi::Internal::Type::Enum

        TOTAL = :total
        SUBSCRIBES = :subscribes
        TIPS = :tips
        MESSAGES = :messages
        POST = :post
        STREAMS = :streams

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

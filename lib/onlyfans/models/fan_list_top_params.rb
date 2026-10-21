# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Fans#list_top
    class FanListTopParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute by
      #   Sort by: total (default), subscribes, tips, messages, post, streams.
      #
      #   @return [Symbol, Onlyfans::Models::FanListTopParams::By, nil]
      optional :by, enum: -> { Onlyfans::FanListTopParams::By }, nil?: true

      # @!attribute end_date
      #   End date for filtering (required with start_date). Must be a valid date. Must
      #   not be greater than 255 characters.
      #
      #   @return [String, nil]
      optional :end_date, String, nil?: true

      # @!attribute start_date
      #   Start date for filtering (required with end_date). Must be a valid date. Must
      #   not be greater than 255 characters.
      #
      #   @return [String, nil]
      optional :start_date, String, nil?: true

      # @!method initialize(account:, by: nil, end_date: nil, start_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::FanListTopParams} for more details.
      #
      #   @param account [String]
      #
      #   @param by [Symbol, Onlyfans::Models::FanListTopParams::By, nil] Sort by: total (default), subscribes, tips, messages, post, streams.
      #
      #   @param end_date [String, nil] End date for filtering (required with start_date). Must be a valid date. Must no
      #
      #   @param start_date [String, nil] Start date for filtering (required with end_date). Must be a valid date. Must no
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # Sort by: total (default), subscribes, tips, messages, post, streams.
      module By
        extend Onlyfans::Internal::Type::Enum

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

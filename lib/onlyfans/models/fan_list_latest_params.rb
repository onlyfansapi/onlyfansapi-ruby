# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Fans#list_latest
    class FanListLatestParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute end_date
      #   End date for filtering (required with start_date). Must be a valid date. Must
      #   not be greater than 255 characters.
      #
      #   @return [String, nil]
      optional :end_date, String, nil?: true

      # @!attribute limit
      #   Number of fans to return (1-50). Must be at least 1. Must not be greater
      #   than 100.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   Number of fans to skip. Must be at least 0.
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!attribute start_date
      #   Start date for filtering (required with end_date). Must be a valid date. Must
      #   not be greater than 255 characters.
      #
      #   @return [String, nil]
      optional :start_date, String, nil?: true

      # @!attribute type
      #   Filter by type: total, renew, or new.
      #
      #   @return [Symbol, Onlyfans::Models::FanListLatestParams::Type, nil]
      optional :type, enum: -> { Onlyfans::FanListLatestParams::Type }, nil?: true

      # @!method initialize(account:, end_date: nil, limit: nil, offset: nil, start_date: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::FanListLatestParams} for more details.
      #
      #   @param account [String]
      #
      #   @param end_date [String, nil] End date for filtering (required with start_date). Must be a valid date. Must no
      #
      #   @param limit [Integer] Number of fans to return (1-50). Must be at least 1. Must not be greater than 10
      #
      #   @param offset [Integer] Number of fans to skip. Must be at least 0.
      #
      #   @param start_date [String, nil] Start date for filtering (required with end_date). Must be a valid date. Must no
      #
      #   @param type [Symbol, Onlyfans::Models::FanListLatestParams::Type, nil] Filter by type: total, renew, or new.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # Filter by type: total, renew, or new.
      module Type
        extend Onlyfans::Internal::Type::Enum

        TOTAL = :total
        RENEW = :renew
        NEW = :new

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

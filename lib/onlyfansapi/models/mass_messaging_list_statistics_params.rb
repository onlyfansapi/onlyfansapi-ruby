# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::MassMessaging#list_statistics
    class MassMessagingListStatisticsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute limit
      #   Number of mass messages to return (default = 20)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   Number of mass messages to skip for pagination
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!attribute query
      #   Optionally, find a mass message by the message text.
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute type
      #   Filter by sent / scheduled / unsent (default = sent)
      #
      #   @return [Symbol, Onlyfansapi::Models::MassMessagingListStatisticsParams::Type, nil]
      optional :type, enum: -> { Onlyfansapi::MassMessagingListStatisticsParams::Type }

      # @!method initialize(account:, limit: nil, offset: nil, query: nil, type: nil, request_options: {})
      #   @param account [String]
      #
      #   @param limit [Integer] Number of mass messages to return (default = 20)
      #
      #   @param offset [Integer] Number of mass messages to skip for pagination
      #
      #   @param query [String] Optionally, find a mass message by the message text.
      #
      #   @param type [Symbol, Onlyfansapi::Models::MassMessagingListStatisticsParams::Type] Filter by sent / scheduled / unsent (default = sent)
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # Filter by sent / scheduled / unsent (default = sent)
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        SENT = :sent
        SCHEDULED = :scheduled
        UNSENT = :unsent

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

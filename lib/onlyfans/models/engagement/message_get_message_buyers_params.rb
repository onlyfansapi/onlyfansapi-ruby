# frozen_string_literal: true

module Onlyfans
  module Models
    module Engagement
      # @see Onlyfans::Resources::Engagement::Messages#get_message_buyers
      class MessageGetMessageBuyersParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute message_id
        #
        #   @return [String]
        required :message_id, String

        # @!attribute limit
        #   Number of buyers to return (default = 10)
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute marker
        #   Marker for pagination
        #
        #   @return [Integer, nil]
        optional :marker, Integer

        # @!attribute offset
        #   Offset for pagination (default = 0)
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!attribute skip_users
        #   Optional flag for subsequent pages (example: all)
        #
        #   @return [String, nil]
        optional :skip_users, String

        # @!attribute skip_users_dups
        #   Skip duplicate users in results (0/1). Default = 1
        #
        #   @return [Integer, nil]
        optional :skip_users_dups, Integer

        # @!method initialize(account:, message_id:, limit: nil, marker: nil, offset: nil, skip_users: nil, skip_users_dups: nil, request_options: {})
        #   @param account [String]
        #
        #   @param message_id [String]
        #
        #   @param limit [Integer] Number of buyers to return (default = 10)
        #
        #   @param marker [Integer] Marker for pagination
        #
        #   @param offset [Integer] Offset for pagination (default = 0)
        #
        #   @param skip_users [String] Optional flag for subsequent pages (example: all)
        #
        #   @param skip_users_dups [Integer] Skip duplicate users in results (0/1). Default = 1
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

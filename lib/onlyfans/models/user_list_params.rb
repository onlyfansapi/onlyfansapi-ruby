# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Users#list
    class UserListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute ids
      #   Comma-separated list of user IDs (max. 10 IDs). Must be at least 1 character.
      #
      #   @return [String]
      required :ids, String

      # @!method initialize(account:, ids:, request_options: {})
      #   @param account [String]
      #
      #   @param ids [String] Comma-separated list of user IDs (max. 10 IDs). Must be at least 1 character.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

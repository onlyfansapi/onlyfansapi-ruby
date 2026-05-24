# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Users#list
    class UserListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

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
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

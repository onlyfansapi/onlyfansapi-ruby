# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::UserLists#create
    class UserListCreateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute name
      #   Must not be greater than 64 characters.
      #
      #   @return [String]
      required :name, String

      # @!method initialize(account:, name:, request_options: {})
      #   @param account [String]
      #
      #   @param name [String] Must not be greater than 64 characters.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

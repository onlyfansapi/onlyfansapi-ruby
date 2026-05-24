# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::UserLists#create
    class UserListCreateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

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
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

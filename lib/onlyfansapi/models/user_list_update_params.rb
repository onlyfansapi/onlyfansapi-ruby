# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::UserLists#update
    class UserListUpdateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute user_list_id
      #
      #   @return [Integer]
      required :user_list_id, Integer

      # @!attribute name
      #   Must not be greater than 64 characters.
      #
      #   @return [String]
      required :name, String

      # @!method initialize(account:, user_list_id:, name:, request_options: {})
      #   @param account [String]
      #
      #   @param user_list_id [Integer]
      #
      #   @param name [String] Must not be greater than 64 characters.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

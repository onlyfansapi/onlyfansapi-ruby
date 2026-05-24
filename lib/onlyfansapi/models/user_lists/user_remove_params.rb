# frozen_string_literal: true

module Onlyfansapi
  module Models
    module UserLists
      # @see Onlyfansapi::Resources::UserLists::Users#remove
      class UserRemoveParams < Onlyfansapi::Internal::Type::BaseModel
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

        # @!attribute user_id
        #
        #   @return [Integer]
        required :user_id, Integer

        # @!method initialize(account:, user_list_id:, user_id:, request_options: {})
        #   @param account [String]
        #   @param user_list_id [Integer]
        #   @param user_id [Integer]
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

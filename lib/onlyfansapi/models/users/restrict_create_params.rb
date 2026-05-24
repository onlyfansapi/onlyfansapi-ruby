# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Users
      # @see Onlyfansapi::Resources::Users::Restrict#create
      class RestrictCreateParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!method initialize(account:, user_id:, request_options: {})
        #   @param account [String]
        #   @param user_id [String]
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

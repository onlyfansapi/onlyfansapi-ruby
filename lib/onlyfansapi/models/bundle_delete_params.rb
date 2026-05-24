# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Bundles#delete
    class BundleDeleteParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute bundle_id
      #
      #   @return [String]
      required :bundle_id, String

      # @!method initialize(account:, bundle_id:, request_options: {})
      #   @param account [String]
      #   @param bundle_id [String]
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

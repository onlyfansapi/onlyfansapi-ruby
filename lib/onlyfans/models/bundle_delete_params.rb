# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Bundles#delete
    class BundleDeleteParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

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
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::MassMessaging#retrieve
    class MassMessagingRetrieveParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!method initialize(account:, id:, request_options: {})
      #   @param account [String]
      #   @param id [String]
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

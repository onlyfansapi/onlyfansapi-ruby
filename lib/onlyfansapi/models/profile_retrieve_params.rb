# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Profiles#retrieve
    class ProfileRetrieveParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute username
      #
      #   @return [String]
      required :username, String

      # @!attribute fresh
      #   If `true` then OnlyFansAPI will always return the real time information about
      #   profile (eg. when was the profile last online).
      #
      #   @return [Boolean, nil]
      optional :fresh, Onlyfansapi::Internal::Type::Boolean, nil?: true

      # @!method initialize(username:, fresh: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::ProfileRetrieveParams} for more details.
      #
      #   @param username [String]
      #
      #   @param fresh [Boolean, nil] If `true` then OnlyFansAPI will always return the real time information about pr
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

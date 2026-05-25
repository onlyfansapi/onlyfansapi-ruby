# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Profiles#retrieve
    class ProfileRetrieveParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute username
      #
      #   @return [String]
      required :username, String

      # @!attribute fresh
      #   If `true` then OnlyFansAPI will always return the real time information about
      #   profile (eg. when was the profile last online).
      #
      #   @return [Boolean, nil]
      optional :fresh, Onlyfans::Internal::Type::Boolean, nil?: true

      # @!method initialize(username:, fresh: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::ProfileRetrieveParams} for more details.
      #
      #   @param username [String]
      #
      #   @param fresh [Boolean, nil] If `true` then OnlyFansAPI will always return the real time information about pr
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

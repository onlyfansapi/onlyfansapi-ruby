# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Posts#unarchive
    class PostUnarchiveParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute post_id
      #
      #   @return [Integer]
      required :post_id, Integer

      # @!attribute private_archive
      #   Set to `true` if this post is currently in the Private Archive.
      #
      #   @return [Boolean, nil]
      optional :private_archive, Onlyfans::Internal::Type::Boolean

      # @!method initialize(account:, post_id:, private_archive: nil, request_options: {})
      #   @param account [String]
      #
      #   @param post_id [Integer]
      #
      #   @param private_archive [Boolean] Set to `true` if this post is currently in the Private Archive.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Media#download
    class MediaDownloadParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute cdn_url
      #
      #   @return [String]
      required :cdn_url, String

      # @!method initialize(account:, cdn_url:, request_options: {})
      #   @param account [String]
      #   @param cdn_url [String]
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

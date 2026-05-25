# frozen_string_literal: true

module Onlyfans
  module Models
    module Media
      # @see Onlyfans::Resources::Media::Uploads#get_status
      class UploadGetStatusParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute upload
        #
        #   @return [String]
        required :upload, String

        # @!method initialize(account:, upload:, request_options: {})
        #   @param account [String]
        #   @param upload [String]
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

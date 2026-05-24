# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Media
      # @see Onlyfansapi::Resources::Media::Uploads#get_status
      class UploadGetStatusParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

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
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

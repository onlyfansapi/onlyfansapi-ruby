# frozen_string_literal: true

module Onlyfansapi
  module Models
    module SavedForLater
      module Posts
        # @see Onlyfansapi::Resources::SavedForLater::Posts::Settings#retrieve
        class SettingRetrieveParams < Onlyfansapi::Internal::Type::BaseModel
          extend Onlyfansapi::Internal::Type::RequestParameters::Converter
          include Onlyfansapi::Internal::Type::RequestParameters

          # @!attribute account
          #
          #   @return [String]
          required :account, String

          # @!method initialize(account:, request_options: {})
          #   @param account [String]
          #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end

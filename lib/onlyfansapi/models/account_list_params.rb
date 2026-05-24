# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Accounts#list
    class AccountListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute onlyfans_email
      #   Optionally, filter by the OnlyFans email
      #
      #   @return [String, nil]
      optional :onlyfans_email, String, nil?: true

      # @!attribute onlyfans_id
      #   Optionally, filter by the OnlyFans ID
      #
      #   @return [String, nil]
      optional :onlyfans_id, String, nil?: true

      # @!attribute onlyfans_username
      #   Optionally, filter by the OnlyFans username
      #
      #   @return [String, nil]
      optional :onlyfans_username, String, nil?: true

      # @!method initialize(onlyfans_email: nil, onlyfans_id: nil, onlyfans_username: nil, request_options: {})
      #   @param onlyfans_email [String, nil] Optionally, filter by the OnlyFans email
      #
      #   @param onlyfans_id [String, nil] Optionally, filter by the OnlyFans ID
      #
      #   @param onlyfans_username [String, nil] Optionally, filter by the OnlyFans username
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

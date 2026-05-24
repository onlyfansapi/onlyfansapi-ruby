# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::ReleaseForms#create_invitation_link
    class ReleaseFormCreateInvitationLinkParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute name
      #   The name of the invitation link.
      #
      #   @return [String]
      required :name, String

      # @!method initialize(account:, name:, request_options: {})
      #   @param account [String]
      #
      #   @param name [String] The name of the invitation link.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

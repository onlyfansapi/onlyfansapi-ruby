# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::ReleaseForms#create_invitation_link
    class ReleaseFormCreateInvitationLinkParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

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
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

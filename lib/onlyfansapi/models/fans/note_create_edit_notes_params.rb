# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Fans
      # @see Onlyfansapi::Resources::Fans::Notes#create_edit_notes
      class NoteCreateEditNotesParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute fan_id
        #
        #   @return [String]
        required :fan_id, String

        # @!attribute notes
        #   The new note value.
        #
        #   @return [String]
        required :notes, String

        # @!method initialize(account:, fan_id:, notes:, request_options: {})
        #   @param account [String]
        #
        #   @param fan_id [String]
        #
        #   @param notes [String] The new note value.
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

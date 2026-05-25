# frozen_string_literal: true

module Onlyfans
  module Models
    module Fans
      # @see Onlyfans::Resources::Fans::Notes#create_edit_notes
      class NoteCreateEditNotesParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

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
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

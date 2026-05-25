# frozen_string_literal: true

module Onlyfans
  module Resources
    class Fans
      # APIs for managing OnlyFans fans (subscribers)
      class Notes
        # Clear notes for a specific fan.
        #
        # @overload clear_notes(fan_id, account:, request_options: {})
        #
        # @param fan_id [String] Fan's OnlyFans ID
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Fans::NoteClearNotesResponse]
        #
        # @see Onlyfans::Models::Fans::NoteClearNotesParams
        def clear_notes(fan_id, params)
          parsed, options = Onlyfans::Fans::NoteClearNotesParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/fans/%2$s/notes", account, fan_id],
            model: Onlyfans::Models::Fans::NoteClearNotesResponse,
            options: options
          )
        end

        # Create or edit notes for a specific fan.
        #
        # @overload create_edit_notes(fan_id, account:, notes:, request_options: {})
        #
        # @param fan_id [String] Path param: Fan's OnlyFans ID
        #
        # @param account [String] Path param: The Account ID
        #
        # @param notes [String] Body param: The new note value.
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Fans::NoteCreateEditNotesResponse]
        #
        # @see Onlyfans::Models::Fans::NoteCreateEditNotesParams
        def create_edit_notes(fan_id, params)
          parsed, options = Onlyfans::Fans::NoteCreateEditNotesParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["api/%1$s/fans/%2$s/notes", account, fan_id],
            body: parsed,
            model: Onlyfans::Models::Fans::NoteCreateEditNotesResponse,
            options: options
          )
        end

        # Retrieve notes for a specific fan.
        #
        # @overload get_notes(fan_id, account:, request_options: {})
        #
        # @param fan_id [String] Fan's OnlyFans ID
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Fans::NoteGetNotesResponse]
        #
        # @see Onlyfans::Models::Fans::NoteGetNotesParams
        def get_notes(fan_id, params)
          parsed, options = Onlyfans::Fans::NoteGetNotesParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/fans/%2$s/notes", account, fan_id],
            model: Onlyfans::Models::Fans::NoteGetNotesResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Onlyfans::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end

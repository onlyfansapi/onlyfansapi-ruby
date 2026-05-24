# typed: strong

module Onlyfansapi
  module Resources
    class Fans
      # APIs for managing OnlyFans fans (subscribers)
      class Notes
        # Clear notes for a specific fan.
        sig do
          params(
            fan_id: String,
            account: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Fans::NoteClearNotesResponse)
        end
        def clear_notes(
          # Fan's OnlyFans ID
          fan_id,
          # The Account ID
          account:,
          request_options: {}
        )
        end

        # Create or edit notes for a specific fan.
        sig do
          params(
            fan_id: String,
            account: String,
            notes: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Fans::NoteCreateEditNotesResponse)
        end
        def create_edit_notes(
          # Path param: Fan's OnlyFans ID
          fan_id,
          # Path param: The Account ID
          account:,
          # Body param: The new note value.
          notes:,
          request_options: {}
        )
        end

        # Retrieve notes for a specific fan.
        sig do
          params(
            fan_id: String,
            account: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Fans::NoteGetNotesResponse)
        end
        def get_notes(
          # Fan's OnlyFans ID
          fan_id,
          # The Account ID
          account:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end

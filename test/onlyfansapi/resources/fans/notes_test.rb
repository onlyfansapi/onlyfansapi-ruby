# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Fans::NotesTest < Onlyfansapi::Test::ResourceTest
  def test_clear_notes_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.fans.notes.clear_notes("fan_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Fans::NoteClearNotesResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Fans::NoteClearNotesResponse::Meta | nil,
        data: Onlyfansapi::Models::Fans::NoteClearNotesResponse::Data | nil
      }
    end
  end

  def test_create_edit_notes_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.fans.notes.create_edit_notes(
        "fan_id",
        account: "acct_XXXXXXXXXXXXXXX",
        notes: "Example note"
      )

    assert_pattern do
      response => Onlyfansapi::Models::Fans::NoteCreateEditNotesResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Fans::NoteCreateEditNotesResponse::Meta | nil,
        data: Onlyfansapi::Models::Fans::NoteCreateEditNotesResponse::Data | nil
      }
    end
  end

  def test_get_notes_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.fans.notes.get_notes("fan_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Fans::NoteGetNotesResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Fans::NoteGetNotesResponse::Meta | nil,
        data: Onlyfansapi::Models::Fans::NoteGetNotesResponse::Data | nil
      }
    end
  end
end

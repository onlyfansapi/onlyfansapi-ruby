# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Fans::NotesTest < Onlyfans::Test::ResourceTest
  def test_clear_notes_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.fans.notes.clear_notes("fan_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Fans::NoteClearNotesResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Fans::NoteClearNotesResponse::Meta | nil,
        data: Onlyfans::Models::Fans::NoteClearNotesResponse::Data | nil
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
      response => Onlyfans::Models::Fans::NoteCreateEditNotesResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Fans::NoteCreateEditNotesResponse::Meta | nil,
        data: Onlyfans::Models::Fans::NoteCreateEditNotesResponse::Data | nil
      }
    end
  end

  def test_get_notes_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.fans.notes.get_notes("fan_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Fans::NoteGetNotesResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Fans::NoteGetNotesResponse::Meta | nil,
        data: Onlyfans::Models::Fans::NoteGetNotesResponse::Data | nil
      }
    end
  end
end

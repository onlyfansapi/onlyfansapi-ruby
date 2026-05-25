# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::ReleaseFormsTest < Onlyfans::Test::ResourceTest
  def test_create_invitation_link_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.release_forms.create_invitation_link(
        "acct_XXXXXXXXXXXXXXX",
        name: "Collab Sebastian - 24/7"
      )

    assert_pattern do
      response => Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta | nil,
        data: Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Data | nil
      }
    end
  end

  def test_create_release_form_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.release_forms.create_release_form("acct_XXXXXXXXXXXXXXX", name: "Example Release Form")

    assert_pattern do
      response => Onlyfans::Models::ReleaseFormCreateReleaseFormResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta | nil,
        data: Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data | nil
      }
    end
  end

  def test_list_taggable_users
    skip("Mock server tests are disabled")

    response = @only_fans_api.release_forms.list_taggable_users("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::ReleaseFormListTaggableUsersResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Meta | nil,
        _pagination: Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Pagination | nil,
        data: Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Data | nil
      }
    end
  end
end

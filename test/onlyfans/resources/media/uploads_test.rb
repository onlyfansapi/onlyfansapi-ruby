# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Media::UploadsTest < Onlyfans::Test::ResourceTest
  def test_get_status_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.media.uploads.get_status("ofapi_media_01JR1234", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Media::UploadGetStatusResponse
    end

    assert_pattern do
      case response
      in Onlyfans::Models::Media::UploadGetStatusResponse::UnionMember0
      in Onlyfans::Models::Media::UploadGetStatusResponse::UnionMember1
      in Onlyfans::Models::Media::UploadGetStatusResponse::UnionMember2
      in Onlyfans::Models::Media::UploadGetStatusResponse::UnionMember3
      end
    end
  end
end

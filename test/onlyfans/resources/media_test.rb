# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::MediaTest < Onlyfans::Test::ResourceTest
  def test_download_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.media.download("cdnUrl", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => String
    end
  end

  def test_scrape
    skip("Mock server tests are disabled")

    response = @only_fans_api.media.scrape("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::MediaScrapeResponse
    end

    assert_pattern do
      response => {
        expiration_date: String | nil,
        temporary_url: String | nil
      }
    end
  end

  def test_upload
    skip("Mock server tests are disabled")

    response = @only_fans_api.media.upload("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::MediaUploadResponse
    end

    assert_pattern do
      response => {
        additional: Onlyfans::Models::MediaUploadResponse::Additional | nil,
        extra: String | nil,
        file_name: String | nil,
        host: String | nil,
        note: String | nil,
        prefixed_id: String | nil,
        process_id: String | nil,
        source_url: String | nil,
        thumbs: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::MediaUploadResponse::Thumb]) | nil
      }
    end
  end
end

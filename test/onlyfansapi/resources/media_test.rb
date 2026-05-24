# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::MediaTest < Onlyfansapi::Test::ResourceTest
  def test_scrape_required_params
    skip("Mock server tests are disabled")

    response =
      @onlyfansapi.media.scrape(
        "acct_XXXXXXXXXXXXXXX",
        url: "https://cdn2.onlyfans.com/files/e/e5/123/600x400_123.jpg?Tag=2&u=123&Policy=123&Signature=signature&Key-Pair-Id=123"
      )

    assert_pattern do
      response => Onlyfansapi::Models::MediaScrapeResponse
    end

    assert_pattern do
      response => {
        expiration_date: String | nil,
        temporary_url: String | nil
      }
    end
  end

  def test_upload_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.media.upload("acct_XXXXXXXXXXXXXXX", file: "file.jpg")

    assert_pattern do
      response => Onlyfansapi::Models::MediaUploadResponse
    end

    assert_pattern do
      response => {
        additional: Onlyfansapi::Models::MediaUploadResponse::Additional | nil,
        extra: String | nil,
        file_name: String | nil,
        host: String | nil,
        prefixed_id: String | nil,
        process_id: String | nil,
        source_url: String | nil,
        thumbs: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::MediaUploadResponse::Thumb]) | nil
      }
    end
  end
end

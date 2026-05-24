# typed: strong

module Onlyfansapi
  module Models
    WebhookDeleteResponse =
      T.let(
        Onlyfansapi::Internal::Type::HashOf[
          Onlyfansapi::Internal::Type::Unknown
        ],
        Onlyfansapi::Internal::Type::Converter
      )
  end
end

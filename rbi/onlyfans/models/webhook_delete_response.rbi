# typed: strong

module Onlyfans
  module Models
    WebhookDeleteResponse =
      T.let(
        Onlyfans::Internal::Type::HashOf[Onlyfans::Internal::Type::Unknown],
        Onlyfans::Internal::Type::Converter
      )
  end
end

# typed: strong

module Onlyfansapi
  module Models
    AccountListResponse =
      T.let(
        Onlyfansapi::Internal::Type::ArrayOf[
          Onlyfansapi::Internal::Type::Unknown
        ],
        Onlyfansapi::Internal::Type::Converter
      )
  end
end

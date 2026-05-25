# typed: strong

module Onlyfans
  module Models
    class WebhookListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::WebhookListParams, Onlyfans::Internal::AnyHash)
        end

      sig do
        params(request_options: Onlyfans::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Onlyfans::RequestOptions }) }
      def to_hash
      end
    end
  end
end

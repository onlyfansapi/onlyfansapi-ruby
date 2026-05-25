# typed: strong

module Onlyfans
  module Models
    class StoryListViewersParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::StoryListViewersParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(Integer) }
      attr_accessor :story_id

      # The number of story viewers to return. Default `8`
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit

      # The offset used for pagination. Default `0`
      sig { returns(T.nilable(Integer)) }
      attr_accessor :offset

      sig do
        params(
          account: String,
          story_id: Integer,
          limit: T.nilable(Integer),
          offset: T.nilable(Integer),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        story_id:,
        # The number of story viewers to return. Default `8`
        limit: nil,
        # The offset used for pagination. Default `0`
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            story_id: Integer,
            limit: T.nilable(Integer),
            offset: T.nilable(Integer),
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

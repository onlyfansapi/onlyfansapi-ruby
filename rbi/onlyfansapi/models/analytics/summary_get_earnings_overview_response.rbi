# typed: strong

module Onlyfansapi
  module Models
    module Analytics
      class SummaryGetEarningsOverviewResponse < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::Analytics::SummaryGetEarningsOverviewResponse,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Float)) }
        attr_reader :messages

        sig { params(messages: Float).void }
        attr_writer :messages

        sig { returns(T.nilable(Float)) }
        attr_reader :posts

        sig { params(posts: Float).void }
        attr_writer :posts

        sig { returns(T.nilable(Float)) }
        attr_reader :streams

        sig { params(streams: Float).void }
        attr_writer :streams

        sig { returns(T.nilable(Float)) }
        attr_reader :subscriptions

        sig { params(subscriptions: Float).void }
        attr_writer :subscriptions

        sig { returns(T.nilable(Float)) }
        attr_reader :tips

        sig { params(tips: Float).void }
        attr_writer :tips

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_accounts

        sig { params(total_accounts: Integer).void }
        attr_writer :total_accounts

        sig { returns(T.nilable(Float)) }
        attr_reader :total_earnings

        sig { params(total_earnings: Float).void }
        attr_writer :total_earnings

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_images

        sig { params(total_images: Integer).void }
        attr_writer :total_images

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_messages

        sig { params(total_messages: Integer).void }
        attr_writer :total_messages

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_videos

        sig { params(total_videos: Integer).void }
        attr_writer :total_videos

        sig do
          params(
            messages: Float,
            posts: Float,
            streams: Float,
            subscriptions: Float,
            tips: Float,
            total_accounts: Integer,
            total_earnings: Float,
            total_images: Integer,
            total_messages: Integer,
            total_videos: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          messages: nil,
          posts: nil,
          streams: nil,
          subscriptions: nil,
          tips: nil,
          total_accounts: nil,
          total_earnings: nil,
          total_images: nil,
          total_messages: nil,
          total_videos: nil
        )
        end

        sig do
          override.returns(
            {
              messages: Float,
              posts: Float,
              streams: Float,
              subscriptions: Float,
              tips: Float,
              total_accounts: Integer,
              total_earnings: Float,
              total_images: Integer,
              total_messages: Integer,
              total_videos: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

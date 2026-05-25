# frozen_string_literal: true

module Onlyfans
  module Models
    module Analytics
      # @see Onlyfans::Resources::Analytics::Summary#get_earnings_overview
      class SummaryGetEarningsOverviewResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute messages
        #
        #   @return [Float, nil]
        optional :messages, Float

        # @!attribute posts
        #
        #   @return [Float, nil]
        optional :posts, Float

        # @!attribute streams
        #
        #   @return [Float, nil]
        optional :streams, Float

        # @!attribute subscriptions
        #
        #   @return [Float, nil]
        optional :subscriptions, Float

        # @!attribute tips
        #
        #   @return [Float, nil]
        optional :tips, Float

        # @!attribute total_accounts
        #
        #   @return [Integer, nil]
        optional :total_accounts, Integer

        # @!attribute total_earnings
        #
        #   @return [Float, nil]
        optional :total_earnings, Float

        # @!attribute total_images
        #
        #   @return [Integer, nil]
        optional :total_images, Integer

        # @!attribute total_messages
        #
        #   @return [Integer, nil]
        optional :total_messages, Integer

        # @!attribute total_videos
        #
        #   @return [Integer, nil]
        optional :total_videos, Integer

        # @!method initialize(messages: nil, posts: nil, streams: nil, subscriptions: nil, tips: nil, total_accounts: nil, total_earnings: nil, total_images: nil, total_messages: nil, total_videos: nil)
        #   @param messages [Float]
        #   @param posts [Float]
        #   @param streams [Float]
        #   @param subscriptions [Float]
        #   @param tips [Float]
        #   @param total_accounts [Integer]
        #   @param total_earnings [Float]
        #   @param total_images [Integer]
        #   @param total_messages [Integer]
        #   @param total_videos [Integer]
      end
    end
  end
end

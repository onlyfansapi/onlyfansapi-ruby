# typed: strong

module Onlyfans
  module Resources
    class Queue
      # List posts and messages in the queue.
      sig do
        params(
          account: String,
          limit: Integer,
          publish_date_end: String,
          publish_date_start: String,
          timezone: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::QueueListResponse)
      end
      def list(
        # The Account ID
        account,
        # Maximum number of queue items to return (default = 20)
        limit:,
        # Latest publish date to return
        publish_date_end:,
        # Earliest publish date to return (must be at least today)
        publish_date_start:,
        # Time timezone of the provided dates.
        # [View available timezone values](https://www.php.net/manual/en/timezones.php)
        timezone:,
        request_options: {}
      )
      end

      # Count posts and messages in the queue.
      sig do
        params(
          account: String,
          publish_date_end: String,
          publish_date_start: String,
          timezone: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::QueueCountResponse)
      end
      def count(
        # The Account ID
        account,
        # Latest publish date to count to
        publish_date_end:,
        # Earliest publish date to count from (must be at least today)
        publish_date_start:,
        # Time timezone of the provided dates.
        # [View available timezone values](https://www.php.net/manual/en/timezones.php)
        timezone:,
        request_options: {}
      )
      end

      # Publish a queue item or "saved for later" item (post or mass message). This
      # means that the item will be sent immediately, regardless of its scheduled date.
      sig do
        params(
          queue_id: String,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::QueuePublishResponse)
      end
      def publish(
        # The ID of the message queue item. Can be retrieved from Queue or Mass Messaging
        # endpoints
        queue_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Onlyfans::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

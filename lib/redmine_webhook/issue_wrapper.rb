module RedmineWebhook
  class IssueWrapper
    def initialize(issue)
      @issue = issue
    end

    def to_hash(status)
        :content => @issue.author.firstname + @issue.author.lastname + ' ' + status + ' ' + @issue.tracker.name +' : ' + @issue.subject + '。指派给: ' + @issue.assigned_to.firstname + @issue.assigned_to.lastname
    end
  end
end

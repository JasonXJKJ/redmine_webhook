module RedmineWebhook
  class IssueWrapper
    def initialize(issue, journal)
      @issue = issue
      @journal = journal
    end

    def to_hash(status)
      if status == '创建'
        @issue.author.firstname + @issue.author.lastname + ' ' + status + ' ' + @issue.tracker.name + ' : ' + @issue.subject + '。指派给: ' + @issue.assigned_to.firstname + @issue.assigned_to.lastname
      else
        change = ''
        for item in @journal do

        end

        @journal.author.user.firstname + @journal.author.user.lastname + ' ' + status + ' ' + @issue.tracker.name + ' : ' + @issue.subject
        # @issue.author.firstname + @issue.author.lastname + ' ' + status + ' ' + @issue.tracker.name +' : ' + @issue.subject + '。指派给: ' + @issue.assigned_to.firstname + @issue.assigned_to.lastname
    end
  end
end

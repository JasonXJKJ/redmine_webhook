module RedmineWebhook
  class IssueWrapper
    def initialize(issue, journal)
      @issue = issue
      @journal = journal
    end

    def to_new
      if @issue.assigned_to == nil
        @issue.author.lastname + @issue.author.firstname + ' 创建 ' + @issue.tracker.name + ': ' + @issue.subject + '。紧急程度: ' + @issue.priority.name
      else
        @issue.author.lastname + @issue.author.firstname + ' 创建 ' + @issue.tracker.name + ': ' + @issue.subject + '。指派给: ' + @issue.assigned_to.lastname + @issue.assigned_to.firstname + '。紧急程度: ' + @issue.priority.name
      end
    end

    def to_update
      if @issue.assigned_to == nil
        @journal.user.lastname + @journal.user.firstname + ' 修改 ' + @issue.tracker.name + ': ' + @issue.subject + '。紧急程度: ' + @issue.priority.name + '。状态: ' + @issue.status.name
      else
        @journal.user.lastname + @journal.user.firstname + ' 修改 ' + @issue.tracker.name + ': ' + @issue.subject + '。指派给: ' + @issue.assigned_to.lastname + @issue.assigned_to.firstname + '。紧急程度: ' + @issue.priority.name + '。状态: ' + @issue.status.name
      end
    end
  end
end

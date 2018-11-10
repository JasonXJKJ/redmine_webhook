Redmine 钉钉自定义机器人 WebHook 插件
======================

安装
------------------------------

    $ cd $RAILS_ROOT/plugins
    $ git clone https://github.com/JasonXJKJ/redmine_webhook.git
    $ rake redmine:plugins:migrate RAILS_ENV=production

------------------------------
### Post data
    {
      "msgtype": "text",
      "text": {
        "content": "xxx 创建 xx。指派给: xxx。紧急程度: x"
      }
    }

![avatar](https://raw.githubusercontent.com/JasonXJKJ/redmine_webhook/master/picture.png)

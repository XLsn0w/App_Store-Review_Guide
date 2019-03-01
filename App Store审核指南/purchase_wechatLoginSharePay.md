____

#📣问题:卖商品不想走内购怎么办?(内购被拒绝)
那些商品离不开内购:视频(很多公司卖课程视频),会员,游戏钻石,游戏币,直播礼物等虚拟物品等,卖药卖实物无需走内购


##解决方案:
方案1)审核的时候  把需要视频播放的隐藏,通过后再放出来,此招有风险,可能会受到警告信,甚至被封号,如果用户量小就无所谓了,先把app 搞上架!
方案2)学习58同城,让用户去网站购买产品,买了产品的账号到移动端使用功能
方案3)就老老实实的做内购吧.莫别的招了

____
____

#📣问题:微信支付,登陆,分享没安装微信,提示下载微信被拒绝怎么办?

##解决方案:
- 1)如果审核的时候有这种被拒绝,那么你需要在审核的时候让审核的人员在测试机器上没安装微信的情况下看不到你的微信支付,微信登录,分享!
- 2)怎么让苹果审核人员看不到微信?粗暴点的方法: 自己公司写接口,审核的时候后台放回yes ,隐藏这些微信相关的,审核通过打开这些还有更优雅的做法
像友盟所做的先判断是否安装微信,没有安装微信隐藏微信分享,微信登录,微信支付等功能,友盟官网说的:
`
由于苹果审核政策需求，建议大家对未安装客户端平台进行隐藏，在设置QQ、微信AppID之后调用下面的方法，[UMSocialConfig hiddenNotInstallPlatforms:@[UMShareToQQ, UMShareToQzone, UMShareToWechatSession, UMShareToWechatTimeline]]; 这个接口只对默认分享面板平台有隐藏功能，自定义分享面板或登录按钮需要自己处理 友盟分享sdk5.2.1已经兼容ipv6，请大家升级sdk，避免无法通过APPstore审核>
`
这种思想一样可以用到微信支付,微信登陆
____

____

#📣问题:被拒绝注册功能

**苹果邮件描述**<br> We noticed that your app requires users to have an account to access non account-based features. Apps cannot require user registration prior to allowing access to app content and features that are not associated specifically to the user.

Specifically, your app requires users to log in before accessing the product listing.
翻译成中文:你的app需要用户提供一个账号去使用不需要账号就可以访问的内容,app 不能让用户提前注册因为用户使用的这些功能和用户没有特定的关联关系

##解决方案:
就是说你的app中有的功能没有必要非得注册登录才能使用的你们强制要求用户登录了

建议使用游客功能,让用户使用部分功能的时候才需要登录,详情参考我的已上线的小外包:"北仑新闻"app,只有用户评论,收藏,提交爆料功能才提示用户登录,只有聊天类的才可以强制登录 ,更多登录相关的原因参考我的博客:[APP的登录逻辑](http://www.jianshu.com/p/4ef69727b5cb)

____




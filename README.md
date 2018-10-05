
# iOS 隐私政策 SafariViewContoller 弹出隐私URL
iOS关于隐私政策新的公告
在2018.9.26号,苹果官方发布了新的关于隐私政策的公告.要求10月3日之后,上架到 App Store 的 iOS 项目,必须添加隐私政策,并且明确显示,不能遮挡,使用SafariViewContoller 弹出,不然无法通过审核

关于苹果隐私政策相关事宜的公告×

亲爱的客户：

您好！

从2018年10月3日开始，App Store Connect将要求所有新应用和应用更新版本时提供隐私政策，添加后才可以在App Store上提交或通过TestFlight外部测试进行分发。

【苹果通知：As a reminder, in June the App Store Review Guidelines were updated to require a privacy policy for all new apps and app updates as part of the app review process. Starting October 3, 2018, App Store Connect will require a privacy policy for all new apps and app updates before they can be submitted for distribution on the App Store or through TestFlight external testing. In addition, your app’s privacy policy link or text will only be editable when you submit a new version of your app.（详情可参见：[https://developer.apple.com/news/?id=08312018a](https://developer.apple.com/news/?id=08312018a)）。 】

所以，在此提醒各位开发者：提交App Store 审核前一定要准备自己的隐私权政策，并在app SafariViewContoller中弹出，否则会无法通过审核哦！ 范本提供：为便于一些开发者准备隐私权政策的条款，我们已起草了一份隐私权政策的中文版本，开发者可根据自己的业务场景进行修改，点击可下载隐私权政策范本 苹果隐私条款。


2018.9.26

使用SafariViewContoller
// 导入SafariServices.h
#import <SafariServices/SafariServices.h>
// 设置代理
@interface VC1 ()<SFSafariViewControllerDelegate>
@end
// 点击使用
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//   输入项目的隐私政策的 URL
SFSafariViewController *sfVC = [[SFSafariViewController alloc]initWithURL:[NSURL URLWithString:@"https://www.baidu.com/#privacy"]];
sfVC.delegate = self;
[self.navigationController presentViewController:sfVC animated:YES completion:nil];
}

###  pragma mark - SFSafariViewControllerDelegate -
- (void)safariViewControllerDidFinish:(SFSafariViewController *)controller{
NSLog(@"点击done");
}



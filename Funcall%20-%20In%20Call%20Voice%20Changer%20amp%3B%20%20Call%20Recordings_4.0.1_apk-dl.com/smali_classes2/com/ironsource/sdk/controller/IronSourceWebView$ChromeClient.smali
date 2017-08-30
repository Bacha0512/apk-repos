.class Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;


# direct methods
.method private constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p2, "x1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$1;

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 631
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 632
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    return-object v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 601
    const-string v0, "MyApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- From line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 602
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 603
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    .line 587
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 588
    .local v0, "childView":Landroid/webkit/WebView;
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 589
    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 590
    iget-object v1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    .line 591
    .local v1, "transport":Landroid/webkit/WebView$WebViewTransport;
    invoke-virtual {v1, v0}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 592
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 594
    const-string v2, "onCreateWindow"

    const-string v3, "onCreateWindow"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const/4 v2, 0x1

    return v2
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 640
    const-string v0, "Test"

    const-string v1, "onHideCustomView"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomView:Landroid/view/View;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 656
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomView:Landroid/view/View;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomView:Landroid/view/View;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 650
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    # setter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1202(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/view/View;)Landroid/view/View;

    .line 651
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 654
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 610
    const-string v0, "Test"

    const-string v1, "onShowCustomView"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomView:Landroid/view/View;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    const-string v0, "Test"

    const-string v1, "mCustomView != null"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 627
    :goto_0
    return-void

    .line 620
    :cond_0
    const-string v0, "Test"

    const-string v1, "mCustomView == null"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 624
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # setter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomView:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1202(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/view/View;)Landroid/view/View;

    .line 625
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # setter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1402(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 626
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

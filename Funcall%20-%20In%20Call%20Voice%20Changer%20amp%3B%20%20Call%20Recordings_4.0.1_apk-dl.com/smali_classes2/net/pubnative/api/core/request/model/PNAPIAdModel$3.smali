.class Lnet/pubnative/api/core/request/model/PNAPIAdModel$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;


# direct methods
.method constructor <init>(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$3;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$3;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iget-boolean v0, v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsClickLoaderEnabled:Z

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$3;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->showLoadingView()V

    .line 558
    :cond_0
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$3;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0, p1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->invokeOnClick(Landroid/view/View;)V

    .line 559
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$3;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->confirmClickBeacons(Landroid/content/Context;)V

    .line 561
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$3;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iget-boolean v0, v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsClickInBackgroundEnabled:Z

    if-eqz v0, :cond_3

    .line 563
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$3;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iget-boolean v0, v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsClickCachingEnabled:Z

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$3;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iget-object v0, v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mClickFinalURL:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 566
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$3;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsWaitingForClickCache:Z

    .line 581
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$3;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->openCachedClick()V

    goto :goto_0

    .line 572
    :cond_2
    new-instance v0, Lnet/pubnative/URLDriller;

    invoke-direct {v0}, Lnet/pubnative/URLDriller;-><init>()V

    .line 573
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lnet/pubnative/URLDriller;->setDrillSize(I)V

    .line 574
    invoke-static {}, Lnet/pubnative/api/core/utils/PNAPISystemUtils;->getWebViewUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/URLDriller;->setUserAgent(Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$3;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0, v1}, Lnet/pubnative/URLDriller;->setListener(Lnet/pubnative/URLDriller$Listener;)V

    .line 576
    iget-object v1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$3;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/URLDriller;->drill(Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :cond_3
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$3;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iget-object v1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$3;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->openURL(Ljava/lang/String;)V

    goto :goto_0
.end method

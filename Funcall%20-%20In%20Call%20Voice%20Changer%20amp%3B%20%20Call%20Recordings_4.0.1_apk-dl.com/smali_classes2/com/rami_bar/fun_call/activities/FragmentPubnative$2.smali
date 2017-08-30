.class Lcom/rami_bar/fun_call/activities/FragmentPubnative$2;
.super Ljava/lang/Object;
.source "FragmentPubnative.java"

# interfaces
.implements Lnet/pubnative/sdk/core/request/PNRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentPubnative;->setDataToViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentPubnative;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentPubnative;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentPubnative;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentPubnative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPNRequestLoadFail(Lnet/pubnative/sdk/core/request/PNRequest;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "request"    # Lnet/pubnative/sdk/core/request/PNRequest;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 112
    const-string v0, "native_bar"

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentPubnative;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentPubnative;->srl_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->access$000(Lcom/rami_bar/fun_call/activities/FragmentPubnative;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 114
    return-void
.end method

.method public onPNRequestLoadFinish(Lnet/pubnative/sdk/core/request/PNRequest;Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 2
    .param p1, "request"    # Lnet/pubnative/sdk/core/request/PNRequest;
    .param p2, "ad"    # Lnet/pubnative/sdk/core/request/PNAdModel;

    .prologue
    .line 104
    const-string v0, "native_bar"

    const-string v1, "PNRequestLoadFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentPubnative;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentPubnative;->srl_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->access$000(Lcom/rami_bar/fun_call/activities/FragmentPubnative;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 107
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentPubnative;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentPubnative;->handleAd(Lnet/pubnative/sdk/core/request/PNAdModel;)V
    invoke-static {v0, p2}, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->access$100(Lcom/rami_bar/fun_call/activities/FragmentPubnative;Lnet/pubnative/sdk/core/request/PNAdModel;)V

    .line 108
    return-void
.end method

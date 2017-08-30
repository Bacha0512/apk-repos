.class Lcom/rami_bar/fun_call/activities/FragmentPubnative$3;
.super Ljava/lang/Object;
.source "FragmentPubnative.java"

# interfaces
.implements Lnet/pubnative/sdk/core/request/PNAdModel$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentPubnative;->handleAd(Lnet/pubnative/sdk/core/request/PNAdModel;)V
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
    .line 129
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentPubnative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPNAdClick(Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 2
    .param p1, "pnAdModel"    # Lnet/pubnative/sdk/core/request/PNAdModel;

    .prologue
    .line 137
    const-string v0, "native_bar"

    const-string v1, "onPNAdClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public onPNAdImpression(Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 2
    .param p1, "pnAdModel"    # Lnet/pubnative/sdk/core/request/PNAdModel;

    .prologue
    .line 132
    const-string v0, "native_bar"

    const-string v1, "onPNAdImpression"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

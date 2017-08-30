.class public Lcom/weirdvoice/service/receiver/DynamicReceiver5;
.super Lcom/weirdvoice/service/receiver/DynamicReceiver4;
.source "DynamicReceiver5.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# direct methods
.method public constructor <init>(Lcom/weirdvoice/service/SipService;)V
    .locals 0
    .param p1, "aService"    # Lcom/weirdvoice/service/SipService;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/weirdvoice/service/receiver/DynamicReceiver4;-><init>(Lcom/weirdvoice/service/SipService;)V

    .line 34
    return-void
.end method


# virtual methods
.method public compatIsInitialStickyBroadcast(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "it"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/weirdvoice/service/receiver/DynamicReceiver5;->isInitialStickyBroadcast()Z

    move-result v0

    return v0
.end method

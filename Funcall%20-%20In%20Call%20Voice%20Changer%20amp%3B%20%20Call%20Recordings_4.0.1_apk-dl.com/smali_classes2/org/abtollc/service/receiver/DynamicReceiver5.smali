.class public Lorg/abtollc/service/receiver/DynamicReceiver5;
.super Lorg/abtollc/service/receiver/DynamicReceiver4;
.source "DynamicReceiver5.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# direct methods
.method public constructor <init>(Lorg/abtollc/service/ABTOSipService;)V
    .locals 0
    .param p1, "aService"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lorg/abtollc/service/receiver/DynamicReceiver4;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    .line 13
    return-void
.end method


# virtual methods
.method public compatIsInitialStickyBroadcast(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "it"    # Landroid/content/Intent;

    .prologue
    .line 17
    invoke-virtual {p0}, Lorg/abtollc/service/receiver/DynamicReceiver5;->isInitialStickyBroadcast()Z

    move-result v0

    return v0
.end method

.class public interface abstract Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;
.super Ljava/lang/Object;
.source "PjSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/pjsip/PjSipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PjsipModule"
.end annotation


# virtual methods
.method public abstract onBeforeAccountStartRegistration(ILcom/weirdvoice/api/SipProfile;)V
.end method

.method public abstract onBeforeStartPjsip()V
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

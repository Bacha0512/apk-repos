.class public interface abstract Lorg/abtollc/voip/SipService$PjsipModule;
.super Ljava/lang/Object;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/voip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PjsipModule"
.end annotation


# virtual methods
.method public abstract onBeforeAccountStartRegistration(ILorg/abtollc/api/SipProfile;)V
.end method

.method public abstract onBeforeStartPjsip()V
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

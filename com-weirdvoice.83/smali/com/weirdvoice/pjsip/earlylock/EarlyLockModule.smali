.class public Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;
.super Ljava/lang/Object;
.source "EarlyLockModule.java"

# interfaces
.implements Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$EarlyLocker;,
        Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$WorkLocker;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "EarlyLockModule"


# instance fields
.field private locker:Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$EarlyLocker;

.field private pm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;)Landroid/os/PowerManager;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;->pm:Landroid/os/PowerManager;

    return-object v0
.end method


# virtual methods
.method public onBeforeAccountStartRegistration(ILcom/weirdvoice/api/SipProfile;)V
    .locals 0
    .param p1, "pjId"    # I
    .param p2, "acc"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    .line 79
    return-void
.end method

.method public onBeforeStartPjsip()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lorg/pjsip/pjsua/pjsua;->mod_earlylock_init()I

    .line 67
    new-instance v0, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$EarlyLocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$EarlyLocker;-><init>(Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$EarlyLocker;)V

    iput-object v0, p0, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;->locker:Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$EarlyLocker;

    .line 68
    iget-object v0, p0, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;->locker:Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$EarlyLocker;

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->mod_earlylock_set_callback(Lorg/pjsip/pjsua/EarlyLockCallback;)V

    .line 69
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 56
    .line 57
    const-string v0, "power"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;->pm:Landroid/os/PowerManager;

    .line 58
    return-void
.end method

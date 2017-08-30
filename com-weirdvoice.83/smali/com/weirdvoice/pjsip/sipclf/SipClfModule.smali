.class public Lcom/weirdvoice/pjsip/sipclf/SipClfModule;
.super Ljava/lang/Object;
.source "SipClfModule.java"

# interfaces
.implements Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "SipClfModule"


# instance fields
.field private enableModule:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/pjsip/sipclf/SipClfModule;->enableModule:Z

    .line 38
    return-void
.end method


# virtual methods
.method public onBeforeAccountStartRegistration(ILcom/weirdvoice/api/SipProfile;)V
    .locals 0
    .param p1, "pjId"    # I
    .param p2, "acc"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    .line 56
    return-void
.end method

.method public onBeforeStartPjsip()V
    .locals 4

    .prologue
    .line 48
    iget-boolean v1, p0, Lcom/weirdvoice/pjsip/sipclf/SipClfModule;->enableModule:Z

    if-eqz v1, :cond_0

    .line 49
    invoke-static {}, Lorg/pjsip/pjsua/pjsua;->sipclf_mod_init()I

    move-result v0

    .line 50
    .local v0, "status":I
    const-string v1, "SipClfModule"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SipClfModule module added with status "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v0    # "status":I
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 44
    return-void
.end method

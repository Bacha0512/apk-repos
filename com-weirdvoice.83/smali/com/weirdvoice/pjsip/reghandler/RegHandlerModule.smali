.class public Lcom/weirdvoice/pjsip/reghandler/RegHandlerModule;
.super Ljava/lang/Object;
.source "RegHandlerModule.java"

# interfaces
.implements Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "RegHandlerModule"


# instance fields
.field private regHandlerReceiver:Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public onBeforeAccountStartRegistration(ILcom/weirdvoice/api/SipProfile;)V
    .locals 2
    .param p1, "pjId"    # I
    .param p2, "acc"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/weirdvoice/pjsip/reghandler/RegHandlerModule;->regHandlerReceiver:Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;

    iget v1, p2, Lcom/weirdvoice/api/SipProfile;->try_clean_registers:I

    invoke-virtual {v0, p1, v1}, Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;->set_account_cleaning_state(II)V

    .line 55
    return-void
.end method

.method public onBeforeStartPjsip()V
    .locals 4

    .prologue
    .line 47
    invoke-static {}, Lorg/pjsip/pjsua/pjsua;->mobile_reg_handler_init()I

    move-result v0

    .line 48
    .local v0, "status":I
    iget-object v1, p0, Lcom/weirdvoice/pjsip/reghandler/RegHandlerModule;->regHandlerReceiver:Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;

    invoke-static {v1}, Lorg/pjsip/pjsua/pjsua;->mobile_reg_handler_set_callback(Lorg/pjsip/pjsua/MobileRegHandlerCallback;)V

    .line 49
    const-string v1, "RegHandlerModule"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reg handler module added with status "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 42
    new-instance v0, Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;

    invoke-direct {v0, p1}, Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weirdvoice/pjsip/reghandler/RegHandlerModule;->regHandlerReceiver:Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;

    .line 43
    return-void
.end method

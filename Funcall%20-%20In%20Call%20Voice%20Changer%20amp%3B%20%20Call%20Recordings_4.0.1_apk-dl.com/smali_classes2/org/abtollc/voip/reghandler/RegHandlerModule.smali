.class public Lorg/abtollc/voip/reghandler/RegHandlerModule;
.super Ljava/lang/Object;
.source "RegHandlerModule.java"

# interfaces
.implements Lorg/abtollc/voip/SipService$PjsipModule;


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "RegHandlerModule"


# instance fields
.field private regHandlerReceiver:Lorg/abtollc/voip/reghandler/RegHandlerCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public onBeforeAccountStartRegistration(ILorg/abtollc/api/SipProfile;)V
    .locals 2
    .param p1, "pjId"    # I
    .param p2, "acc"    # Lorg/abtollc/api/SipProfile;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/abtollc/voip/reghandler/RegHandlerModule;->regHandlerReceiver:Lorg/abtollc/voip/reghandler/RegHandlerCallback;

    iget v1, p2, Lorg/abtollc/api/SipProfile;->try_clean_registers:I

    invoke-virtual {v0, p1, v1}, Lorg/abtollc/voip/reghandler/RegHandlerCallback;->set_account_cleaning_state(II)V

    .line 33
    return-void
.end method

.method public onBeforeStartPjsip()V
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Lorg/abtollc/jni/pjsua;->mobile_reg_handler_init()I

    move-result v0

    .line 26
    .local v0, "status":I
    iget-object v1, p0, Lorg/abtollc/voip/reghandler/RegHandlerModule;->regHandlerReceiver:Lorg/abtollc/voip/reghandler/RegHandlerCallback;

    invoke-static {v1}, Lorg/abtollc/jni/pjsua;->mobile_reg_handler_set_callback(Lorg/abtollc/jni/MobileRegHandlerCallback;)V

    .line 27
    const-string v1, "RegHandlerModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reg handler module added with status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 20
    new-instance v0, Lorg/abtollc/voip/reghandler/RegHandlerCallback;

    invoke-direct {v0, p1}, Lorg/abtollc/voip/reghandler/RegHandlerCallback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/abtollc/voip/reghandler/RegHandlerModule;->regHandlerReceiver:Lorg/abtollc/voip/reghandler/RegHandlerCallback;

    .line 21
    return-void
.end method

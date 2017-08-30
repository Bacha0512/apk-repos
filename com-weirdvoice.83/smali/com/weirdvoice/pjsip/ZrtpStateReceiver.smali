.class public Lcom/weirdvoice/pjsip/ZrtpStateReceiver;
.super Lorg/pjsip/pjsua/ZrtpCallback;
.source "ZrtpStateReceiver.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "ZrtpStateReceiver"


# instance fields
.field private pjService:Lcom/weirdvoice/pjsip/PjSipService;


# direct methods
.method constructor <init>(Lcom/weirdvoice/pjsip/PjSipService;)V
    .locals 0
    .param p1, "service"    # Lcom/weirdvoice/pjsip/PjSipService;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/pjsip/pjsua/ZrtpCallback;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/weirdvoice/pjsip/ZrtpStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    .line 41
    return-void
.end method


# virtual methods
.method public on_zrtp_show_sas(ILorg/pjsip/pjsua/pj_str_t;I)V
    .locals 6
    .param p1, "callId"    # I
    .param p2, "sas"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "verified"    # I

    .prologue
    .line 45
    invoke-static {p2}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "sasString":Ljava/lang/String;
    const-string v3, "ZrtpStateReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ZRTP show SAS "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " verified : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v3, 0x1

    if-eq p3, v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/weirdvoice/pjsip/ZrtpStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v3, p1}, Lcom/weirdvoice/pjsip/PjSipService;->getPublicCallInfo(I)Lcom/weirdvoice/api/SipCallSession;

    move-result-object v0

    .line 49
    .local v0, "callInfo":Lcom/weirdvoice/api/SipCallSession;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.weirdvoice.service.SHOW_SAS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v2, "zrtpIntent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v3, "call_info"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    iget-object v3, p0, Lcom/weirdvoice/pjsip/ZrtpStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v3, v3, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    const-string v4, "android.permission.USE_SIP"

    invoke-virtual {v3, v2, v4}, Lcom/weirdvoice/service/SipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 56
    .end local v0    # "callInfo":Lcom/weirdvoice/api/SipCallSession;
    .end local v2    # "zrtpIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lcom/weirdvoice/pjsip/ZrtpStateReceiver;->updateZrtpInfos(I)V

    goto :goto_0
.end method

.method public on_zrtp_update_transport(I)V
    .locals 0
    .param p1, "callId"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/weirdvoice/pjsip/ZrtpStateReceiver;->updateZrtpInfos(I)V

    .line 62
    return-void
.end method

.method public updateZrtpInfos(I)V
    .locals 1
    .param p1, "callId"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/weirdvoice/pjsip/ZrtpStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v0, p1}, Lcom/weirdvoice/pjsip/PjSipService;->refreshCallMediaState(I)V

    .line 66
    return-void
.end method

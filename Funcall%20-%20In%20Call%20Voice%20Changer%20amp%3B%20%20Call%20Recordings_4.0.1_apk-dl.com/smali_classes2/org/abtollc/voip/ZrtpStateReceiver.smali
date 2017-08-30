.class public Lorg/abtollc/voip/ZrtpStateReceiver;
.super Lorg/abtollc/jni/ZrtpCallback;
.source "ZrtpStateReceiver.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "ZrtpStateReceiver"


# instance fields
.field private pjService:Lorg/abtollc/voip/SipService;


# direct methods
.method constructor <init>(Lorg/abtollc/voip/SipService;)V
    .locals 0
    .param p1, "service"    # Lorg/abtollc/voip/SipService;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/abtollc/jni/ZrtpCallback;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/abtollc/voip/ZrtpStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    .line 20
    return-void
.end method


# virtual methods
.method public on_zrtp_show_sas(ILorg/abtollc/jni/pj_str_t;I)V
    .locals 6
    .param p1, "callId"    # I
    .param p2, "sas"    # Lorg/abtollc/jni/pj_str_t;
    .param p3, "verified"    # I

    .prologue
    .line 24
    invoke-static {p2}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "sasString":Ljava/lang/String;
    const-string v2, "ZrtpStateReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZRTP show SAS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " verified : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v2, 0x1

    if-eq p3, v2, :cond_0

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "call_id"

    int-to-long v4, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 30
    const-string v2, "zrtp_sas"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v2, p0, Lorg/abtollc/voip/ZrtpStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/16 v3, 0x13

    invoke-virtual {v2, v3, v0}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 35
    .end local v0    # "data":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Lorg/abtollc/voip/ZrtpStateReceiver;->updateZrtpInfos(I)V

    goto :goto_0
.end method

.method public on_zrtp_update_transport(I)V
    .locals 0
    .param p1, "callId"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lorg/abtollc/voip/ZrtpStateReceiver;->updateZrtpInfos(I)V

    .line 40
    return-void
.end method

.method public updateZrtpInfos(I)V
    .locals 1
    .param p1, "callId"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lorg/abtollc/voip/ZrtpStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v0, p1}, Lorg/abtollc/voip/SipService;->refreshCallMediaState(I)V

    .line 44
    return-void
.end method

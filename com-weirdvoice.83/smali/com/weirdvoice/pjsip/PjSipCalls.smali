.class public final Lcom/weirdvoice/pjsip/PjSipCalls;
.super Ljava/lang/Object;
.source "PjSipCalls.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "PjSipCalls"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static dumpCallInfo(I)Ljava/lang/String;
    .locals 2
    .param p0, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 156
    sget v0, Lorg/pjsip/pjsua/pjsua;->PJ_TRUE:I

    const-string v1, " "

    invoke-static {p0, v0, v1}, Lorg/pjsip/pjsua/pjsua;->call_dump(IILjava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v0

    invoke-static {v0}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static updateSession(Lcom/weirdvoice/service/impl/SipCallSessionImpl;Lorg/pjsip/pjsua/pjsua_call_info;Landroid/content/Context;)V
    .locals 6
    .param p0, "session"    # Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    .param p1, "pjCallInfo"    # Lorg/pjsip/pjsua/pjsua_call_info;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_info;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setCallId(I)V

    .line 134
    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_info;->getState()Lorg/pjsip/pjsua/pjsip_inv_state;

    move-result-object v2

    invoke-virtual {v2}, Lorg/pjsip/pjsua/pjsip_inv_state;->swigValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setCallState(I)V

    .line 135
    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_info;->getMedia_status()Lorg/pjsip/pjsua/pjsua_call_media_status;

    move-result-object v2

    invoke-virtual {v2}, Lorg/pjsip/pjsua/pjsua_call_media_status;->swigValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setMediaStatus(I)V

    .line 136
    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_info;->getRemote_info()Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v2

    invoke-static {v2}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setRemoteContact(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_info;->getConf_slot()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setConfPort(I)V

    .line 140
    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_info;->getAcc_id()I

    move-result v1

    .line 141
    .local v1, "pjAccId":I
    invoke-static {p2, v1}, Lcom/weirdvoice/pjsip/PjSipService;->getAccountIdForPjsipId(Landroid/content/Context;I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setAccId(J)V

    .line 143
    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_info;->getConnect_duration()Lorg/pjsip/pjsua/pj_time_val;

    move-result-object v0

    .line 144
    .local v0, "duration":Lorg/pjsip/pjsua/pj_time_val;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/pjsip/pjsua/pj_time_val;->getSec()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 145
    invoke-virtual {v0}, Lorg/pjsip/pjsua/pj_time_val;->getMsec()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 144
    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setConnectStart(J)V

    .line 146
    return-void
.end method

.method public static updateSessionFromPj(Lcom/weirdvoice/service/impl/SipCallSessionImpl;Lorg/pjsip/pjsua/pjsip_event;Landroid/content/Context;)V
    .locals 12
    .param p0, "session"    # Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    .param p1, "e"    # Lorg/pjsip/pjsua/pjsip_event;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 63
    const-string v9, "PjSipCalls"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Update call "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getCallId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Lorg/pjsip/pjsua/pjsua_call_info;

    invoke-direct {v1}, Lorg/pjsip/pjsua/pjsua_call_info;-><init>()V

    .line 65
    .local v1, "pjInfo":Lorg/pjsip/pjsua/pjsua_call_info;
    invoke-virtual {p0}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getCallId()I

    move-result v9

    invoke-static {v9, v1}, Lorg/pjsip/pjsua/pjsua;->call_get_info(ILorg/pjsip/pjsua/pjsua_call_info;)I

    move-result v4

    .line 67
    .local v4, "status":I
    sget v9, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    if-ne v4, v9, :cond_7

    .line 69
    invoke-static {p0, v1, p2}, Lcom/weirdvoice/pjsip/PjSipCalls;->updateSession(Lcom/weirdvoice/service/impl/SipCallSessionImpl;Lorg/pjsip/pjsua/pjsua_call_info;Landroid/content/Context;)V

    .line 72
    if-eqz p1, :cond_1

    .line 74
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->get_event_status_code(Lorg/pjsip/pjsua/pjsip_event;)I

    move-result v5

    .line 75
    .local v5, "status_code":I
    if-nez v5, :cond_0

    .line 77
    :try_start_0
    invoke-virtual {v1}, Lorg/pjsip/pjsua/pjsua_call_info;->getLast_status()Lorg/pjsip/pjsua/pjsip_status_code;

    move-result-object v9

    invoke-virtual {v9}, Lorg/pjsip/pjsua/pjsip_status_code;->swigValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 82
    :cond_0
    :goto_0
    invoke-virtual {p0, v5}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setLastStatusCode(I)V

    .line 83
    const-string v9, "PjSipCalls"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Last status code is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Lorg/pjsip/pjsua/pjsua_call_info;->getLast_status_text()Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v9

    invoke-static {v9}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "status_text":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setLastStatusComment(Ljava/lang/String;)V

    .line 89
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->get_event_reason_code(Lorg/pjsip/pjsua/pjsip_event;)I

    move-result v2

    .line 90
    .local v2, "reason_code":I
    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {p0, v2}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setLastReasonCode(I)V

    .line 96
    .end local v2    # "reason_code":I
    .end local v5    # "status_code":I
    .end local v6    # "status_text":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getCallId()I

    move-result v9

    invoke-static {v9}, Lorg/pjsip/pjsua/pjsua;->call_secure_sig_level(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setSignalisationSecure(I)V

    .line 98
    invoke-virtual {p0}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getCallId()I

    move-result v9

    .line 97
    invoke-static {v9}, Lorg/pjsip/pjsua/pjsua;->call_secure_media_info(I)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v9

    invoke-static {v9}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "secureInfo":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setMediaSecureInfo(Ljava/lang/String;)V

    .line 100
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {p0, v9}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setMediaSecure(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getCallId()I

    move-result v9

    invoke-static {v9}, Lorg/pjsip/pjsua/pjsua;->jzrtp_getInfoFromCall(I)Lorg/pjsip/pjsua/zrtp_state_info;

    move-result-object v8

    .line 102
    .local v8, "zrtpInfo":Lorg/pjsip/pjsua/zrtp_state_info;
    invoke-virtual {v8}, Lorg/pjsip/pjsua/zrtp_state_info;->getSas_verified()I

    move-result v9

    sget v10, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    if-ne v9, v10, :cond_4

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p0, v9}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setZrtpSASVerified(Z)V

    .line 103
    invoke-virtual {v8}, Lorg/pjsip/pjsua/zrtp_state_info;->getSecure()I

    move-result v9

    sget v10, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    if-ne v9, v10, :cond_5

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p0, v9}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setHasZrtp(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getCallId()I

    move-result v9

    invoke-static {v9}, Lorg/pjsip/pjsua/pjsua;->call_get_vid_stream_idx(I)I

    move-result v7

    .line 107
    .local v7, "vidStreamIdx":I
    if-ltz v7, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getCallId()I

    move-result v9

    sget-object v10, Lorg/pjsip/pjsua/pjmedia_dir;->PJMEDIA_DIR_DECODING:Lorg/pjsip/pjsua/pjmedia_dir;

    invoke-static {v9, v7, v10}, Lorg/pjsip/pjsua/pjsua;->call_vid_stream_is_running(IILorg/pjsip/pjsua/pjmedia_dir;)I

    move-result v0

    .line 109
    .local v0, "hasVid":I
    sget v9, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    if-ne v0, v9, :cond_6

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {p0, v9}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setMediaHasVideo(Z)V

    .line 118
    .end local v0    # "hasVid":I
    .end local v3    # "secureInfo":Ljava/lang/String;
    .end local v7    # "vidStreamIdx":I
    .end local v8    # "zrtpInfo":Lorg/pjsip/pjsua/zrtp_state_info;
    :cond_2
    :goto_5
    return-void

    .line 100
    .restart local v3    # "secureInfo":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x1

    goto :goto_1

    .line 102
    .restart local v8    # "zrtpInfo":Lorg/pjsip/pjsua/zrtp_state_info;
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 103
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 109
    .restart local v0    # "hasVid":I
    .restart local v7    # "vidStreamIdx":I
    :cond_6
    const/4 v9, 0x0

    goto :goto_4

    .line 114
    .end local v0    # "hasVid":I
    .end local v3    # "secureInfo":Ljava/lang/String;
    .end local v7    # "vidStreamIdx":I
    .end local v8    # "zrtpInfo":Lorg/pjsip/pjsua/zrtp_state_info;
    :cond_7
    const-string v9, "PjSipCalls"

    .line 115
    const-string v10, "Call info from does not exists in stack anymore - assume it has been disconnected"

    .line 114
    invoke-static {v9, v10}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v9, Lorg/pjsip/pjsua/pjsip_inv_state;->PJSIP_INV_STATE_DISCONNECTED:Lorg/pjsip/pjsua/pjsip_inv_state;

    invoke-virtual {v9}, Lorg/pjsip/pjsua/pjsip_inv_state;->swigValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setCallState(I)V

    goto :goto_5

    .line 78
    .restart local v5    # "status_code":I
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method

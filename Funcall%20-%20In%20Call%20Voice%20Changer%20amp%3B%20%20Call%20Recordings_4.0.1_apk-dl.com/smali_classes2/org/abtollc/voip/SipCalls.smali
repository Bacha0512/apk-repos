.class public final Lorg/abtollc/voip/SipCalls;
.super Ljava/lang/Object;
.source "SipCalls.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "SipCalls"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static dumpCallInfo(I)Ljava/lang/String;
    .locals 2
    .param p0, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 139
    sget v0, Lorg/abtollc/jni/pjsua;->PJ_TRUE:I

    const-string v1, " "

    invoke-static {p0, v0, v1}, Lorg/abtollc/jni/pjsua;->call_dump(IILjava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v0

    invoke-static {v0}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static updateSession(Lorg/abtollc/api/SipCallSession;Lorg/abtollc/jni/pjsua_call_info;Lorg/abtollc/voip/SipService;)V
    .locals 8
    .param p0, "session"    # Lorg/abtollc/api/SipCallSession;
    .param p1, "pjCallInfo"    # Lorg/abtollc/jni/pjsua_call_info;
    .param p2, "service"    # Lorg/abtollc/voip/SipService;

    .prologue
    .line 106
    invoke-virtual {p1}, Lorg/abtollc/jni/pjsua_call_info;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/abtollc/api/SipCallSession;->setCallId(I)V

    .line 110
    invoke-virtual {p1}, Lorg/abtollc/jni/pjsua_call_info;->getState()Lorg/abtollc/jni/pjsip_inv_state;

    move-result-object v3

    invoke-virtual {v3}, Lorg/abtollc/jni/pjsip_inv_state;->swigValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/abtollc/api/SipCallSession;->setCallState(I)V

    .line 111
    invoke-virtual {p1}, Lorg/abtollc/jni/pjsua_call_info;->getMedia_status()Lorg/abtollc/jni/pjsua_call_media_status;

    move-result-object v3

    invoke-virtual {v3}, Lorg/abtollc/jni/pjsua_call_media_status;->swigValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/abtollc/api/SipCallSession;->setMediaStatus(I)V

    .line 112
    invoke-virtual {p1}, Lorg/abtollc/jni/pjsua_call_info;->getRemote_info()Lorg/abtollc/jni/pj_str_t;

    move-result-object v3

    invoke-static {v3}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/abtollc/api/SipCallSession;->setRemoteContact(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lorg/abtollc/jni/pjsua_call_info;->getConf_slot()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/abtollc/api/SipCallSession;->setConfPort(I)V

    .line 116
    invoke-virtual {p1}, Lorg/abtollc/jni/pjsua_call_info;->getAcc_id()I

    move-result v2

    .line 118
    .local v2, "pjAccId":I
    iget-object v3, p2, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {p2, v2}, Lorg/abtollc/voip/SipService;->getAccountIdForPjsipId(I)J

    move-result-wide v4

    sget-object v6, Lorg/abtollc/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lorg/abtollc/api/SipProfile;->getProfileFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lorg/abtollc/api/SipProfile;

    move-result-object v0

    .line 120
    .local v0, "account":Lorg/abtollc/api/SipProfile;
    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lorg/abtollc/api/SipProfile;

    .end local v0    # "account":Lorg/abtollc/api/SipProfile;
    invoke-direct {v0}, Lorg/abtollc/api/SipProfile;-><init>()V

    .line 124
    .restart local v0    # "account":Lorg/abtollc/api/SipProfile;
    :cond_0
    iget-object v3, v0, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/abtollc/api/SipCallSession;->setAccId(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lorg/abtollc/jni/pjsua_call_info;->getConnect_duration()Lorg/abtollc/jni/pj_time_val;

    move-result-object v1

    .line 127
    .local v1, "duration":Lorg/abtollc/jni/pj_time_val;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1}, Lorg/abtollc/jni/pj_time_val;->getSec()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v6, v3

    sub-long/2addr v4, v6

    .line 128
    invoke-virtual {v1}, Lorg/abtollc/jni/pj_time_val;->getMsec()I

    move-result v3

    int-to-long v6, v3

    sub-long/2addr v4, v6

    .line 127
    invoke-virtual {p0, v4, v5}, Lorg/abtollc/api/SipCallSession;->setConnectStart(J)V

    .line 129
    return-void
.end method

.method public static updateSessionFromPj(Lorg/abtollc/api/SipCallSession;Lorg/abtollc/jni/pjsip_event;Lorg/abtollc/voip/SipService;)V
    .locals 12
    .param p0, "session"    # Lorg/abtollc/api/SipCallSession;
    .param p1, "e"    # Lorg/abtollc/jni/pjsip_event;
    .param p2, "service"    # Lorg/abtollc/voip/SipService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 42
    const-string v8, "SipCalls"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Update call "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v1, Lorg/abtollc/jni/pjsua_call_info;

    invoke-direct {v1}, Lorg/abtollc/jni/pjsua_call_info;-><init>()V

    .line 44
    .local v1, "pjInfo":Lorg/abtollc/jni/pjsua_call_info;
    invoke-virtual {p0}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v8

    invoke-static {v8, v1}, Lorg/abtollc/jni/pjsua;->call_get_info(ILorg/abtollc/jni/pjsua_call_info;)I

    move-result v3

    .line 46
    .local v3, "status":I
    sget v8, Lorg/abtollc/jni/pjsua;->PJ_SUCCESS:I

    if-ne v3, v8, :cond_8

    .line 48
    invoke-static {p0, v1, p2}, Lorg/abtollc/voip/SipCalls;->updateSession(Lorg/abtollc/api/SipCallSession;Lorg/abtollc/jni/pjsua_call_info;Lorg/abtollc/voip/SipService;)V

    .line 51
    if-eqz p1, :cond_1

    .line 52
    invoke-static {p1}, Lorg/abtollc/jni/pjsua;->get_event_status_code(Lorg/abtollc/jni/pjsip_event;)I

    move-result v4

    .line 53
    .local v4, "status_code":I
    if-nez v4, :cond_0

    .line 55
    :try_start_0
    invoke-virtual {v1}, Lorg/abtollc/jni/pjsua_call_info;->getLast_status()Lorg/abtollc/jni/pjsip_status_code;

    move-result-object v8

    invoke-virtual {v8}, Lorg/abtollc/jni/pjsip_status_code;->swigValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 60
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lorg/abtollc/api/SipCallSession;->setLastStatusCode(I)V

    .line 61
    const-string v8, "SipCalls"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Last status code is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Lorg/abtollc/jni/pjsua_call_info;->getLast_status_text()Lorg/abtollc/jni/pj_str_t;

    move-result-object v8

    invoke-static {v8}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "status_text":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lorg/abtollc/api/SipCallSession;->setLastStatusComment(Ljava/lang/String;)V

    .line 69
    .end local v4    # "status_code":I
    .end local v5    # "status_text":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v8

    .line 68
    invoke-static {v8}, Lorg/abtollc/jni/pjsua;->call_secure_info(I)Lorg/abtollc/jni/pj_str_t;

    move-result-object v8

    invoke-static {v8}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "secureInfo":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/abtollc/api/SipCallSession;->setMediaSecureInfo(Ljava/lang/String;)V

    .line 71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p0, v8}, Lorg/abtollc/api/SipCallSession;->setMediaSecure(Z)V

    .line 72
    invoke-virtual {p0}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v8

    invoke-static {v8}, Lorg/abtollc/jni/pjsua;->jzrtp_getInfoFromCall(I)Lorg/abtollc/jni/zrtp_state_info;

    move-result-object v7

    .line 73
    .local v7, "zrtpInfo":Lorg/abtollc/jni/zrtp_state_info;
    invoke-virtual {v7}, Lorg/abtollc/jni/zrtp_state_info;->getSas_verified()I

    move-result v8

    sget v9, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {p0, v8}, Lorg/abtollc/api/SipCallSession;->setZrtpSASVerified(Z)V

    .line 74
    invoke-virtual {v7}, Lorg/abtollc/jni/zrtp_state_info;->getSecure()I

    move-result v8

    sget v9, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    if-ne v8, v9, :cond_5

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {p0, v8}, Lorg/abtollc/api/SipCallSession;->setHasZrtp(Z)V

    .line 77
    invoke-virtual {v1}, Lorg/abtollc/jni/pjsua_call_info;->getRem_vid_cnt()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    .line 78
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lorg/abtollc/api/SipCallSession;->setMediaHasVideo(Z)V

    .line 94
    .end local v2    # "secureInfo":Ljava/lang/String;
    .end local v7    # "zrtpInfo":Lorg/abtollc/jni/zrtp_state_info;
    :cond_2
    :goto_4
    return-void

    .line 71
    .restart local v2    # "secureInfo":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 73
    .restart local v7    # "zrtpInfo":Lorg/abtollc/jni/zrtp_state_info;
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 74
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 80
    :cond_6
    invoke-virtual {p0}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v8

    invoke-static {v8}, Lorg/abtollc/jni/pjsua;->call_get_vid_stream_idx(I)I

    move-result v6

    .line 81
    .local v6, "vidStreamIdx":I
    if-ltz v6, :cond_2

    .line 82
    invoke-virtual {p0}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v8

    sget-object v9, Lorg/abtollc/jni/pjmedia_dir;->PJMEDIA_DIR_DECODING:Lorg/abtollc/jni/pjmedia_dir;

    invoke-static {v8, v6, v9}, Lorg/abtollc/jni/pjsua;->call_vid_stream_is_running(IILorg/abtollc/jni/pjmedia_dir;)I

    move-result v0

    .line 84
    .local v0, "hasVid":I
    sget v8, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    if-ne v0, v8, :cond_7

    const/4 v8, 0x1

    :goto_5
    invoke-virtual {p0, v8}, Lorg/abtollc/api/SipCallSession;->setMediaHasVideo(Z)V

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    .line 90
    .end local v0    # "hasVid":I
    .end local v2    # "secureInfo":Ljava/lang/String;
    .end local v6    # "vidStreamIdx":I
    .end local v7    # "zrtpInfo":Lorg/abtollc/jni/zrtp_state_info;
    :cond_8
    const-string v8, "SipCalls"

    const-string v9, "Call info from does not exists in stack anymore - assume it has been disconnected"

    invoke-static {v8, v9}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v8, Lorg/abtollc/jni/pjsip_inv_state;->PJSIP_INV_STATE_DISCONNECTED:Lorg/abtollc/jni/pjsip_inv_state;

    invoke-virtual {v8}, Lorg/abtollc/jni/pjsip_inv_state;->swigValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/abtollc/api/SipCallSession;->setCallState(I)V

    goto :goto_4

    .line 56
    .restart local v4    # "status_code":I
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

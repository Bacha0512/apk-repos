.class Lorg/abtollc/service/ABTOSipService$1$12;
.super Lorg/abtollc/service/ABTOSipService$ReturnRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->readCallMediaQuality(IZ)Lorg/abtollc/api/AbtoPhoneMediaQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/ABTOSipService$1;

.field final synthetic val$callId:I

.field final synthetic val$isVideo:Z


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService$1;IZ)V
    .locals 1
    .param p1, "this$1"    # Lorg/abtollc/service/ABTOSipService$1;

    .prologue
    .line 456
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$12;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iput p2, p0, Lorg/abtollc/service/ABTOSipService$1$12;->val$callId:I

    iput-boolean p3, p0, Lorg/abtollc/service/ABTOSipService$1$12;->val$isVideo:Z

    iget-object v0, p1, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-direct {p0, v0}, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    return-void
.end method


# virtual methods
.method protected runWithReturn()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 459
    new-instance v0, Lorg/abtollc/jni/pjsua_call_info;

    invoke-direct {v0}, Lorg/abtollc/jni/pjsua_call_info;-><init>()V

    .line 460
    .local v0, "ci":Lorg/abtollc/jni/pjsua_call_info;
    iget v7, p0, Lorg/abtollc/service/ABTOSipService$1$12;->val$callId:I

    invoke-static {v7, v0}, Lorg/abtollc/jni/pjsua;->call_get_info(ILorg/abtollc/jni/pjsua_call_info;)I

    move-result v5

    .line 461
    .local v5, "status":I
    sget v7, Lorg/abtollc/jni/pjsua;->PJ_SUCCESS:I

    if-ne v5, v7, :cond_3

    .line 462
    iget-boolean v7, p0, Lorg/abtollc/service/ABTOSipService$1$12;->val$isVideo:Z

    if-eqz v7, :cond_1

    sget-object v6, Lorg/abtollc/jni/pjmedia_type;->PJMEDIA_TYPE_VIDEO:Lorg/abtollc/jni/pjmedia_type;

    .line 463
    .local v6, "type":Lorg/abtollc/jni/pjmedia_type;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    int-to-long v8, v1

    invoke-virtual {v0}, Lorg/abtollc/jni/pjsua_call_info;->getMedia_cnt()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_3

    .line 464
    new-instance v3, Lorg/abtollc/jni/pjsua_stream_info;

    invoke-direct {v3}, Lorg/abtollc/jni/pjsua_stream_info;-><init>()V

    .line 465
    .local v3, "si":Lorg/abtollc/jni/pjsua_stream_info;
    iget v7, p0, Lorg/abtollc/service/ABTOSipService$1$12;->val$callId:I

    int-to-long v8, v1

    invoke-static {v7, v8, v9, v3}, Lorg/abtollc/jni/pjsua;->call_get_stream_info(IJLorg/abtollc/jni/pjsua_stream_info;)I

    move-result v5

    .line 466
    sget v7, Lorg/abtollc/jni/pjsua;->PJ_SUCCESS:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v3}, Lorg/abtollc/jni/pjsua_stream_info;->getType()Lorg/abtollc/jni/pjmedia_type;

    move-result-object v7

    if-eq v6, v7, :cond_2

    .line 463
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 462
    .end local v1    # "i":I
    .end local v3    # "si":Lorg/abtollc/jni/pjsua_stream_info;
    .end local v6    # "type":Lorg/abtollc/jni/pjmedia_type;
    :cond_1
    sget-object v6, Lorg/abtollc/jni/pjmedia_type;->PJMEDIA_TYPE_AUDIO:Lorg/abtollc/jni/pjmedia_type;

    goto :goto_0

    .line 470
    .restart local v1    # "i":I
    .restart local v3    # "si":Lorg/abtollc/jni/pjsua_stream_info;
    .restart local v6    # "type":Lorg/abtollc/jni/pjmedia_type;
    :cond_2
    new-instance v4, Lorg/abtollc/jni/pjsua_stream_stat;

    invoke-direct {v4}, Lorg/abtollc/jni/pjsua_stream_stat;-><init>()V

    .line 471
    .local v4, "stat":Lorg/abtollc/jni/pjsua_stream_stat;
    iget v7, p0, Lorg/abtollc/service/ABTOSipService$1$12;->val$callId:I

    int-to-long v8, v1

    invoke-static {v7, v8, v9, v4}, Lorg/abtollc/jni/pjsua;->call_get_stream_stat(IJLorg/abtollc/jni/pjsua_stream_stat;)I

    move-result v5

    .line 473
    sget v7, Lorg/abtollc/jni/pjsua;->PJ_SUCCESS:I

    if-ne v5, v7, :cond_0

    .line 477
    new-instance v2, Lorg/abtollc/api/AbtoPhoneMediaQuality;

    invoke-direct {v2}, Lorg/abtollc/api/AbtoPhoneMediaQuality;-><init>()V

    .line 479
    .local v2, "quality":Lorg/abtollc/api/AbtoPhoneMediaQuality;
    invoke-virtual {v4}, Lorg/abtollc/jni/pjsua_stream_stat;->getRtcp()Lorg/abtollc/jni/pjmedia_rtcp_stat;

    move-result-object v7

    invoke-virtual {v7}, Lorg/abtollc/jni/pjmedia_rtcp_stat;->getRtt()Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;

    move-result-object v7

    invoke-static {v7}, Lorg/abtollc/jni/pjsua;->pj_math_stat_get_min(Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lorg/abtollc/api/AbtoPhoneMediaQuality;->setMinRtt(J)V

    .line 480
    invoke-virtual {v4}, Lorg/abtollc/jni/pjsua_stream_stat;->getRtcp()Lorg/abtollc/jni/pjmedia_rtcp_stat;

    move-result-object v7

    invoke-virtual {v7}, Lorg/abtollc/jni/pjmedia_rtcp_stat;->getRtt()Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;

    move-result-object v7

    invoke-static {v7}, Lorg/abtollc/jni/pjsua;->pj_math_stat_get_max(Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lorg/abtollc/api/AbtoPhoneMediaQuality;->setMaxRtt(J)V

    .line 481
    invoke-virtual {v4}, Lorg/abtollc/jni/pjsua_stream_stat;->getRtcp()Lorg/abtollc/jni/pjmedia_rtcp_stat;

    move-result-object v7

    invoke-virtual {v7}, Lorg/abtollc/jni/pjmedia_rtcp_stat;->getRtt()Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;

    move-result-object v7

    invoke-static {v7}, Lorg/abtollc/jni/pjsua;->pj_math_stat_get_avg(Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lorg/abtollc/api/AbtoPhoneMediaQuality;->setAvgRtt(J)V

    .line 483
    invoke-virtual {v4}, Lorg/abtollc/jni/pjsua_stream_stat;->getJbuf()Lorg/abtollc/jni/pjmedia_jb_state;

    move-result-object v7

    invoke-virtual {v7}, Lorg/abtollc/jni/pjmedia_jb_state;->getMin_delay()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lorg/abtollc/api/AbtoPhoneMediaQuality;->setMinBufferJitter(J)V

    .line 484
    invoke-virtual {v4}, Lorg/abtollc/jni/pjsua_stream_stat;->getJbuf()Lorg/abtollc/jni/pjmedia_jb_state;

    move-result-object v7

    invoke-virtual {v7}, Lorg/abtollc/jni/pjmedia_jb_state;->getMax_delay()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lorg/abtollc/api/AbtoPhoneMediaQuality;->setMaxBufferJitter(J)V

    .line 485
    invoke-virtual {v4}, Lorg/abtollc/jni/pjsua_stream_stat;->getJbuf()Lorg/abtollc/jni/pjmedia_jb_state;

    move-result-object v7

    invoke-virtual {v7}, Lorg/abtollc/jni/pjmedia_jb_state;->getAvg_delay()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lorg/abtollc/api/AbtoPhoneMediaQuality;->setAvgBufferJitter(J)V

    .line 486
    invoke-virtual {v4}, Lorg/abtollc/jni/pjsua_stream_stat;->getJbuf()Lorg/abtollc/jni/pjmedia_jb_state;

    move-result-object v7

    invoke-virtual {v7}, Lorg/abtollc/jni/pjmedia_jb_state;->getDev_delay()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lorg/abtollc/api/AbtoPhoneMediaQuality;->setDevBufferJitter(J)V

    .line 487
    invoke-virtual {v4}, Lorg/abtollc/jni/pjsua_stream_stat;->getJbuf()Lorg/abtollc/jni/pjmedia_jb_state;

    move-result-object v7

    invoke-virtual {v7}, Lorg/abtollc/jni/pjmedia_jb_state;->getBurst()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lorg/abtollc/api/AbtoPhoneMediaQuality;->setBurstJitter(J)V

    .line 488
    invoke-virtual {v4}, Lorg/abtollc/jni/pjsua_stream_stat;->getJbuf()Lorg/abtollc/jni/pjmedia_jb_state;

    move-result-object v7

    invoke-virtual {v7}, Lorg/abtollc/jni/pjmedia_jb_state;->getAvg_burst()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lorg/abtollc/api/AbtoPhoneMediaQuality;->setAvgBurstJitter(J)V

    .line 490
    invoke-virtual {v4}, Lorg/abtollc/jni/pjsua_stream_stat;->getRtcp()Lorg/abtollc/jni/pjmedia_rtcp_stat;

    move-result-object v7

    invoke-virtual {v7}, Lorg/abtollc/jni/pjmedia_rtcp_stat;->getRx()Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;

    move-result-object v7

    invoke-virtual {v7}, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->getPkt()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lorg/abtollc/api/AbtoPhoneMediaQuality;->setRxPackets(J)V

    .line 491
    invoke-virtual {v4}, Lorg/abtollc/jni/pjsua_stream_stat;->getRtcp()Lorg/abtollc/jni/pjmedia_rtcp_stat;

    move-result-object v7

    invoke-virtual {v7}, Lorg/abtollc/jni/pjmedia_rtcp_stat;->getTx()Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;

    move-result-object v7

    invoke-virtual {v7}, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->getPkt()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lorg/abtollc/api/AbtoPhoneMediaQuality;->setTxPackets(J)V

    .line 497
    .end local v1    # "i":I
    .end local v2    # "quality":Lorg/abtollc/api/AbtoPhoneMediaQuality;
    .end local v3    # "si":Lorg/abtollc/jni/pjsua_stream_info;
    .end local v4    # "stat":Lorg/abtollc/jni/pjsua_stream_stat;
    .end local v6    # "type":Lorg/abtollc/jni/pjmedia_type;
    :goto_2
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

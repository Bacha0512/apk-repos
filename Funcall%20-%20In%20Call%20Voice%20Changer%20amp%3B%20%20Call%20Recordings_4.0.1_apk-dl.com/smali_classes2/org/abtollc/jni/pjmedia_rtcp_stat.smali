.class public Lorg/abtollc/jni/pjmedia_rtcp_stat;
.super Ljava/lang/Object;
.source "pjmedia_rtcp_stat.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lorg/abtollc/jni/pjsuaJNI;->new_pjmedia_rtcp_stat()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/abtollc/jni/pjmedia_rtcp_stat;-><init>(JZ)V

    .line 107
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1
    .param p1, "cPtr"    # J
    .param p3, "cMemoryOwn"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lorg/abtollc/jni/pjmedia_rtcp_stat;)J
    .locals 2
    .param p0, "obj"    # Lorg/abtollc/jni/pjmedia_rtcp_stat;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/abtollc/jni/pjsuaJNI;->delete_pjmedia_rtcp_stat(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lorg/abtollc/jni/pjmedia_rtcp_stat;->delete()V

    .line 26
    return-void
.end method

.method public getPeer_sdes()Lorg/abtollc/jni/SWIGTYPE_p_pjmedia_rtcp_sdes;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Lorg/abtollc/jni/SWIGTYPE_p_pjmedia_rtcp_sdes;

    iget-wide v2, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stat_peer_sdes_get(JLorg/abtollc/jni/pjmedia_rtcp_stat;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/abtollc/jni/SWIGTYPE_p_pjmedia_rtcp_sdes;-><init>(JZ)V

    return-object v0
.end method

.method public getPeer_sdes_buf_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stat_peer_sdes_buf__get(JLorg/abtollc/jni/pjmedia_rtcp_stat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRtp_tx_last_seq()I
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stat_rtp_tx_last_seq_get(JLorg/abtollc/jni/pjmedia_rtcp_stat;)I

    move-result v0

    return v0
.end method

.method public getRtp_tx_last_ts()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stat_rtp_tx_last_ts_get(JLorg/abtollc/jni/pjmedia_rtcp_stat;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRtt()Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;

    iget-wide v2, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stat_rtt_get(JLorg/abtollc/jni/pjmedia_rtcp_stat;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;-><init>(JZ)V

    return-object v0
.end method

.method public getRx()Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;
    .locals 4

    .prologue
    .line 61
    iget-wide v2, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stat_rx_get(JLorg/abtollc/jni/pjmedia_rtcp_stat;)J

    move-result-wide v0

    .line 62
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;-><init>(JZ)V

    goto :goto_0
.end method

.method public getStart()Lorg/abtollc/jni/pj_time_val;
    .locals 4

    .prologue
    .line 43
    iget-wide v2, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stat_start_get(JLorg/abtollc/jni/pjmedia_rtcp_stat;)J

    move-result-wide v0

    .line 44
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/abtollc/jni/pj_time_val;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/abtollc/jni/pj_time_val;-><init>(JZ)V

    goto :goto_0
.end method

.method public getTx()Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;
    .locals 4

    .prologue
    .line 52
    iget-wide v2, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stat_tx_get(JLorg/abtollc/jni/pjmedia_rtcp_stat;)J

    move-result-wide v0

    .line 53
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;-><init>(JZ)V

    goto :goto_0
.end method

.method public setPeer_sdes(Lorg/abtollc/jni/SWIGTYPE_p_pjmedia_rtcp_sdes;)V
    .locals 4
    .param p1, "value"    # Lorg/abtollc/jni/SWIGTYPE_p_pjmedia_rtcp_sdes;

    .prologue
    .line 90
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    invoke-static {p1}, Lorg/abtollc/jni/SWIGTYPE_p_pjmedia_rtcp_sdes;->getCPtr(Lorg/abtollc/jni/SWIGTYPE_p_pjmedia_rtcp_sdes;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stat_peer_sdes_set(JLorg/abtollc/jni/pjmedia_rtcp_stat;J)V

    .line 91
    return-void
.end method

.method public setPeer_sdes_buf_(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stat_peer_sdes_buf__set(JLorg/abtollc/jni/pjmedia_rtcp_stat;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public setRtp_tx_last_seq(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stat_rtp_tx_last_seq_set(JLorg/abtollc/jni/pjmedia_rtcp_stat;I)V

    .line 83
    return-void
.end method

.method public setRtp_tx_last_ts(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stat_rtp_tx_last_ts_set(JLorg/abtollc/jni/pjmedia_rtcp_stat;J)V

    .line 75
    return-void
.end method

.method public setRtt(Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;)V
    .locals 4
    .param p1, "value"    # Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    invoke-static {p1}, Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;->getCPtr(Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stat_rtt_set(JLorg/abtollc/jni/pjmedia_rtcp_stat;J)V

    .line 67
    return-void
.end method

.method public setRx(Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;)V
    .locals 6
    .param p1, "value"    # Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    invoke-static {p1}, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->getCPtr(Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stat_rx_set(JLorg/abtollc/jni/pjmedia_rtcp_stat;JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;)V

    .line 58
    return-void
.end method

.method public setStart(Lorg/abtollc/jni/pj_time_val;)V
    .locals 6
    .param p1, "value"    # Lorg/abtollc/jni/pj_time_val;

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    invoke-static {p1}, Lorg/abtollc/jni/pj_time_val;->getCPtr(Lorg/abtollc/jni/pj_time_val;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stat_start_set(JLorg/abtollc/jni/pjmedia_rtcp_stat;JLorg/abtollc/jni/pj_time_val;)V

    .line 40
    return-void
.end method

.method public setTx(Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;)V
    .locals 6
    .param p1, "value"    # Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stat;->swigCPtr:J

    invoke-static {p1}, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->getCPtr(Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stat_tx_set(JLorg/abtollc/jni/pjmedia_rtcp_stat;JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;)V

    .line 49
    return-void
.end method

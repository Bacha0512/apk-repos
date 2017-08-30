.class public Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;
.super Ljava/lang/Object;
.source "pjmedia_rtcp_stream_stat.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lorg/abtollc/jni/pjsuaJNI;->new_pjmedia_rtcp_stream_stat()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;-><init>(JZ)V

    .line 121
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
    iput-boolean p3, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;)J
    .locals 2
    .param p0, "obj"    # Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/abtollc/jni/pjsuaJNI;->delete_pjmedia_rtcp_stream_stat(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->delete()V

    .line 26
    return-void
.end method

.method public getBytes()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_bytes_get(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDiscard()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_discard_get(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDup()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_dup_get(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getJitter()Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;
    .locals 4

    .prologue
    .line 116
    new-instance v0, Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;

    iget-wide v2, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_jitter_get(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;-><init>(JZ)V

    return-object v0
.end method

.method public getLoss()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_loss_get(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLoss_period()Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;

    iget-wide v2, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_loss_period_get(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;-><init>(JZ)V

    return-object v0
.end method

.method public getPkt()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_pkt_get(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReorder()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_reorder_get(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpdate()Lorg/abtollc/jni/pj_time_val;
    .locals 4

    .prologue
    .line 43
    iget-wide v2, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_update_get(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;)J

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

.method public getUpdate_cnt()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_update_cnt_get(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setBytes(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_bytes_set(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;J)V

    .line 65
    return-void
.end method

.method public setDiscard(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 72
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_discard_set(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;J)V

    .line 73
    return-void
.end method

.method public setDup(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 96
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_dup_set(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;J)V

    .line 97
    return-void
.end method

.method public setJitter(Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;)V
    .locals 4
    .param p1, "value"    # Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {p1}, Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;->getCPtr(Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_jitter_set(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;J)V

    .line 113
    return-void
.end method

.method public setLoss(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_loss_set(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;J)V

    .line 81
    return-void
.end method

.method public setLoss_period(Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;)V
    .locals 4
    .param p1, "value"    # Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {p1}, Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;->getCPtr(Lorg/abtollc/jni/SWIGTYPE_p_pj_math_stat;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_loss_period_set(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;J)V

    .line 105
    return-void
.end method

.method public setPkt(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_pkt_set(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;J)V

    .line 57
    return-void
.end method

.method public setReorder(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_reorder_set(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;J)V

    .line 89
    return-void
.end method

.method public setUpdate(Lorg/abtollc/jni/pj_time_val;)V
    .locals 6
    .param p1, "value"    # Lorg/abtollc/jni/pj_time_val;

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {p1}, Lorg/abtollc/jni/pj_time_val;->getCPtr(Lorg/abtollc/jni/pj_time_val;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_update_set(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;JLorg/abtollc/jni/pj_time_val;)V

    .line 40
    return-void
.end method

.method public setUpdate_cnt(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_rtcp_stream_stat;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_rtcp_stream_stat_update_cnt_set(JLorg/abtollc/jni/pjmedia_rtcp_stream_stat;J)V

    .line 49
    return-void
.end method

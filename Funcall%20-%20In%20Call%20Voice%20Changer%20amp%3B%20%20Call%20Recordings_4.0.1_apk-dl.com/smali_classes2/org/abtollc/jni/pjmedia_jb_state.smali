.class public Lorg/abtollc/jni/pjmedia_jb_state;
.super Ljava/lang/Object;
.source "pjmedia_jb_state.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 151
    invoke-static {}, Lorg/abtollc/jni/pjsuaJNI;->new_pjmedia_jb_state()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/abtollc/jni/pjmedia_jb_state;-><init>(JZ)V

    .line 152
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
    iput-boolean p3, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lorg/abtollc/jni/pjmedia_jb_state;)J
    .locals 2
    .param p0, "obj"    # Lorg/abtollc/jni/pjmedia_jb_state;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/abtollc/jni/pjsuaJNI;->delete_pjmedia_jb_state(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/abtollc/jni/pjmedia_jb_state;->delete()V

    .line 26
    return-void
.end method

.method public getAvg_burst()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_avg_burst_get(JLorg/abtollc/jni/pjmedia_jb_state;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAvg_delay()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_avg_delay_get(JLorg/abtollc/jni/pjmedia_jb_state;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBurst()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_burst_get(JLorg/abtollc/jni/pjmedia_jb_state;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDev_delay()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_dev_delay_get(JLorg/abtollc/jni/pjmedia_jb_state;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDiscard()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_discard_get(JLorg/abtollc/jni/pjmedia_jb_state;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEmpty()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_empty_get(JLorg/abtollc/jni/pjmedia_jb_state;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrame_size()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_frame_size_get(JLorg/abtollc/jni/pjmedia_jb_state;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLost()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_lost_get(JLorg/abtollc/jni/pjmedia_jb_state;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMax_delay()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_max_delay_get(JLorg/abtollc/jni/pjmedia_jb_state;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMax_prefetch()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_max_prefetch_get(JLorg/abtollc/jni/pjmedia_jb_state;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMin_delay()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_min_delay_get(JLorg/abtollc/jni/pjmedia_jb_state;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMin_prefetch()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_min_prefetch_get(JLorg/abtollc/jni/pjmedia_jb_state;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrefetch()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_prefetch_get(JLorg/abtollc/jni/pjmedia_jb_state;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_size_get(JLorg/abtollc/jni/pjmedia_jb_state;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setAvg_burst(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_avg_burst_set(JLorg/abtollc/jni/pjmedia_jb_state;J)V

    .line 120
    return-void
.end method

.method public setAvg_delay(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_avg_delay_set(JLorg/abtollc/jni/pjmedia_jb_state;J)V

    .line 88
    return-void
.end method

.method public setBurst(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_burst_set(JLorg/abtollc/jni/pjmedia_jb_state;J)V

    .line 64
    return-void
.end method

.method public setDev_delay(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 111
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_dev_delay_set(JLorg/abtollc/jni/pjmedia_jb_state;J)V

    .line 112
    return-void
.end method

.method public setDiscard(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_discard_set(JLorg/abtollc/jni/pjmedia_jb_state;J)V

    .line 136
    return-void
.end method

.method public setEmpty(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 143
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_empty_set(JLorg/abtollc/jni/pjmedia_jb_state;J)V

    .line 144
    return-void
.end method

.method public setFrame_size(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_frame_size_set(JLorg/abtollc/jni/pjmedia_jb_state;J)V

    .line 40
    return-void
.end method

.method public setLost(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 127
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_lost_set(JLorg/abtollc/jni/pjmedia_jb_state;J)V

    .line 128
    return-void
.end method

.method public setMax_delay(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_max_delay_set(JLorg/abtollc/jni/pjmedia_jb_state;J)V

    .line 104
    return-void
.end method

.method public setMax_prefetch(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_max_prefetch_set(JLorg/abtollc/jni/pjmedia_jb_state;J)V

    .line 56
    return-void
.end method

.method public setMin_delay(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 95
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_min_delay_set(JLorg/abtollc/jni/pjmedia_jb_state;J)V

    .line 96
    return-void
.end method

.method public setMin_prefetch(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_min_prefetch_set(JLorg/abtollc/jni/pjmedia_jb_state;J)V

    .line 48
    return-void
.end method

.method public setPrefetch(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 71
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_prefetch_set(JLorg/abtollc/jni/pjmedia_jb_state;J)V

    .line 72
    return-void
.end method

.method public setSize(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/abtollc/jni/pjmedia_jb_state;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/abtollc/jni/pjsuaJNI;->pjmedia_jb_state_size_set(JLorg/abtollc/jni/pjmedia_jb_state;J)V

    .line 80
    return-void
.end method

.class public Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;
.super Ljava/lang/Object;
.source "pjsua_call_vid_strm_op_param.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lorg/abtollc/jni/pjsuaJNI;->new_pjsua_call_vid_strm_op_param()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;-><init>(JZ)V

    .line 64
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
    iput-boolean p3, p0, Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;)J
    .locals 2
    .param p0, "obj"    # Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/abtollc/jni/pjsuaJNI;->delete_pjsua_call_vid_strm_op_param(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;->delete()V

    .line 26
    return-void
.end method

.method public getCap_dev()Lorg/abtollc/jni/SWIGTYPE_p_pjmedia_vid_dev_index;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Lorg/abtollc/jni/SWIGTYPE_p_pjmedia_vid_dev_index;

    iget-wide v2, p0, Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjsua_call_vid_strm_op_param_cap_dev_get(JLorg/abtollc/jni/pjsua_call_vid_strm_op_param;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/abtollc/jni/SWIGTYPE_p_pjmedia_vid_dev_index;-><init>(JZ)V

    return-object v0
.end method

.method public getDir()Lorg/abtollc/jni/pjmedia_dir;
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjsua_call_vid_strm_op_param_dir_get(JLorg/abtollc/jni/pjsua_call_vid_strm_op_param;)I

    move-result v0

    invoke-static {v0}, Lorg/abtollc/jni/pjmedia_dir;->swigToEnum(I)Lorg/abtollc/jni/pjmedia_dir;

    move-result-object v0

    return-object v0
.end method

.method public getMed_idx()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->pjsua_call_vid_strm_op_param_med_idx_get(JLorg/abtollc/jni/pjsua_call_vid_strm_op_param;)I

    move-result v0

    return v0
.end method

.method public setCap_dev(Lorg/abtollc/jni/SWIGTYPE_p_pjmedia_vid_dev_index;)V
    .locals 4
    .param p1, "value"    # Lorg/abtollc/jni/SWIGTYPE_p_pjmedia_vid_dev_index;

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;->swigCPtr:J

    invoke-static {p1}, Lorg/abtollc/jni/SWIGTYPE_p_pjmedia_vid_dev_index;->getCPtr(Lorg/abtollc/jni/SWIGTYPE_p_pjmedia_vid_dev_index;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/abtollc/jni/pjsuaJNI;->pjsua_call_vid_strm_op_param_cap_dev_set(JLorg/abtollc/jni/pjsua_call_vid_strm_op_param;J)V

    .line 56
    return-void
.end method

.method public setDir(Lorg/abtollc/jni/pjmedia_dir;)V
    .locals 3
    .param p1, "value"    # Lorg/abtollc/jni/pjmedia_dir;

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;->swigCPtr:J

    invoke-virtual {p1}, Lorg/abtollc/jni/pjmedia_dir;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/abtollc/jni/pjsuaJNI;->pjsua_call_vid_strm_op_param_dir_set(JLorg/abtollc/jni/pjsua_call_vid_strm_op_param;I)V

    .line 48
    return-void
.end method

.method public setMed_idx(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/abtollc/jni/pjsuaJNI;->pjsua_call_vid_strm_op_param_med_idx_set(JLorg/abtollc/jni/pjsua_call_vid_strm_op_param;I)V

    .line 40
    return-void
.end method

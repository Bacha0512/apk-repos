.class public Lorg/abtollc/jni/zrtp_state_info;
.super Ljava/lang/Object;
.source "zrtp_state_info.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lorg/abtollc/jni/pjsuaJNI;->new_zrtp_state_info()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/abtollc/jni/zrtp_state_info;-><init>(JZ)V

    .line 82
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
    iput-boolean p3, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lorg/abtollc/jni/zrtp_state_info;)J
    .locals 2
    .param p0, "obj"    # Lorg/abtollc/jni/zrtp_state_info;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/abtollc/jni/pjsuaJNI;->delete_zrtp_state_info(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/abtollc/jni/zrtp_state_info;->delete()V

    .line 26
    return-void
.end method

.method public getCall_id()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->zrtp_state_info_call_id_get(JLorg/abtollc/jni/zrtp_state_info;)I

    move-result v0

    return v0
.end method

.method public getCipher()Lorg/abtollc/jni/pj_str_t;
    .locals 4

    .prologue
    .line 68
    iget-wide v2, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/abtollc/jni/pjsuaJNI;->zrtp_state_info_cipher_get(JLorg/abtollc/jni/zrtp_state_info;)J

    move-result-wide v0

    .line 69
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/abtollc/jni/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/abtollc/jni/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getSas()Lorg/abtollc/jni/pj_str_t;
    .locals 4

    .prologue
    .line 59
    iget-wide v2, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/abtollc/jni/pjsuaJNI;->zrtp_state_info_sas_get(JLorg/abtollc/jni/zrtp_state_info;)J

    move-result-wide v0

    .line 60
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/abtollc/jni/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/abtollc/jni/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getSas_verified()I
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->zrtp_state_info_sas_verified_get(JLorg/abtollc/jni/zrtp_state_info;)I

    move-result v0

    return v0
.end method

.method public getSecure()I
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/abtollc/jni/pjsuaJNI;->zrtp_state_info_secure_get(JLorg/abtollc/jni/zrtp_state_info;)I

    move-result v0

    return v0
.end method

.method public setCall_id(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/abtollc/jni/pjsuaJNI;->zrtp_state_info_call_id_set(JLorg/abtollc/jni/zrtp_state_info;I)V

    .line 40
    return-void
.end method

.method public setCipher(Lorg/abtollc/jni/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/abtollc/jni/pj_str_t;

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCPtr:J

    invoke-static {p1}, Lorg/abtollc/jni/pj_str_t;->getCPtr(Lorg/abtollc/jni/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/abtollc/jni/pjsuaJNI;->zrtp_state_info_cipher_set(JLorg/abtollc/jni/zrtp_state_info;JLorg/abtollc/jni/pj_str_t;)V

    .line 65
    return-void
.end method

.method public setSas(Lorg/abtollc/jni/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/abtollc/jni/pj_str_t;

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCPtr:J

    invoke-static {p1}, Lorg/abtollc/jni/pj_str_t;->getCPtr(Lorg/abtollc/jni/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/abtollc/jni/pjsuaJNI;->zrtp_state_info_sas_set(JLorg/abtollc/jni/zrtp_state_info;JLorg/abtollc/jni/pj_str_t;)V

    .line 56
    return-void
.end method

.method public setSas_verified(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/abtollc/jni/pjsuaJNI;->zrtp_state_info_sas_verified_set(JLorg/abtollc/jni/zrtp_state_info;I)V

    .line 74
    return-void
.end method

.method public setSecure(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/abtollc/jni/zrtp_state_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/abtollc/jni/pjsuaJNI;->zrtp_state_info_secure_set(JLorg/abtollc/jni/zrtp_state_info;I)V

    .line 48
    return-void
.end method

.class public Lorg/pjsip/pjsua/ZrtpCallback;
.super Ljava/lang/Object;
.source "ZrtpCallback.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 62
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_ZrtpCallback()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/ZrtpCallback;-><init>(JZ)V

    .line 63
    iget-wide v0, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCPtr:J

    iget-boolean v2, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCMemOwn:Z

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->ZrtpCallback_director_connect(Lorg/pjsip/pjsua/ZrtpCallback;JZZ)V

    .line 64
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1
    .param p1, "cPtr"    # J
    .param p3, "cMemoryOwn"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/ZrtpCallback;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/ZrtpCallback;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_ZrtpCallback(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/ZrtpCallback;->delete()V

    .line 26
    return-void
.end method

.method public on_zrtp_show_sas(ILorg/pjsip/pjsua/pj_str_t;I)V
    .locals 8
    .param p1, "call_id"    # I
    .param p2, "sas"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "verified"    # I

    .prologue
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/ZrtpCallback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lorg/pjsip/pjsua/pjsuaJNI;->ZrtpCallback_on_zrtp_show_sas(JLorg/pjsip/pjsua/ZrtpCallback;IJLorg/pjsip/pjsua/pj_str_t;I)V

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lorg/pjsip/pjsua/pjsuaJNI;->ZrtpCallback_on_zrtp_show_sasSwigExplicitZrtpCallback(JLorg/pjsip/pjsua/ZrtpCallback;IJLorg/pjsip/pjsua/pj_str_t;I)V

    goto :goto_0
.end method

.method public on_zrtp_update_transport(I)V
    .locals 2
    .param p1, "call_id"    # I

    .prologue
    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/ZrtpCallback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->ZrtpCallback_on_zrtp_update_transport(JLorg/pjsip/pjsua/ZrtpCallback;I)V

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->ZrtpCallback_on_zrtp_update_transportSwigExplicitZrtpCallback(JLorg/pjsip/pjsua/ZrtpCallback;I)V

    goto :goto_0
.end method

.method protected swigDirectorDisconnect()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCMemOwn:Z

    .line 40
    invoke-virtual {p0}, Lorg/pjsip/pjsua/ZrtpCallback;->delete()V

    .line 41
    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    iput-boolean v2, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCMemOwn:Z

    .line 45
    iget-wide v0, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCPtr:J

    invoke-static {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->ZrtpCallback_change_ownership(Lorg/pjsip/pjsua/ZrtpCallback;JZ)V

    .line 46
    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    iput-boolean v2, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCMemOwn:Z

    .line 50
    iget-wide v0, p0, Lorg/pjsip/pjsua/ZrtpCallback;->swigCPtr:J

    invoke-static {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->ZrtpCallback_change_ownership(Lorg/pjsip/pjsua/ZrtpCallback;JZ)V

    .line 51
    return-void
.end method

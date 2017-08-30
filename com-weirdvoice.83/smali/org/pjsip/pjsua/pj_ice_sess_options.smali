.class public Lorg/pjsip/pjsua/pj_ice_sess_options;
.super Ljava/lang/Object;
.source "pj_ice_sess_options.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pj_ice_sess_options()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pj_ice_sess_options;-><init>(JZ)V

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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pj_ice_sess_options;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pj_ice_sess_options;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pj_ice_sess_options;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pj_ice_sess_options;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_ice_sess_options;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_ice_sess_options;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pj_ice_sess_options;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pj_ice_sess_options;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_ice_sess_options;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pj_ice_sess_options(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pj_ice_sess_options;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pj_ice_sess_options;->delete()V

    .line 26
    return-void
.end method

.method public getAggressive()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_ice_sess_options;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_ice_sess_options_aggressive_get(JLorg/pjsip/pjsua/pj_ice_sess_options;)I

    move-result v0

    return v0
.end method

.method public getControlled_agent_want_nom_timeout()I
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_ice_sess_options;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_ice_sess_options_controlled_agent_want_nom_timeout_get(JLorg/pjsip/pjsua/pj_ice_sess_options;)I

    move-result v0

    return v0
.end method

.method public getNominated_check_delay()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_ice_sess_options;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_ice_sess_options_nominated_check_delay_get(JLorg/pjsip/pjsua/pj_ice_sess_options;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setAggressive(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_ice_sess_options;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_ice_sess_options_aggressive_set(JLorg/pjsip/pjsua/pj_ice_sess_options;I)V

    .line 40
    return-void
.end method

.method public setControlled_agent_want_nom_timeout(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_ice_sess_options;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_ice_sess_options_controlled_agent_want_nom_timeout_set(JLorg/pjsip/pjsua/pj_ice_sess_options;I)V

    .line 56
    return-void
.end method

.method public setNominated_check_delay(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_ice_sess_options;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_ice_sess_options_nominated_check_delay_set(JLorg/pjsip/pjsua/pj_ice_sess_options;J)V

    .line 48
    return-void
.end method

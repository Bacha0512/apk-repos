.class public Lorg/pjsip/pjsua/pjsua_acc_config;
.super Ljava/lang/Object;
.source "pjsua_acc_config.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 550
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjsua_acc_config()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_acc_config;-><init>(JZ)V

    .line 551
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjsua_acc_config;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjsua_acc_config;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjsua_acc_config(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsua_acc_config;->delete()V

    .line 26
    return-void
.end method

.method public getAllow_contact_rewrite()I
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_allow_contact_rewrite_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    return v0
.end method

.method public getAllow_sdp_nat_rewrite()I
    .locals 2

    .prologue
    .line 308
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_allow_sdp_nat_rewrite_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    return v0
.end method

.method public getAllow_via_rewrite()I
    .locals 2

    .prologue
    .line 300
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_allow_via_rewrite_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    return v0
.end method

.method public getAuth_pref()Lorg/pjsip/pjsua/pjsip_auth_clt_pref;
    .locals 4

    .prologue
    .line 133
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_auth_pref_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    .line 134
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pjsip_auth_clt_pref;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pjsip_auth_clt_pref;-><init>(JZ)V

    goto :goto_0
.end method

.method public getCall_hold_type()Lorg/pjsip/pjsua/pjsua_call_hold_type;
    .locals 2

    .prologue
    .line 538
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_call_hold_type_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_call_hold_type;->swigToEnum(I)Lorg/pjsip/pjsua/pjsua_call_hold_type;

    move-result-object v0

    return-object v0
.end method

.method public getContact_params()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 160
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_contact_params_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    .line 161
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getContact_rewrite_method()I
    .locals 2

    .prologue
    .line 284
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_contact_rewrite_method_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    return v0
.end method

.method public getContact_uri_params()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 169
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_contact_uri_params_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    .line 170
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getContact_use_src_port()I
    .locals 2

    .prologue
    .line 292
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_contact_use_src_port_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    return v0
.end method

.method public getCred_count()J
    .locals 2

    .prologue
    .line 251
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_cred_count_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCred_info()Lorg/pjsip/pjsua/pjsip_cred_info;
    .locals 4

    .prologue
    .line 259
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_cred_info_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    .line 260
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pjsip_cred_info;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pjsip_cred_info;-><init>(JZ)V

    goto :goto_0
.end method

.method public getDrop_calls_on_reg_fail()I
    .locals 2

    .prologue
    .line 522
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_drop_calls_on_reg_fail_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    return v0
.end method

.method public getForce_contact()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 151
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_force_contact_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    .line 152
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getIce_cfg()Lorg/pjsip/pjsua/pjsua_ice_config;
    .locals 4

    .prologue
    .line 448
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_ice_cfg_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    .line 449
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pjsua_ice_config;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pjsua_ice_config;-><init>(JZ)V

    goto :goto_0
.end method

.method public getIce_cfg_use()Lorg/pjsip/pjsua/pjsua_ice_config_use;
    .locals 2

    .prologue
    .line 440
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_ice_cfg_use_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_ice_config_use;->swigToEnum(I)Lorg/pjsip/pjsua/pjsua_ice_config_use;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 59
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_id_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

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
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getIpv6_media_use()Lorg/pjsip/pjsua/pjsua_ipv6_use;
    .locals 2

    .prologue
    .line 416
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_ipv6_media_use_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_ipv6_use;->swigToEnum(I)Lorg/pjsip/pjsua/pjsua_ipv6_use;

    move-result-object v0

    return-object v0
.end method

.method public getKa_data()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 350
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_ka_data_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    .line 351
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getKa_interval()J
    .locals 2

    .prologue
    .line 342
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_ka_interval_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLock_codec()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_lock_codec_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMedia_stun_use()Lorg/pjsip/pjsua/pjsua_stun_use;
    .locals 2

    .prologue
    .line 432
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_media_stun_use_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_stun_use;->swigToEnum(I)Lorg/pjsip/pjsua/pjsua_stun_use;

    move-result-object v0

    return-object v0
.end method

.method public getMwi_enabled()I
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_mwi_enabled_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    return v0
.end method

.method public getMwi_expires()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_mwi_expires_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPidf_tuple_id()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 142
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_pidf_tuple_id_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    .line 143
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getPriority()I
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_priority_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    return v0
.end method

.method public getProxy()[Lorg/pjsip/pjsua/pj_str_t;
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_proxy_get(JLorg/pjsip/pjsua/pjsua_acc_config;)[J

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pj_str_t;->cArrayWrap([JZ)[Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v0

    return-object v0
.end method

.method public getProxy_cnt()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_proxy_cnt_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPublish_enabled()I
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_publish_enabled_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    return v0
.end method

.method public getPublish_opt()Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_publishc_opt;
    .locals 4

    .prologue
    .line 117
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_publishc_opt;

    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_publish_opt_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_publishc_opt;-><init>(JZ)V

    return-object v0
.end method

.method public getReg_delay_before_refresh()J
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_reg_delay_before_refresh_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReg_first_retry_interval()J
    .locals 2

    .prologue
    .line 506
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_reg_first_retry_interval_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReg_hdr_list()Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;

    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_reg_hdr_list_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;-><init>(JZ)V

    return-object v0
.end method

.method public getReg_retry_interval()J
    .locals 2

    .prologue
    .line 498
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_reg_retry_interval_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReg_retry_random_interval()J
    .locals 2

    .prologue
    .line 514
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_reg_retry_random_interval_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReg_timeout()J
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_reg_timeout_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReg_uri()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 68
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_reg_uri_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

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
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getReg_use_proxy()J
    .locals 2

    .prologue
    .line 530
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_reg_use_proxy_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRegister_on_acc_add()I
    .locals 2

    .prologue
    .line 546
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_register_on_acc_add_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    return v0
.end method

.method public getRequire_100rel()Lorg/pjsip/pjsua/pjsua_100rel_use;
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_require_100rel_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_100rel_use;->swigToEnum(I)Lorg/pjsip/pjsua/pjsua_100rel_use;

    move-result-object v0

    return-object v0
.end method

.method public getRfc5626_instance_id()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 324
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_rfc5626_instance_id_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    .line 325
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getRfc5626_reg_id()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 333
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_rfc5626_reg_id_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    .line 334
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getRtp_cfg()Lorg/pjsip/pjsua/pjsua_transport_config;
    .locals 4

    .prologue
    .line 407
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_rtp_cfg_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    .line 408
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pjsua_transport_config;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pjsua_transport_config;-><init>(JZ)V

    goto :goto_0
.end method

.method public getSip_stun_use()Lorg/pjsip/pjsua/pjsua_stun_use;
    .locals 2

    .prologue
    .line 424
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_sip_stun_use_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_stun_use;->swigToEnum(I)Lorg/pjsip/pjsua/pjsua_stun_use;

    move-result-object v0

    return-object v0
.end method

.method public getSrtp_optional_dup_offer()I
    .locals 2

    .prologue
    .line 490
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_srtp_optional_dup_offer_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    return v0
.end method

.method public getSrtp_secure_signaling()I
    .locals 2

    .prologue
    .line 482
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_srtp_secure_signaling_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    return v0
.end method

.method public getSub_hdr_list()Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;

    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_sub_hdr_list_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;-><init>(JZ)V

    return-object v0
.end method

.method public getTimer_setting()Lorg/pjsip/pjsua/pjsip_timer_setting;
    .locals 4

    .prologue
    .line 194
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_timer_setting_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    .line 195
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pjsip_timer_setting;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pjsip_timer_setting;-><init>(JZ)V

    goto :goto_0
.end method

.method public getTransport_id()I
    .locals 2

    .prologue
    .line 268
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_transport_id_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    return v0
.end method

.method public getTurn_cfg()Lorg/pjsip/pjsua/pjsua_turn_config;
    .locals 4

    .prologue
    .line 465
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_turn_cfg_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    .line 466
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pjsua_turn_config;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pjsua_turn_config;-><init>(JZ)V

    goto :goto_0
.end method

.method public getTurn_cfg_use()Lorg/pjsip/pjsua/pjsua_turn_config_use;
    .locals 2

    .prologue
    .line 457
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_turn_cfg_use_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_turn_config_use;->swigToEnum(I)Lorg/pjsip/pjsua/pjsua_turn_config_use;

    move-result-object v0

    return-object v0
.end method

.method public getUnpublish_max_wait_time_msec()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_unpublish_max_wait_time_msec_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnreg_timeout()J
    .locals 2

    .prologue
    .line 243
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_unreg_timeout_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUse_rfc5626()J
    .locals 2

    .prologue
    .line 316
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_use_rfc5626_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUse_srtp()Lorg/pjsip/pjsua/pjmedia_srtp_use;
    .locals 2

    .prologue
    .line 474
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_use_srtp_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjmedia_srtp_use;->swigToEnum(I)Lorg/pjsip/pjsua/pjmedia_srtp_use;

    move-result-object v0

    return-object v0
.end method

.method public getUse_timer()Lorg/pjsip/pjsua/pjsua_sip_timer_use;
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_use_timer_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->swigToEnum(I)Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    move-result-object v0

    return-object v0
.end method

.method public getUser_data()[B
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_user_data_get(JLorg/pjsip/pjsua/pjsua_acc_config;)[B

    move-result-object v0

    return-object v0
.end method

.method public getVid_cap_dev()Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;
    .locals 4

    .prologue
    .line 383
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;

    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_vid_cap_dev_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;-><init>(JZ)V

    return-object v0
.end method

.method public getVid_in_auto_show()I
    .locals 2

    .prologue
    .line 359
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_vid_in_auto_show_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    return v0
.end method

.method public getVid_out_auto_transmit()I
    .locals 2

    .prologue
    .line 367
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_vid_out_auto_transmit_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v0

    return v0
.end method

.method public getVid_rend_dev()Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;
    .locals 4

    .prologue
    .line 391
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;

    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_vid_rend_dev_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;-><init>(JZ)V

    return-object v0
.end method

.method public getVid_stream_rc_cfg()Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_stream_rc_config;
    .locals 4

    .prologue
    .line 399
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_stream_rc_config;

    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_vid_stream_rc_cfg_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_stream_rc_config;-><init>(JZ)V

    return-object v0
.end method

.method public getVid_wnd_flags()J
    .locals 2

    .prologue
    .line 375
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_vid_wnd_flags_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setAllow_contact_rewrite(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 272
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_allow_contact_rewrite_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 273
    return-void
.end method

.method public setAllow_sdp_nat_rewrite(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 304
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_allow_sdp_nat_rewrite_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 305
    return-void
.end method

.method public setAllow_via_rewrite(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 296
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_allow_via_rewrite_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 297
    return-void
.end method

.method public setAuth_pref(Lorg/pjsip/pjsua/pjsip_auth_clt_pref;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsip_auth_clt_pref;

    .prologue
    .line 129
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsip_auth_clt_pref;->getCPtr(Lorg/pjsip/pjsua/pjsip_auth_clt_pref;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_auth_pref_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pjsip_auth_clt_pref;)V

    .line 130
    return-void
.end method

.method public setCall_hold_type(Lorg/pjsip/pjsua/pjsua_call_hold_type;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_call_hold_type;

    .prologue
    .line 534
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_hold_type;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_call_hold_type_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 535
    return-void
.end method

.method public setContact_params(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 156
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_contact_params_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 157
    return-void
.end method

.method public setContact_rewrite_method(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 280
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_contact_rewrite_method_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 281
    return-void
.end method

.method public setContact_uri_params(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 165
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_contact_uri_params_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 166
    return-void
.end method

.method public setContact_use_src_port(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 288
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_contact_use_src_port_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 289
    return-void
.end method

.method public setCred_count(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 247
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_cred_count_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 248
    return-void
.end method

.method public setCred_info(Lorg/pjsip/pjsua/pjsip_cred_info;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsip_cred_info;

    .prologue
    .line 255
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsip_cred_info;->getCPtr(Lorg/pjsip/pjsua/pjsip_cred_info;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_cred_info_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pjsip_cred_info;)V

    .line 256
    return-void
.end method

.method public setDrop_calls_on_reg_fail(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 518
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_drop_calls_on_reg_fail_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 519
    return-void
.end method

.method public setForce_contact(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 147
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_force_contact_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 148
    return-void
.end method

.method public setIce_cfg(Lorg/pjsip/pjsua/pjsua_ice_config;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_ice_config;

    .prologue
    .line 444
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_ice_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_ice_config;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_ice_cfg_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pjsua_ice_config;)V

    .line 445
    return-void
.end method

.method public setIce_cfg_use(Lorg/pjsip/pjsua/pjsua_ice_config_use;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_ice_config_use;

    .prologue
    .line 436
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_ice_config_use;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_ice_cfg_use_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 437
    return-void
.end method

.method public setId(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_id_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 56
    return-void
.end method

.method public setIpv6_media_use(Lorg/pjsip/pjsua/pjsua_ipv6_use;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_ipv6_use;

    .prologue
    .line 412
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_ipv6_use;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_ipv6_media_use_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 413
    return-void
.end method

.method public setKa_data(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 346
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_ka_data_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 347
    return-void
.end method

.method public setKa_interval(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 338
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_ka_interval_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 339
    return-void
.end method

.method public setLock_codec(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 215
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_lock_codec_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 216
    return-void
.end method

.method public setMedia_stun_use(Lorg/pjsip/pjsua/pjsua_stun_use;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_stun_use;

    .prologue
    .line 428
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_stun_use;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_media_stun_use_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 429
    return-void
.end method

.method public setMwi_enabled(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 89
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_mwi_enabled_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 90
    return-void
.end method

.method public setMwi_expires(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_mwi_expires_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 98
    return-void
.end method

.method public setPidf_tuple_id(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_pidf_tuple_id_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 139
    return-void
.end method

.method public setPriority(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_priority_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 48
    return-void
.end method

.method public setProxy([Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 3
    .param p1, "value"    # [Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 207
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->cArrayUnwrap([Lorg/pjsip/pjsua/pj_str_t;)[J

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_proxy_set(JLorg/pjsip/pjsua/pjsua_acc_config;[J)V

    .line 208
    return-void
.end method

.method public setProxy_cnt(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 199
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_proxy_cnt_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 200
    return-void
.end method

.method public setPublish_enabled(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 105
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_publish_enabled_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 106
    return-void
.end method

.method public setPublish_opt(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_publishc_opt;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_publishc_opt;

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_publishc_opt;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_publishc_opt;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_publish_opt_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 114
    return-void
.end method

.method public setReg_delay_before_refresh(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 231
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_reg_delay_before_refresh_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 232
    return-void
.end method

.method public setReg_first_retry_interval(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 502
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_reg_first_retry_interval_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 503
    return-void
.end method

.method public setReg_hdr_list(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_reg_hdr_list_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 74
    return-void
.end method

.method public setReg_retry_interval(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 494
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_reg_retry_interval_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 495
    return-void
.end method

.method public setReg_retry_random_interval(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 510
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_reg_retry_random_interval_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 511
    return-void
.end method

.method public setReg_timeout(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 223
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_reg_timeout_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 224
    return-void
.end method

.method public setReg_uri(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_reg_uri_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 65
    return-void
.end method

.method public setReg_use_proxy(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 526
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_reg_use_proxy_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 527
    return-void
.end method

.method public setRegister_on_acc_add(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 542
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_register_on_acc_add_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 543
    return-void
.end method

.method public setRequire_100rel(Lorg/pjsip/pjsua/pjsua_100rel_use;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_100rel_use;

    .prologue
    .line 174
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_100rel_use;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_require_100rel_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 175
    return-void
.end method

.method public setRfc5626_instance_id(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 320
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_rfc5626_instance_id_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 321
    return-void
.end method

.method public setRfc5626_reg_id(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 329
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_rfc5626_reg_id_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 330
    return-void
.end method

.method public setRtp_cfg(Lorg/pjsip/pjsua/pjsua_transport_config;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_transport_config;

    .prologue
    .line 403
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_transport_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_transport_config;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_rtp_cfg_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pjsua_transport_config;)V

    .line 404
    return-void
.end method

.method public setSip_stun_use(Lorg/pjsip/pjsua/pjsua_stun_use;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_stun_use;

    .prologue
    .line 420
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_stun_use;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_sip_stun_use_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 421
    return-void
.end method

.method public setSrtp_optional_dup_offer(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 486
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_srtp_optional_dup_offer_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 487
    return-void
.end method

.method public setSrtp_secure_signaling(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 478
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_srtp_secure_signaling_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 479
    return-void
.end method

.method public setSub_hdr_list(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;

    .prologue
    .line 81
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_sub_hdr_list_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 82
    return-void
.end method

.method public setTimer_setting(Lorg/pjsip/pjsua/pjsip_timer_setting;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsip_timer_setting;

    .prologue
    .line 190
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsip_timer_setting;->getCPtr(Lorg/pjsip/pjsua/pjsip_timer_setting;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_timer_setting_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pjsip_timer_setting;)V

    .line 191
    return-void
.end method

.method public setTransport_id(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 264
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_transport_id_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 265
    return-void
.end method

.method public setTurn_cfg(Lorg/pjsip/pjsua/pjsua_turn_config;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_turn_config;

    .prologue
    .line 461
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_turn_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_turn_config;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_turn_cfg_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pjsua_turn_config;)V

    .line 462
    return-void
.end method

.method public setTurn_cfg_use(Lorg/pjsip/pjsua/pjsua_turn_config_use;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_turn_config_use;

    .prologue
    .line 453
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_turn_config_use;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_turn_cfg_use_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 454
    return-void
.end method

.method public setUnpublish_max_wait_time_msec(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 121
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_unpublish_max_wait_time_msec_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 122
    return-void
.end method

.method public setUnreg_timeout(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 239
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_unreg_timeout_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 240
    return-void
.end method

.method public setUse_rfc5626(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 312
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_use_rfc5626_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 313
    return-void
.end method

.method public setUse_srtp(Lorg/pjsip/pjsua/pjmedia_srtp_use;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjmedia_srtp_use;

    .prologue
    .line 470
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjmedia_srtp_use;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_use_srtp_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 471
    return-void
.end method

.method public setUse_timer(Lorg/pjsip/pjsua/pjsua_sip_timer_use;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    .prologue
    .line 182
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_use_timer_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 183
    return-void
.end method

.method public setUser_data([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_user_data_set(JLorg/pjsip/pjsua/pjsua_acc_config;[B)V

    .line 40
    return-void
.end method

.method public setVid_cap_dev(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;

    .prologue
    .line 379
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_vid_cap_dev_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 380
    return-void
.end method

.method public setVid_in_auto_show(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 355
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_vid_in_auto_show_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 356
    return-void
.end method

.method public setVid_out_auto_transmit(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 363
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_vid_out_auto_transmit_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V

    .line 364
    return-void
.end method

.method public setVid_rend_dev(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;

    .prologue
    .line 387
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_vid_rend_dev_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 388
    return-void
.end method

.method public setVid_stream_rc_cfg(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_stream_rc_config;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_stream_rc_config;

    .prologue
    .line 395
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_stream_rc_config;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_stream_rc_config;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_vid_stream_rc_cfg_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 396
    return-void
.end method

.method public setVid_wnd_flags(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 371
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_config_vid_wnd_flags_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V

    .line 372
    return-void
.end method

.class public Lorg/pjsip/pjsua/pjsua;
.super Ljava/lang/Object;
.source "pjsua.java"

# interfaces
.implements Lorg/pjsip/pjsua/pjsuaConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized acc_add(Lorg/pjsip/pjsua/pjsua_acc_config;I[I)I
    .locals 4
    .param p0, "acc_cfg"    # Lorg/pjsip/pjsua/pjsua_acc_config;
    .param p1, "is_default"    # I
    .param p2, "p_acc_id"    # [I

    .prologue
    .line 263
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsua_acc_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_add(JLorg/pjsip/pjsua/pjsua_acc_config;I[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized acc_add_local(II[I)I
    .locals 2
    .param p0, "tid"    # I
    .param p1, "is_default"    # I
    .param p2, "p_acc_id"    # [I

    .prologue
    .line 267
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_add_local(II[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized acc_config_default(Lorg/pjsip/pjsua/pjsua_acc_config;)V
    .locals 4
    .param p0, "cfg"    # Lorg/pjsip/pjsua/pjsua_acc_config;

    .prologue
    .line 239
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsua_acc_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_config_default(JLorg/pjsip/pjsua/pjsua_acc_config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit v1

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized acc_config_dup(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pjsua_acc_config;Lorg/pjsip/pjsua/pjsua_acc_config;)V
    .locals 10
    .param p0, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;
    .param p1, "dst"    # Lorg/pjsip/pjsua/pjsua_acc_config;
    .param p2, "src"    # Lorg/pjsip/pjsua/pjsua_acc_config;

    .prologue
    .line 243
    const-class v9, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v9

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_acc_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_acc_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_config_dup(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pjsua_acc_config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit v9

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized acc_create_request(ILorg/pjsip/pjsua/SWIGTYPE_p_pjsip_method;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_p_pjsip_tx_data;)I
    .locals 10
    .param p0, "acc_id"    # I
    .param p1, "method"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_method;
    .param p2, "target"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "p_tdata"    # Lorg/pjsip/pjsua/SWIGTYPE_p_p_pjsip_tx_data;

    .prologue
    .line 323
    const-class v9, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v9

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_method;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_method;)J

    move-result-wide v2

    invoke-static {p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    invoke-static {p3}, Lorg/pjsip/pjsua/SWIGTYPE_p_p_pjsip_tx_data;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_p_pjsip_tx_data;)J

    move-result-wide v7

    move v1, p0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_create_request(IJJLorg/pjsip/pjsua/pj_str_t;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v9

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized acc_create_uac_contact(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pj_str_t;ILorg/pjsip/pjsua/pj_str_t;)I
    .locals 12
    .param p0, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;
    .param p1, "contact"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p2, "acc_id"    # I
    .param p3, "uri"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 327
    const-class v11, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v11

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v1

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    invoke-static {p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v8

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move-object v10, p3

    invoke-static/range {v1 .. v10}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_create_uac_contact(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pj_str_t;IJLorg/pjsip/pjsua/pj_str_t;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v11

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public static declared-synchronized acc_create_uas_contact(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pj_str_t;ILorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)I
    .locals 11
    .param p0, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;
    .param p1, "contact"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p2, "acc_id"    # I
    .param p3, "rdata"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;

    .prologue
    .line 331
    const-class v10, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v10

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v1

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    invoke-static {p3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)J

    move-result-wide v8

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-static/range {v1 .. v9}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_create_uas_contact(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pj_str_t;IJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v10

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized acc_del(I)I
    .locals 2
    .param p0, "acc_id"    # I

    .prologue
    .line 279
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_del(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized acc_enum_info(Lorg/pjsip/pjsua/pjsua_acc_info;[J)I
    .locals 4
    .param p0, "info"    # Lorg/pjsip/pjsua/pjsua_acc_info;
    .param p1, "count"    # [J

    .prologue
    .line 311
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsua_acc_info;->getCPtr(Lorg/pjsip/pjsua/pjsua_acc_info;)J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_enum_info(JLorg/pjsip/pjsua/pjsua_acc_info;[J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized acc_find_for_incoming(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)I
    .locals 4
    .param p0, "rdata"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;

    .prologue
    .line 319
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_find_for_incoming(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized acc_find_for_outgoing(Lorg/pjsip/pjsua/pj_str_t;)I
    .locals 4
    .param p0, "url"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 315
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_find_for_outgoing(JLorg/pjsip/pjsua/pj_str_t;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized acc_get_config(ILorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pjsua_acc_config;)I
    .locals 8
    .param p0, "acc_id"    # I
    .param p1, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;
    .param p2, "acc_cfg"    # Lorg/pjsip/pjsua/pjsua_acc_config;

    .prologue
    .line 283
    const-class v7, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v7

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v1

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_acc_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v4

    move v0, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_get_config(IJLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_acc_config;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized acc_get_count()J
    .locals 4

    .prologue
    .line 247
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_get_count()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized acc_get_default()I
    .locals 2

    .prologue
    .line 259
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_get_default()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized acc_get_info(ILorg/pjsip/pjsua/pjsua_acc_info;)I
    .locals 4
    .param p0, "acc_id"    # I
    .param p1, "info"    # Lorg/pjsip/pjsua/pjsua_acc_info;

    .prologue
    .line 303
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_acc_info;->getCPtr(Lorg/pjsip/pjsua/pjsua_acc_info;)J

    move-result-wide v2

    invoke-static {p0, v2, v3, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_get_info(IJLorg/pjsip/pjsua/pjsua_acc_info;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized acc_get_user_data(I)[B
    .locals 2
    .param p0, "acc_id"    # I

    .prologue
    .line 275
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_get_user_data(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized acc_is_valid(I)I
    .locals 2
    .param p0, "acc_id"    # I

    .prologue
    .line 251
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_is_valid(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized acc_modify(ILorg/pjsip/pjsua/pjsua_acc_config;)I
    .locals 4
    .param p0, "acc_id"    # I
    .param p1, "acc_cfg"    # Lorg/pjsip/pjsua/pjsua_acc_config;

    .prologue
    .line 287
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_acc_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_acc_config;)J

    move-result-wide v2

    invoke-static {p0, v2, v3, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_modify(IJLorg/pjsip/pjsua/pjsua_acc_config;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized acc_set_default(I)I
    .locals 2
    .param p0, "acc_id"    # I

    .prologue
    .line 255
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_set_default(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized acc_set_online_status(II)I
    .locals 2
    .param p0, "acc_id"    # I
    .param p1, "is_online"    # I

    .prologue
    .line 291
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_set_online_status(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized acc_set_online_status2(IILorg/pjsip/pjsua/pjrpid_element;)I
    .locals 4
    .param p0, "acc_id"    # I
    .param p1, "is_online"    # I
    .param p2, "pr"    # Lorg/pjsip/pjsua/pjrpid_element;

    .prologue
    .line 295
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Lorg/pjsip/pjsua/pjrpid_element;->getCPtr(Lorg/pjsip/pjsua/pjrpid_element;)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_set_online_status2(IIJLorg/pjsip/pjsua/pjrpid_element;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized acc_set_registration(II)I
    .locals 2
    .param p0, "acc_id"    # I
    .param p1, "renew"    # I

    .prologue
    .line 299
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_set_registration(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized acc_set_transport(II)I
    .locals 2
    .param p0, "acc_id"    # I
    .param p1, "tp_id"    # I

    .prologue
    .line 335
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_set_transport(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized acc_set_user_data(I[B)I
    .locals 2
    .param p0, "acc_id"    # I
    .param p1, "user_data"    # [B

    .prologue
    .line 271
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->acc_set_user_data(I[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized buddy_add(Lorg/pjsip/pjsua/pjsua_buddy_config;[I)I
    .locals 4
    .param p0, "buddy_cfg"    # Lorg/pjsip/pjsua/pjsua_buddy_config;
    .param p1, "p_buddy_id"    # [I

    .prologue
    .line 523
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsua_buddy_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_buddy_config;)J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->buddy_add(JLorg/pjsip/pjsua/pjsua_buddy_config;[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized buddy_config_default(Lorg/pjsip/pjsua/pjsua_buddy_config;)V
    .locals 4
    .param p0, "cfg"    # Lorg/pjsip/pjsua/pjsua_buddy_config;

    .prologue
    .line 491
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsua_buddy_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_buddy_config;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->buddy_config_default(JLorg/pjsip/pjsua/pjsua_buddy_config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    monitor-exit v1

    return-void

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized buddy_del(I)I
    .locals 2
    .param p0, "buddy_id"    # I

    .prologue
    .line 527
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->buddy_del(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized buddy_find(Lorg/pjsip/pjsua/pj_str_t;)I
    .locals 4
    .param p0, "uri"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 507
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->buddy_find(JLorg/pjsip/pjsua/pj_str_t;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized buddy_get_info(ILorg/pjsip/pjsua/pjsua_buddy_info;)I
    .locals 4
    .param p0, "buddy_id"    # I
    .param p1, "info"    # Lorg/pjsip/pjsua/pjsua_buddy_info;

    .prologue
    .line 511
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_buddy_info;->getCPtr(Lorg/pjsip/pjsua/pjsua_buddy_info;)J

    move-result-wide v2

    invoke-static {p0, v2, v3, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->buddy_get_info(IJLorg/pjsip/pjsua/pjsua_buddy_info;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized buddy_get_user_data(I)[B
    .locals 2
    .param p0, "buddy_id"    # I

    .prologue
    .line 519
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->buddy_get_user_data(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized buddy_is_valid(I)I
    .locals 2
    .param p0, "buddy_id"    # I

    .prologue
    .line 499
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->buddy_is_valid(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized buddy_set_user_data(I[B)I
    .locals 2
    .param p0, "buddy_id"    # I
    .param p1, "user_data"    # [B

    .prologue
    .line 515
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->buddy_set_user_data(I[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized buddy_subscribe_pres(II)I
    .locals 2
    .param p0, "buddy_id"    # I
    .param p1, "subscribe"    # I

    .prologue
    .line 531
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->buddy_subscribe_pres(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized buddy_update_pres(I)I
    .locals 2
    .param p0, "buddy_id"    # I

    .prologue
    .line 535
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->buddy_update_pres(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized call_answer(IJLorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;)I
    .locals 11
    .param p0, "call_id"    # I
    .param p1, "code"    # J
    .param p3, "reason"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p4, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 395
    const-class v10, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v10

    :try_start_0
    invoke-static {p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    invoke-static {p4}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v7

    move v1, p0

    move-wide v2, p1

    move-object v6, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Lorg/pjsip/pjsua/pjsuaJNI;->call_answer(IJJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pjsua_msg_data;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v10

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized call_answer2(ILorg/pjsip/pjsua/pjsua_call_setting;JLorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;)I
    .locals 14
    .param p0, "call_id"    # I
    .param p1, "opt"    # Lorg/pjsip/pjsua/pjsua_call_setting;
    .param p2, "code"    # J
    .param p4, "reason"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p5, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 399
    const-class v12, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v12

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_call_setting;->getCPtr(Lorg/pjsip/pjsua/pjsua_call_setting;)J

    move-result-wide v1

    invoke-static/range {p4 .. p4}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v6

    invoke-static/range {p5 .. p5}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v9

    move v0, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v8, p4

    move-object/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lorg/pjsip/pjsua/pjsuaJNI;->call_answer2(IJLorg/pjsip/pjsua/pjsua_call_setting;JJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pjsua_msg_data;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v12

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method public static declared-synchronized call_dial_dtmf(ILorg/pjsip/pjsua/pj_str_t;)I
    .locals 4
    .param p0, "call_id"    # I
    .param p1, "digits"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 443
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v2

    invoke-static {p0, v2, v3, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->call_dial_dtmf(IJLorg/pjsip/pjsua/pj_str_t;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized call_dump(IILjava/lang/String;JLjava/lang/String;)I
    .locals 3
    .param p0, "call_id"    # I
    .param p1, "with_media"    # I
    .param p2, "buffer"    # Ljava/lang/String;
    .param p3, "maxlen"    # J
    .param p5, "indent"    # Ljava/lang/String;

    .prologue
    .line 463
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static/range {p0 .. p5}, Lorg/pjsip/pjsua/pjsuaJNI;->call_dump__SWIG_0(IILjava/lang/String;JLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static call_dump(IILjava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;
    .locals 4
    .param p0, "call_id"    # I
    .param p1, "with_media"    # I
    .param p2, "indent"    # Ljava/lang/String;

    .prologue
    .line 796
    new-instance v0, Lorg/pjsip/pjsua/pj_str_t;

    invoke-static {p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->call_dump__SWIG_1(IILjava/lang/String;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    return-object v0
.end method

.method public static declared-synchronized call_get_conf_port(I)I
    .locals 2
    .param p0, "call_id"    # I

    .prologue
    .line 371
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->call_get_conf_port(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized call_get_count()J
    .locals 4

    .prologue
    .line 351
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->call_get_count()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized call_get_info(ILorg/pjsip/pjsua/pjsua_call_info;)I
    .locals 4
    .param p0, "call_id"    # I
    .param p1, "info"    # Lorg/pjsip/pjsua/pjsua_call_info;

    .prologue
    .line 375
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_call_info;->getCPtr(Lorg/pjsip/pjsua/pjsua_call_info;)J

    move-result-wide v2

    invoke-static {p0, v2, v3, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->call_get_info(IJLorg/pjsip/pjsua/pjsua_call_info;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized call_get_max_count()J
    .locals 4

    .prologue
    .line 347
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->call_get_max_count()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized call_get_med_transport_info(IJLorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_transport_info;)I
    .locals 5
    .param p0, "call_id"    # I
    .param p1, "med_idx"    # J
    .param p3, "t"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_transport_info;

    .prologue
    .line 487
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_transport_info;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_transport_info;)J

    move-result-wide v2

    invoke-static {p0, p1, p2, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->call_get_med_transport_info(IJJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized call_get_rem_nat_type(I[I)I
    .locals 2
    .param p0, "call_id"    # I
    .param p1, "p_type"    # [I

    .prologue
    .line 391
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->call_get_rem_nat_type(I[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized call_get_stream_info(IJLorg/pjsip/pjsua/pjsua_stream_info;)I
    .locals 9
    .param p0, "call_id"    # I
    .param p1, "med_idx"    # J
    .param p3, "psi"    # Lorg/pjsip/pjsua/pjsua_stream_info;

    .prologue
    .line 479
    const-class v7, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v7

    :try_start_0
    invoke-static {p3}, Lorg/pjsip/pjsua/pjsua_stream_info;->getCPtr(Lorg/pjsip/pjsua/pjsua_stream_info;)J

    move-result-wide v4

    move v1, p0

    move-wide v2, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->call_get_stream_info(IJJLorg/pjsip/pjsua/pjsua_stream_info;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized call_get_stream_stat(IJLorg/pjsip/pjsua/pjsua_stream_stat;)I
    .locals 9
    .param p0, "call_id"    # I
    .param p1, "med_idx"    # J
    .param p3, "stat"    # Lorg/pjsip/pjsua/pjsua_stream_stat;

    .prologue
    .line 483
    const-class v7, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v7

    :try_start_0
    invoke-static {p3}, Lorg/pjsip/pjsua/pjsua_stream_stat;->getCPtr(Lorg/pjsip/pjsua/pjsua_stream_stat;)J

    move-result-wide v4

    move v1, p0

    move-wide v2, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->call_get_stream_stat(IJJLorg/pjsip/pjsua/pjsua_stream_stat;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized call_get_user_data(I)[B
    .locals 2
    .param p0, "call_id"    # I

    .prologue
    .line 387
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->call_get_user_data(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized call_get_vid_stream_idx(I)I
    .locals 2
    .param p0, "call_id"    # I

    .prologue
    .line 467
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->call_get_vid_stream_idx(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized call_hangup(IJLorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;)I
    .locals 11
    .param p0, "call_id"    # I
    .param p1, "code"    # J
    .param p3, "reason"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p4, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 403
    const-class v10, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v10

    :try_start_0
    invoke-static {p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    invoke-static {p4}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v7

    move v1, p0

    move-wide v2, p1

    move-object v6, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Lorg/pjsip/pjsua/pjsuaJNI;->call_hangup(IJJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pjsua_msg_data;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v10

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized call_hangup_all()V
    .locals 2

    .prologue
    .line 459
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->call_hangup_all()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    monitor-exit v0

    return-void

    .line 459
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized call_has_media(I)I
    .locals 2
    .param p0, "call_id"    # I

    .prologue
    .line 367
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->call_has_media(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized call_is_active(I)I
    .locals 2
    .param p0, "call_id"    # I

    .prologue
    .line 363
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->call_is_active(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized call_make_call(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_call_setting;[BLorg/pjsip/pjsua/pjsua_msg_data;[I)I
    .locals 13
    .param p0, "acc_id"    # I
    .param p1, "dst_uri"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p2, "opt"    # Lorg/pjsip/pjsua/pjsua_call_setting;
    .param p3, "user_data"    # [B
    .param p4, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;
    .param p5, "p_call_id"    # [I

    .prologue
    .line 359
    const-class v12, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v12

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v1

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_call_setting;->getCPtr(Lorg/pjsip/pjsua/pjsua_call_setting;)J

    move-result-wide v4

    invoke-static/range {p4 .. p4}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v8

    move v0, p0

    move-object v3, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lorg/pjsip/pjsua/pjsuaJNI;->call_make_call(IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pjsua_call_setting;[BJLorg/pjsip/pjsua/pjsua_msg_data;[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v12

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method public static declared-synchronized call_process_redirect(ILorg/pjsip/pjsua/pjsip_redirect_op;)I
    .locals 2
    .param p0, "call_id"    # I
    .param p1, "cmd"    # Lorg/pjsip/pjsua/pjsip_redirect_op;

    .prologue
    .line 407
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsip_redirect_op;->swigValue()I

    move-result v0

    invoke-static {p0, v0}, Lorg/pjsip/pjsua/pjsuaJNI;->call_process_redirect(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized call_reinvite(IJLorg/pjsip/pjsua/pjsua_msg_data;)I
    .locals 9
    .param p0, "call_id"    # I
    .param p1, "options"    # J
    .param p3, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 419
    const-class v7, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v7

    :try_start_0
    invoke-static {p3}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v4

    move v1, p0

    move-wide v2, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->call_reinvite(IJJLorg/pjsip/pjsua/pjsua_msg_data;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized call_reinvite2(ILorg/pjsip/pjsua/pjsua_call_setting;Lorg/pjsip/pjsua/pjsua_msg_data;)I
    .locals 8
    .param p0, "call_id"    # I
    .param p1, "opt"    # Lorg/pjsip/pjsua/pjsua_call_setting;
    .param p2, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 423
    const-class v7, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v7

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_call_setting;->getCPtr(Lorg/pjsip/pjsua/pjsua_call_setting;)J

    move-result-wide v1

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v4

    move v0, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->call_reinvite2(IJLorg/pjsip/pjsua/pjsua_call_setting;JLorg/pjsip/pjsua/pjsua_msg_data;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized call_remote_has_cap(IILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;)Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_dialog_cap_status;
    .locals 10
    .param p0, "call_id"    # I
    .param p1, "htype"    # I
    .param p2, "hname"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "token"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 379
    const-class v8, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v8

    :try_start_0
    new-instance v9, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_dialog_cap_status;

    invoke-static {p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v2

    invoke-static {p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v5

    move v0, p0

    move v1, p1

    move-object v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lorg/pjsip/pjsua/pjsuaJNI;->call_remote_has_cap(IIJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_dialog_cap_status;-><init>(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-object v9

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static call_secure_media_info(I)Lorg/pjsip/pjsua/pj_str_t;
    .locals 4
    .param p0, "call_id"    # I

    .prologue
    .line 800
    new-instance v0, Lorg/pjsip/pjsua/pj_str_t;

    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->call_secure_media_info(I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    return-object v0
.end method

.method public static call_secure_sig_level(I)I
    .locals 1
    .param p0, "call_id"    # I

    .prologue
    .line 804
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->call_secure_sig_level(I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized call_send_im(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;[B)I
    .locals 13
    .param p0, "call_id"    # I
    .param p1, "mime_type"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p2, "content"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;
    .param p4, "user_data"    # [B

    .prologue
    .line 447
    const-class v12, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v12

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v2

    invoke-static {p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v5

    invoke-static/range {p3 .. p3}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v8

    move v1, p0

    move-object v4, p1

    move-object v7, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v1 .. v11}, Lorg/pjsip/pjsua/pjsuaJNI;->call_send_im(IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pjsua_msg_data;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v12

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method public static declared-synchronized call_send_request(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;)I
    .locals 8
    .param p0, "call_id"    # I
    .param p1, "method"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p2, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 455
    const-class v7, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v7

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v1

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v4

    move v0, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->call_send_request(IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pjsua_msg_data;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized call_send_typing_ind(IILorg/pjsip/pjsua/pjsua_msg_data;)I
    .locals 4
    .param p0, "call_id"    # I
    .param p1, "is_typing"    # I
    .param p2, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 451
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->call_send_typing_ind(IIJLorg/pjsip/pjsua/pjsua_msg_data;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized call_set_hold(ILorg/pjsip/pjsua/pjsua_msg_data;)I
    .locals 4
    .param p0, "call_id"    # I
    .param p1, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 411
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v2

    invoke-static {p0, v2, v3, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->call_set_hold(IJLorg/pjsip/pjsua/pjsua_msg_data;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized call_set_hold2(IJLorg/pjsip/pjsua/pjsua_msg_data;)I
    .locals 9
    .param p0, "call_id"    # I
    .param p1, "options"    # J
    .param p3, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 415
    const-class v7, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v7

    :try_start_0
    invoke-static {p3}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v4

    move v1, p0

    move-wide v2, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->call_set_hold2(IJJLorg/pjsip/pjsua/pjsua_msg_data;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized call_set_user_data(I[B)I
    .locals 2
    .param p0, "call_id"    # I
    .param p1, "user_data"    # [B

    .prologue
    .line 383
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->call_set_user_data(I[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized call_set_vid_strm(ILorg/pjsip/pjsua/pjsua_call_vid_strm_op;Lorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;)I
    .locals 4
    .param p0, "call_id"    # I
    .param p1, "op"    # Lorg/pjsip/pjsua/pjsua_call_vid_strm_op;
    .param p2, "param"    # Lorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;

    .prologue
    .line 475
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_vid_strm_op;->swigValue()I

    move-result v0

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;->getCPtr(Lorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;)J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->call_set_vid_strm(IIJLorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized call_setting_default(Lorg/pjsip/pjsua/pjsua_call_setting;)V
    .locals 4
    .param p0, "opt"    # Lorg/pjsip/pjsua/pjsua_call_setting;

    .prologue
    .line 339
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsua_call_setting;->getCPtr(Lorg/pjsip/pjsua/pjsua_call_setting;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->call_setting_default(JLorg/pjsip/pjsua/pjsua_call_setting;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit v1

    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized call_update(IJLorg/pjsip/pjsua/pjsua_msg_data;)I
    .locals 9
    .param p0, "call_id"    # I
    .param p1, "options"    # J
    .param p3, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 427
    const-class v7, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v7

    :try_start_0
    invoke-static {p3}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v4

    move v1, p0

    move-wide v2, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->call_update(IJJLorg/pjsip/pjsua/pjsua_msg_data;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized call_update2(ILorg/pjsip/pjsua/pjsua_call_setting;Lorg/pjsip/pjsua/pjsua_msg_data;)I
    .locals 8
    .param p0, "call_id"    # I
    .param p1, "opt"    # Lorg/pjsip/pjsua/pjsua_call_setting;
    .param p2, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 431
    const-class v7, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v7

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_call_setting;->getCPtr(Lorg/pjsip/pjsua/pjsua_call_setting;)J

    move-result-wide v1

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v4

    move v0, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->call_update2(IJLorg/pjsip/pjsua/pjsua_call_setting;JLorg/pjsip/pjsua/pjsua_msg_data;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized call_vid_stream_is_running(IILorg/pjsip/pjsua/pjmedia_dir;)I
    .locals 2
    .param p0, "call_id"    # I
    .param p1, "med_idx"    # I
    .param p2, "dir"    # Lorg/pjsip/pjsua/pjmedia_dir;

    .prologue
    .line 471
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p2}, Lorg/pjsip/pjsua/pjmedia_dir;->swigValue()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/pjsip/pjsua/pjsuaJNI;->call_vid_stream_is_running(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized call_vid_strm_op_param_default(Lorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;)V
    .locals 4
    .param p0, "param"    # Lorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;

    .prologue
    .line 343
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;->getCPtr(Lorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->call_vid_strm_op_param_default(JLorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit v1

    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized call_xfer(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;)I
    .locals 8
    .param p0, "call_id"    # I
    .param p1, "dest"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p2, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 435
    const-class v7, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v7

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v1

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v4

    move v0, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->call_xfer(IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pjsua_msg_data;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized call_xfer_replaces(IIJLorg/pjsip/pjsua/pjsua_msg_data;)I
    .locals 8
    .param p0, "call_id"    # I
    .param p1, "dest_call_id"    # I
    .param p2, "options"    # J
    .param p4, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 439
    const-class v7, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v7

    :try_start_0
    invoke-static {p4}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v4

    move v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->call_xfer_replaces(IIJJLorg/pjsip/pjsua/pjsua_msg_data;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized cancel_stun_resolution([BI)I
    .locals 2
    .param p0, "token"    # [B
    .param p1, "notify_cb"    # I

    .prologue
    .line 159
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->cancel_stun_resolution([BI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized cancel_timer(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_timer_entry;)V
    .locals 4
    .param p0, "entry"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pj_timer_entry;

    .prologue
    .line 179
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_timer_entry;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_timer_entry;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->cancel_timer(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit v1

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized codec_get_param(Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_codec_param;)I
    .locals 6
    .param p0, "codec_id"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p1, "param"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_codec_param;

    .prologue
    .line 712
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v2

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_codec_param;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_codec_param;)J

    move-result-wide v4

    invoke-static {v2, v3, p0, v4, v5}, Lorg/pjsip/pjsua/pjsuaJNI;->codec_get_param(JLorg/pjsip/pjsua/pj_str_t;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static codec_h264_set_profile(JJJJJJJ)I
    .locals 2
    .param p0, "profile_id"    # J
    .param p2, "level_id"    # J
    .param p4, "width"    # J
    .param p6, "height"    # J
    .param p8, "fps"    # J
    .param p10, "avg_kbps"    # J
    .param p12, "max_kbps"    # J

    .prologue
    .line 912
    invoke-static/range {p0 .. p13}, Lorg/pjsip/pjsua/pjsuaJNI;->codec_h264_set_profile(JJJJJJJ)I

    move-result v0

    return v0
.end method

.method public static codec_set_frames_per_packet(Lorg/pjsip/pjsua/pj_str_t;I)I
    .locals 2
    .param p0, "codec_id"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p1, "frames_per_packet"    # I

    .prologue
    .line 908
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->codec_set_frames_per_packet(JLorg/pjsip/pjsua/pj_str_t;I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized codec_set_param(Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_codec_param;)I
    .locals 6
    .param p0, "codec_id"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p1, "param"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_codec_param;

    .prologue
    .line 716
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v2

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_codec_param;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_codec_param;)J

    move-result-wide v4

    invoke-static {v2, v3, p0, v4, v5}, Lorg/pjsip/pjsua/pjsuaJNI;->codec_set_param(JLorg/pjsip/pjsua/pj_str_t;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized codec_set_priority(Lorg/pjsip/pjsua/pj_str_t;S)I
    .locals 4
    .param p0, "codec_id"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p1, "priority"    # S

    .prologue
    .line 708
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->codec_set_priority(JLorg/pjsip/pjsua/pj_str_t;S)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static codecs_get_id(I)Lorg/pjsip/pjsua/pj_str_t;
    .locals 4
    .param p0, "codec_id"    # I

    .prologue
    .line 896
    new-instance v0, Lorg/pjsip/pjsua/pj_str_t;

    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->codecs_get_id(I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    return-object v0
.end method

.method public static codecs_get_nbr()I
    .locals 1

    .prologue
    .line 892
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->codecs_get_nbr()I

    move-result v0

    return v0
.end method

.method public static codecs_vid_get_id(I)Lorg/pjsip/pjsua/pj_str_t;
    .locals 4
    .param p0, "codec_id"    # I

    .prologue
    .line 904
    new-instance v0, Lorg/pjsip/pjsua/pj_str_t;

    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->codecs_vid_get_id(I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    return-object v0
.end method

.method public static codecs_vid_get_nbr()I
    .locals 1

    .prologue
    .line 900
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->codecs_vid_get_nbr()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized conf_add_port(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pjmedia_port;[I)I
    .locals 8
    .param p0, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;
    .param p1, "port"    # Lorg/pjsip/pjsua/pjmedia_port;
    .param p2, "p_id"    # [I

    .prologue
    .line 583
    const-class v7, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v7

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/pjsip/pjsua/pjmedia_port;->getCPtr(Lorg/pjsip/pjsua/pjmedia_port;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->conf_add_port(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjmedia_port;[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized conf_adjust_rx_level(IF)I
    .locals 2
    .param p0, "slot"    # I
    .param p1, "level"    # F

    .prologue
    .line 603
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->conf_adjust_rx_level(IF)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized conf_adjust_tx_level(IF)I
    .locals 2
    .param p0, "slot"    # I
    .param p1, "level"    # F

    .prologue
    .line 599
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->conf_adjust_tx_level(IF)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized conf_connect(II)I
    .locals 2
    .param p0, "source"    # I
    .param p1, "sink"    # I

    .prologue
    .line 591
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->conf_connect(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized conf_disconnect(II)I
    .locals 2
    .param p0, "source"    # I
    .param p1, "sink"    # I

    .prologue
    .line 595
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->conf_disconnect(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized conf_get_active_ports()J
    .locals 4

    .prologue
    .line 571
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->conf_get_active_ports()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized conf_get_max_ports()J
    .locals 4

    .prologue
    .line 567
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->conf_get_max_ports()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized conf_get_port_info(ILorg/pjsip/pjsua/pjsua_conf_port_info;)I
    .locals 4
    .param p0, "port_id"    # I
    .param p1, "info"    # Lorg/pjsip/pjsua/pjsua_conf_port_info;

    .prologue
    .line 579
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_conf_port_info;->getCPtr(Lorg/pjsip/pjsua/pjsua_conf_port_info;)J

    move-result-wide v2

    invoke-static {p0, v2, v3, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->conf_get_port_info(IJLorg/pjsip/pjsua/pjsua_conf_port_info;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized conf_get_signal_level(I[J[J)I
    .locals 2
    .param p0, "slot"    # I
    .param p1, "tx_level"    # [J
    .param p2, "rx_level"    # [J

    .prologue
    .line 607
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->conf_get_signal_level(I[J[J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized conf_remove_port(I)I
    .locals 2
    .param p0, "port_id"    # I

    .prologue
    .line 587
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->conf_remove_port(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized config_default(Lorg/pjsip/pjsua/pjsua_config;)V
    .locals 4
    .param p0, "cfg"    # Lorg/pjsip/pjsua/pjsua_config;

    .prologue
    .line 86
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsua_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_config;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->config_default(JLorg/pjsip/pjsua/pjsua_config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit v1

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized config_dup(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pjsua_config;Lorg/pjsip/pjsua/pjsua_config;)V
    .locals 10
    .param p0, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;
    .param p1, "dst"    # Lorg/pjsip/pjsua/pjsua_config;
    .param p2, "src"    # Lorg/pjsip/pjsua/pjsua_config;

    .prologue
    .line 90
    const-class v9, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v9

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_config;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_config;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/pjsip/pjsua/pjsuaJNI;->config_dup(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_config;JLorg/pjsip/pjsua/pjsua_config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit v9

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized create()I
    .locals 2

    .prologue
    .line 103
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->create()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static csipsimple_acc_config_default(Lorg/pjsip/pjsua/csipsimple_acc_config;)V
    .locals 2
    .param p0, "css_acc_cfg"    # Lorg/pjsip/pjsua/csipsimple_acc_config;

    .prologue
    .line 824
    invoke-static {p0}, Lorg/pjsip/pjsua/csipsimple_acc_config;->getCPtr(Lorg/pjsip/pjsua/csipsimple_acc_config;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_acc_config_default(JLorg/pjsip/pjsua/csipsimple_acc_config;)V

    .line 825
    return-void
.end method

.method public static csipsimple_config_default(Lorg/pjsip/pjsua/csipsimple_config;)V
    .locals 2
    .param p0, "css_cfg"    # Lorg/pjsip/pjsua/csipsimple_config;

    .prologue
    .line 820
    invoke-static {p0}, Lorg/pjsip/pjsua/csipsimple_config;->getCPtr(Lorg/pjsip/pjsua/csipsimple_config;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_default(JLorg/pjsip/pjsua/csipsimple_config;)V

    .line 821
    return-void
.end method

.method public static csipsimple_destroy(J)I
    .locals 2
    .param p0, "flags"    # J

    .prologue
    .line 832
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_destroy(J)I

    move-result v0

    return v0
.end method

.method public static csipsimple_init(Lorg/pjsip/pjsua/pjsua_config;Lorg/pjsip/pjsua/pjsua_logging_config;Lorg/pjsip/pjsua/pjsua_media_config;Lorg/pjsip/pjsua/csipsimple_config;Ljava/lang/Object;)I
    .locals 13
    .param p0, "ua_cfg"    # Lorg/pjsip/pjsua/pjsua_config;
    .param p1, "log_cfg"    # Lorg/pjsip/pjsua/pjsua_logging_config;
    .param p2, "media_cfg"    # Lorg/pjsip/pjsua/pjsua_media_config;
    .param p3, "css_cfg"    # Lorg/pjsip/pjsua/csipsimple_config;
    .param p4, "context"    # Ljava/lang/Object;

    .prologue
    .line 828
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsua_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_config;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_logging_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_logging_config;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_media_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v6

    invoke-static/range {p3 .. p3}, Lorg/pjsip/pjsua/csipsimple_config;->getCPtr(Lorg/pjsip/pjsua/csipsimple_config;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static/range {v0 .. v12}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_init(JLorg/pjsip/pjsua/pjsua_config;JLorg/pjsip/pjsua/pjsua_logging_config;JLorg/pjsip/pjsua/pjsua_media_config;JLorg/pjsip/pjsua/csipsimple_config;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static csipsimple_init_acc_msg_data(Lorg/pjsip/pjsua/pj_pool_t;ILorg/pjsip/pjsua/pjsua_msg_data;)I
    .locals 7
    .param p0, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;
    .param p1, "acc_id"    # I
    .param p2, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 840
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v0

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_init_acc_msg_data(JLorg/pjsip/pjsua/pj_pool_t;IJLorg/pjsip/pjsua/pjsua_msg_data;)I

    move-result v0

    return v0
.end method

.method public static csipsimple_msg_data_add_string_hdr(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pjsua_msg_data;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;)I
    .locals 12
    .param p0, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;
    .param p1, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;
    .param p2, "hdr_name"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "hdr_value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 844
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v6

    invoke-static {p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_msg_data_add_string_hdr(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_msg_data;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;)I

    move-result v0

    return v0
.end method

.method public static csipsimple_set_acc_user_data(ILorg/pjsip/pjsua/csipsimple_acc_config;)I
    .locals 2
    .param p0, "acc_id"    # I
    .param p1, "css_acc_cfg"    # Lorg/pjsip/pjsua/csipsimple_acc_config;

    .prologue
    .line 836
    invoke-static {p1}, Lorg/pjsip/pjsua/csipsimple_acc_config;->getCPtr(Lorg/pjsip/pjsua/csipsimple_acc_config;)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_set_acc_user_data(IJLorg/pjsip/pjsua/csipsimple_acc_config;)I

    move-result v0

    return v0
.end method

.method public static css_on_call_media_state(I)V
    .locals 0
    .param p0, "call_id"    # I

    .prologue
    .line 876
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->css_on_call_media_state(I)V

    .line 877
    return-void
.end method

.method public static css_on_call_state(ILorg/pjsip/pjsua/pjsip_event;)V
    .locals 2
    .param p0, "call_id"    # I
    .param p1, "e"    # Lorg/pjsip/pjsua/pjsip_event;

    .prologue
    .line 872
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsip_event;->getCPtr(Lorg/pjsip/pjsua/pjsip_event;)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->css_on_call_state(IJLorg/pjsip/pjsua/pjsip_event;)V

    .line 873
    return-void
.end method

.method public static declared-synchronized detect_nat_type()I
    .locals 2

    .prologue
    .line 147
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->detect_nat_type()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized dump(I)V
    .locals 2
    .param p0, "detail"    # I

    .prologue
    .line 187
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->dump(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit v0

    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized enum_accs([I[J)I
    .locals 2
    .param p0, "ids"    # [I
    .param p1, "count"    # [J

    .prologue
    .line 307
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->enum_accs([I[J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized enum_aud_devs(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_aud_dev_info;[J)I
    .locals 4
    .param p0, "info"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_aud_dev_info;
    .param p1, "count"    # [J

    .prologue
    .line 659
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_aud_dev_info;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_aud_dev_info;)J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->enum_aud_devs(J[J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized enum_buddies([I[J)I
    .locals 2
    .param p0, "ids"    # [I
    .param p1, "count"    # [J

    .prologue
    .line 503
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->enum_buddies([I[J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized enum_calls([I[J)I
    .locals 2
    .param p0, "ids"    # [I
    .param p1, "count"    # [J

    .prologue
    .line 355
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->enum_calls([I[J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized enum_codecs(Lorg/pjsip/pjsua/pjsua_codec_info;[J)I
    .locals 4
    .param p0, "id"    # Lorg/pjsip/pjsua/pjsua_codec_info;
    .param p1, "count"    # [J

    .prologue
    .line 704
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsua_codec_info;->getCPtr(Lorg/pjsip/pjsua/pjsua_codec_info;)J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->enum_codecs(JLorg/pjsip/pjsua/pjsua_codec_info;[J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized enum_conf_ports([I[J)I
    .locals 2
    .param p0, "id"    # [I
    .param p1, "count"    # [J

    .prologue
    .line 575
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->enum_conf_ports([I[J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized enum_snd_devs(Lorg/pjsip/pjsua/pjmedia_snd_dev_info;[J)I
    .locals 4
    .param p0, "info"    # Lorg/pjsip/pjsua/pjmedia_snd_dev_info;
    .param p1, "count"    # [J

    .prologue
    .line 663
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->getCPtr(Lorg/pjsip/pjsua/pjmedia_snd_dev_info;)J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->enum_snd_devs(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;[J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized enum_transports([I[J)I
    .locals 2
    .param p0, "id"    # [I
    .param p1, "count"    # [J

    .prologue
    .line 207
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->enum_transports([I[J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getPjsip_info_method()Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_method;
    .locals 4

    .prologue
    .line 551
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_method;

    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_info_method_get()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_method;-><init>(JZ)V

    return-object v0
.end method

.method public static getPjsip_message_method()Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_method;
    .locals 4

    .prologue
    .line 547
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_method;

    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_message_method_get()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_method;-><init>(JZ)V

    return-object v0
.end method

.method public static declared-synchronized get_buddy_count()J
    .locals 4

    .prologue
    .line 495
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->get_buddy_count()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get_ec_tail(Lorg/pjsip/pjsua/SWIGTYPE_p_unsigned_int;)I
    .locals 4
    .param p0, "p_tail_ms"    # Lorg/pjsip/pjsua/SWIGTYPE_p_unsigned_int;

    .prologue
    .line 688
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/SWIGTYPE_p_unsigned_int;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_unsigned_int;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->get_ec_tail(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static get_error_message(I)Lorg/pjsip/pjsua/pj_str_t;
    .locals 4
    .param p0, "status"    # I

    .prologue
    .line 808
    new-instance v0, Lorg/pjsip/pjsua/pj_str_t;

    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->get_error_message(I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    return-object v0
.end method

.method public static get_event_reason_code(Lorg/pjsip/pjsua/pjsip_event;)I
    .locals 2
    .param p0, "e"    # Lorg/pjsip/pjsua/pjsip_event;

    .prologue
    .line 816
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsip_event;->getCPtr(Lorg/pjsip/pjsua/pjsip_event;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->get_event_reason_code(JLorg/pjsip/pjsua/pjsip_event;)I

    move-result v0

    return v0
.end method

.method public static get_event_status_code(Lorg/pjsip/pjsua/pjsip_event;)I
    .locals 2
    .param p0, "e"    # Lorg/pjsip/pjsua/pjsip_event;

    .prologue
    .line 812
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsip_event;->getCPtr(Lorg/pjsip/pjsua/pjsip_event;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->get_event_status_code(JLorg/pjsip/pjsua/pjsip_event;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized get_nat_type([I)I
    .locals 2
    .param p0, "type"    # [I

    .prologue
    .line 151
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->get_nat_type([I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get_pjmedia_endpt()Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_endpt;
    .locals 6

    .prologue
    .line 137
    const-class v3, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->get_pjmedia_endpt()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 138
    .local v0, "cPtr":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v3

    return-object v2

    :cond_0
    :try_start_1
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_endpt;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v4}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_endpt;-><init>(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized get_pjsip_endpt()Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_endpoint;
    .locals 6

    .prologue
    .line 132
    const-class v3, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->get_pjsip_endpt()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 133
    .local v0, "cPtr":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v3

    return-object v2

    :cond_0
    :try_start_1
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_endpoint;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v4}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_endpoint;-><init>(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized get_pool_factory()Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_factory;
    .locals 6

    .prologue
    .line 142
    const-class v3, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->get_pool_factory()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 143
    .local v0, "cPtr":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v3

    return-object v2

    :cond_0
    :try_start_1
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_factory;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v4}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_factory;-><init>(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static get_rx_data_header(Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)Lorg/pjsip/pjsua/pj_str_t;
    .locals 6
    .param p0, "name"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p1, "data"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;

    .prologue
    .line 868
    new-instance v0, Lorg/pjsip/pjsua/pj_str_t;

    invoke-static {p0}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v2

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)J

    move-result-wide v4

    invoke-static {v2, v3, p0, v4, v5}, Lorg/pjsip/pjsua/pjsuaJNI;->get_rx_data_header(JLorg/pjsip/pjsua/pj_str_t;J)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    return-object v0
.end method

.method public static declared-synchronized get_snd_dev([I[I)I
    .locals 2
    .param p0, "capture_dev"    # [I
    .param p1, "playback_dev"    # [I

    .prologue
    .line 667
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->get_snd_dev([I[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get_state()Lorg/pjsip/pjsua/pjsua_state;
    .locals 2

    .prologue
    .line 111
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->get_state()I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_state;->swigToEnum(I)Lorg/pjsip/pjsua/pjsua_state;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized handle_events(J)I
    .locals 2
    .param p0, "msec_timeout"    # J

    .prologue
    .line 115
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->handle_events(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized ice_config_dup(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pjsua_ice_config;Lorg/pjsip/pjsua/pjsua_ice_config;)V
    .locals 10
    .param p0, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;
    .param p1, "dst"    # Lorg/pjsip/pjsua/pjsua_ice_config;
    .param p2, "src"    # Lorg/pjsip/pjsua/pjsua_ice_config;

    .prologue
    .line 227
    const-class v9, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v9

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_ice_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_ice_config;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_ice_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_ice_config;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/pjsip/pjsua/pjsuaJNI;->ice_config_dup(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_ice_config;JLorg/pjsip/pjsua/pjsua_ice_config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit v9

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized ice_config_from_media_config(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pjsua_ice_config;Lorg/pjsip/pjsua/pjsua_media_config;)V
    .locals 10
    .param p0, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;
    .param p1, "dst"    # Lorg/pjsip/pjsua/pjsua_ice_config;
    .param p2, "src"    # Lorg/pjsip/pjsua/pjsua_media_config;

    .prologue
    .line 223
    const-class v9, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v9

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_ice_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_ice_config;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_media_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/pjsip/pjsua/pjsuaJNI;->ice_config_from_media_config(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_ice_config;JLorg/pjsip/pjsua/pjsua_media_config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit v9

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized im_send(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;[B)I
    .locals 15
    .param p0, "acc_id"    # I
    .param p1, "to"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p2, "mime_type"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "content"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p4, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;
    .param p5, "user_data"    # [B

    .prologue
    .line 555
    const-class v14, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v14

    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v1

    invoke-static/range {p2 .. p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    invoke-static/range {p3 .. p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v7

    invoke-static/range {p4 .. p4}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v10

    move v0, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-static/range {v0 .. v13}, Lorg/pjsip/pjsua/pjsuaJNI;->im_send(IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pjsua_msg_data;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v14

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v14

    throw v0
.end method

.method public static declared-synchronized im_typing(ILorg/pjsip/pjsua/pj_str_t;ILorg/pjsip/pjsua/pjsua_msg_data;)I
    .locals 10
    .param p0, "acc_id"    # I
    .param p1, "to"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p2, "is_typing"    # I
    .param p3, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 559
    const-class v9, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v9

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v2

    invoke-static {p3}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v6

    move v1, p0

    move-object v4, p1

    move v5, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Lorg/pjsip/pjsua/pjsuaJNI;->im_typing(IJLorg/pjsip/pjsua/pj_str_t;IJLorg/pjsip/pjsua/pjsua_msg_data;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v9

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static jzrtp_SASRevoked(I)V
    .locals 0
    .param p0, "call_id"    # I

    .prologue
    .line 884
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->jzrtp_SASRevoked(I)V

    .line 885
    return-void
.end method

.method public static jzrtp_SASVerified(I)V
    .locals 0
    .param p0, "call_id"    # I

    .prologue
    .line 880
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->jzrtp_SASVerified(I)V

    .line 881
    return-void
.end method

.method public static jzrtp_getInfoFromCall(I)Lorg/pjsip/pjsua/zrtp_state_info;
    .locals 4
    .param p0, "call_id"    # I

    .prologue
    .line 888
    new-instance v0, Lorg/pjsip/pjsua/zrtp_state_info;

    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->jzrtp_getInfoFromCall(I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/pjsip/pjsua/zrtp_state_info;-><init>(JZ)V

    return-object v0
.end method

.method public static declared-synchronized logging_config_default(Lorg/pjsip/pjsua/pjsua_logging_config;)V
    .locals 4
    .param p0, "cfg"    # Lorg/pjsip/pjsua/pjsua_logging_config;

    .prologue
    .line 78
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsua_logging_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_logging_config;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->logging_config_default(JLorg/pjsip/pjsua/pjsua_logging_config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit v1

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized logging_config_dup(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pjsua_logging_config;Lorg/pjsip/pjsua/pjsua_logging_config;)V
    .locals 10
    .param p0, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;
    .param p1, "dst"    # Lorg/pjsip/pjsua/pjsua_logging_config;
    .param p2, "src"    # Lorg/pjsip/pjsua/pjsua_logging_config;

    .prologue
    .line 82
    const-class v9, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v9

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_logging_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_logging_config;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_logging_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_logging_config;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/pjsip/pjsua/pjsuaJNI;->logging_config_dup(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_logging_config;JLorg/pjsip/pjsua/pjsua_logging_config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit v9

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized media_config_default(Lorg/pjsip/pjsua/pjsua_media_config;)V
    .locals 4
    .param p0, "cfg"    # Lorg/pjsip/pjsua/pjsua_media_config;

    .prologue
    .line 563
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsua_media_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->media_config_default(JLorg/pjsip/pjsua/pjsua_media_config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    monitor-exit v1

    return-void

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static mobile_reg_handler_init()I
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->mobile_reg_handler_init()I

    move-result v0

    return v0
.end method

.method public static mobile_reg_handler_set_callback(Lorg/pjsip/pjsua/MobileRegHandlerCallback;)V
    .locals 2
    .param p0, "callback"    # Lorg/pjsip/pjsua/MobileRegHandlerCallback;

    .prologue
    .line 62
    invoke-static {p0}, Lorg/pjsip/pjsua/MobileRegHandlerCallback;->getCPtr(Lorg/pjsip/pjsua/MobileRegHandlerCallback;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->mobile_reg_handler_set_callback(JLorg/pjsip/pjsua/MobileRegHandlerCallback;)V

    .line 63
    return-void
.end method

.method public static mod_earlylock_init()I
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->mod_earlylock_init()I

    move-result v0

    return v0
.end method

.method public static mod_earlylock_set_callback(Lorg/pjsip/pjsua/EarlyLockCallback;)V
    .locals 2
    .param p0, "callback"    # Lorg/pjsip/pjsua/EarlyLockCallback;

    .prologue
    .line 74
    invoke-static {p0}, Lorg/pjsip/pjsua/EarlyLockCallback;->getCPtr(Lorg/pjsip/pjsua/EarlyLockCallback;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->mod_earlylock_set_callback(JLorg/pjsip/pjsua/EarlyLockCallback;)V

    .line 75
    return-void
.end method

.method public static declared-synchronized msg_data_clone(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pjsua_msg_data;)Lorg/pjsip/pjsua/pjsua_msg_data;
    .locals 9
    .param p0, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;
    .param p1, "rhs"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 98
    const-class v8, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v8

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->msg_data_clone(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_msg_data;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 99
    .local v6, "cPtr":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v8

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/pjsip/pjsua/pjsua_msg_data;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v7, v1}, Lorg/pjsip/pjsua/pjsua_msg_data;-><init>(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    .end local v6    # "cPtr":J
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized msg_data_init(Lorg/pjsip/pjsua/pjsua_msg_data;)V
    .locals 4
    .param p0, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 94
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->msg_data_init(JLorg/pjsip/pjsua/pjsua_msg_data;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v1

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized perror(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "sender"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 183
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->perror(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit v0

    return-void

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static pj_pool_release(Lorg/pjsip/pjsua/pj_pool_t;)V
    .locals 2
    .param p0, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;

    .prologue
    .line 26
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_pool_release(JLorg/pjsip/pjsua/pj_pool_t;)V

    .line 27
    return-void
.end method

.method public static pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 13
    new-instance v0, Lorg/pjsip/pjsua/pj_str_t;

    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_str_copy(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    return-object v0
.end method

.method public static pj_timer_fire(I)I
    .locals 1
    .param p0, "entry_id"    # I

    .prologue
    .line 848
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_timer_fire(I)I

    move-result v0

    return v0
.end method

.method public static pjmedia_port_destroy(Lorg/pjsip/pjsua/pjmedia_port;)I
    .locals 2
    .param p0, "port"    # Lorg/pjsip/pjsua/pjmedia_port;

    .prologue
    .line 50
    invoke-static {p0}, Lorg/pjsip/pjsua/pjmedia_port;->getCPtr(Lorg/pjsip/pjsua/pjmedia_port;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_port_destroy(JLorg/pjsip/pjsua/pjmedia_port;)I

    move-result v0

    return v0
.end method

.method public static pjmedia_tonegen_create2(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pj_str_t;JJJJJLorg/pjsip/pjsua/pjmedia_port;)I
    .locals 18
    .param p0, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;
    .param p1, "name"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p2, "clock_rate"    # J
    .param p4, "channel_count"    # J
    .param p6, "samples_per_frame"    # J
    .param p8, "bits_per_sample"    # J
    .param p10, "options"    # J
    .param p12, "pp_port"    # Lorg/pjsip/pjsua/pjmedia_port;

    .prologue
    .line 30
    invoke-static/range {p0 .. p0}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v0

    invoke-static/range {p1 .. p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-object/from16 v16, p12

    invoke-static/range {v0 .. v16}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_tonegen_create2(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pj_str_t;JJJJJLorg/pjsip/pjsua/pjmedia_port;)I

    move-result v0

    return v0
.end method

.method public static pjmedia_tonegen_play(Lorg/pjsip/pjsua/pjmedia_port;J[Lorg/pjsip/pjsua/pjmedia_tone_desc;J)I
    .locals 8
    .param p0, "tonegen"    # Lorg/pjsip/pjsua/pjmedia_port;
    .param p1, "count"    # J
    .param p3, "tones"    # [Lorg/pjsip/pjsua/pjmedia_tone_desc;
    .param p4, "options"    # J

    .prologue
    .line 34
    invoke-static {p0}, Lorg/pjsip/pjsua/pjmedia_port;->getCPtr(Lorg/pjsip/pjsua/pjmedia_port;)J

    move-result-wide v0

    invoke-static {p3}, Lorg/pjsip/pjsua/pjmedia_tone_desc;->cArrayUnwrap([Lorg/pjsip/pjsua/pjmedia_tone_desc;)[J

    move-result-object v5

    move-object v2, p0

    move-wide v3, p1

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_tonegen_play(JLorg/pjsip/pjsua/pjmedia_port;J[JJ)I

    move-result v0

    return v0
.end method

.method public static pjmedia_tonegen_play_digits(Lorg/pjsip/pjsua/pjmedia_port;J[Lorg/pjsip/pjsua/pjmedia_tone_digit;J)I
    .locals 8
    .param p0, "tonegen"    # Lorg/pjsip/pjsua/pjmedia_port;
    .param p1, "count"    # J
    .param p3, "digits"    # [Lorg/pjsip/pjsua/pjmedia_tone_digit;
    .param p4, "options"    # J

    .prologue
    .line 38
    invoke-static {p0}, Lorg/pjsip/pjsua/pjmedia_port;->getCPtr(Lorg/pjsip/pjsua/pjmedia_port;)J

    move-result-wide v0

    invoke-static {p3}, Lorg/pjsip/pjsua/pjmedia_tone_digit;->cArrayUnwrap([Lorg/pjsip/pjsua/pjmedia_tone_digit;)[J

    move-result-object v5

    move-object v2, p0

    move-wide v3, p1

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_tonegen_play_digits(JLorg/pjsip/pjsua/pjmedia_port;J[JJ)I

    move-result v0

    return v0
.end method

.method public static pjmedia_tonegen_rewind(Lorg/pjsip/pjsua/pjmedia_port;)I
    .locals 2
    .param p0, "tonegen"    # Lorg/pjsip/pjsua/pjmedia_port;

    .prologue
    .line 42
    invoke-static {p0}, Lorg/pjsip/pjsua/pjmedia_port;->getCPtr(Lorg/pjsip/pjsua/pjmedia_port;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_tonegen_rewind(JLorg/pjsip/pjsua/pjmedia_port;)I

    move-result v0

    return v0
.end method

.method public static pjmedia_tonegen_stop(Lorg/pjsip/pjsua/pjmedia_port;)I
    .locals 2
    .param p0, "tonegen"    # Lorg/pjsip/pjsua/pjmedia_port;

    .prologue
    .line 46
    invoke-static {p0}, Lorg/pjsip/pjsua/pjmedia_port;->getCPtr(Lorg/pjsip/pjsua/pjmedia_port;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_tonegen_stop(JLorg/pjsip/pjsua/pjmedia_port;)I

    move-result v0

    return v0
.end method

.method public static pjsua_pool_create(Ljava/lang/String;JJ)Lorg/pjsip/pjsua/pj_pool_t;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "init_size"    # J
    .param p3, "increment"    # J

    .prologue
    .line 21
    invoke-static {p0, p1, p2, p3, p4}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_pool_create(Ljava/lang/String;JJ)J

    move-result-wide v0

    .line 22
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pj_pool_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_pool_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public static pjsua_schedule_timer2(Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_void__void;[BJ)I
    .locals 2
    .param p0, "cb"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_void__void;
    .param p1, "user_data"    # [B
    .param p2, "msec_delay"    # J

    .prologue
    .line 175
    invoke-static {p0}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_void__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_void__void;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_schedule_timer2(J[BJ)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized player_create(Lorg/pjsip/pjsua/pj_str_t;J[I)I
    .locals 7
    .param p0, "filename"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p1, "options"    # J
    .param p3, "p_id"    # [I

    .prologue
    .line 611
    const-class v6, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->player_create(JLorg/pjsip/pjsua/pj_str_t;J[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v6

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized player_destroy(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 639
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->player_destroy(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized player_get_conf_port(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 619
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->player_get_conf_port(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized player_get_info(ILorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_wav_player_info;)I
    .locals 4
    .param p0, "id"    # I
    .param p1, "info"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_wav_player_info;

    .prologue
    .line 627
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_wav_player_info;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_wav_player_info;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->player_get_info(IJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized player_get_port(ILorg/pjsip/pjsua/SWIGTYPE_p_p_pjmedia_port;)I
    .locals 4
    .param p0, "id"    # I
    .param p1, "p_port"    # Lorg/pjsip/pjsua/SWIGTYPE_p_p_pjmedia_port;

    .prologue
    .line 623
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_p_pjmedia_port;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_p_pjmedia_port;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->player_get_port(IJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized player_get_pos(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 631
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->player_get_pos(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized player_set_pos(IJ)I
    .locals 3
    .param p0, "id"    # I
    .param p1, "samples"    # J

    .prologue
    .line 635
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->player_set_pos(IJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized playlist_create([Lorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;J[I)I
    .locals 11
    .param p0, "file_names"    # [Lorg/pjsip/pjsua/pj_str_t;
    .param p1, "file_count"    # J
    .param p3, "label"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p4, "options"    # J
    .param p6, "p_id"    # [I

    .prologue
    .line 615
    const-class v10, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v10

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_str_t;->cArrayUnwrap([Lorg/pjsip/pjsua/pj_str_t;)[J

    move-result-object v1

    invoke-static {p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    move-wide v2, p1

    move-object v6, p3

    move-wide v7, p4

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lorg/pjsip/pjsua/pjsuaJNI;->playlist_create([JJJLorg/pjsip/pjsua/pj_str_t;J[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v10

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized pool_create(Ljava/lang/String;JJ)Lorg/pjsip/pjsua/pj_pool_t;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "init_size"    # J
    .param p3, "increment"    # J

    .prologue
    .line 123
    const-class v3, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/pjsip/pjsua/pjsuaJNI;->pool_create(Ljava/lang/String;JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 124
    .local v0, "cPtr":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v3

    return-object v2

    :cond_0
    :try_start_1
    new-instance v2, Lorg/pjsip/pjsua/pj_pool_t;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v4}, Lorg/pjsip/pjsua/pj_pool_t;-><init>(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    .end local v0    # "cPtr":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized pres_dump(I)V
    .locals 2
    .param p0, "verbose"    # I

    .prologue
    .line 543
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pres_dump(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    monitor-exit v0

    return-void

    .line 543
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized pres_notify(ILorg/pjsip/pjsua/SWIGTYPE_p_pjsua_srv_pres;Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub_state;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;ILorg/pjsip/pjsua/pjsua_msg_data;)I
    .locals 17
    .param p0, "acc_id"    # I
    .param p1, "srv_pres"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsua_srv_pres;
    .param p2, "state"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub_state;
    .param p3, "state_str"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p4, "reason"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p5, "with_body"    # I
    .param p6, "msg_data"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 539
    const-class v16, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v16

    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsua_srv_pres;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsua_srv_pres;)J

    move-result-wide v2

    invoke-static/range {p2 .. p2}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub_state;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub_state;)J

    move-result-wide v4

    invoke-static/range {p3 .. p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v6

    invoke-static/range {p4 .. p4}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v9

    invoke-static/range {p6 .. p6}, Lorg/pjsip/pjsua/pjsua_msg_data;->getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v13

    move/from16 v1, p0

    move-object/from16 v8, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v15, p6

    invoke-static/range {v1 .. v15}, Lorg/pjsip/pjsua/pjsuaJNI;->pres_notify(IJJJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;IJLorg/pjsip/pjsua/pjsua_msg_data;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v16

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v16

    throw v0
.end method

.method public static declared-synchronized reconfigure_logging(Lorg/pjsip/pjsua/pjsua_logging_config;)I
    .locals 4
    .param p0, "c"    # Lorg/pjsip/pjsua/pjsua_logging_config;

    .prologue
    .line 128
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsua_logging_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_logging_config;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->reconfigure_logging(JLorg/pjsip/pjsua/pjsua_logging_config;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized recorder_create(Lorg/pjsip/pjsua/pj_str_t;J[BIJ[I)I
    .locals 13
    .param p0, "filename"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p1, "enc_type"    # J
    .param p3, "enc_param"    # [B
    .param p4, "max_size"    # I
    .param p5, "options"    # J
    .param p7, "p_id"    # [I

    .prologue
    .line 643
    const-class v11, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v11

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v1

    move-object v3, p0

    move-wide v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-static/range {v1 .. v10}, Lorg/pjsip/pjsua/pjsuaJNI;->recorder_create(JLorg/pjsip/pjsua/pj_str_t;J[BIJ[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v11

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public static declared-synchronized recorder_destroy(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 655
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->recorder_destroy(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized recorder_get_conf_port(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 647
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->recorder_get_conf_port(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized recorder_get_port(ILorg/pjsip/pjsua/SWIGTYPE_p_p_pjmedia_port;)I
    .locals 4
    .param p0, "id"    # I
    .param p1, "p_port"    # Lorg/pjsip/pjsua/SWIGTYPE_p_p_pjmedia_port;

    .prologue
    .line 651
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_p_pjmedia_port;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_p_pjmedia_port;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->recorder_get_port(IJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resolve_stun_servers(J[Lorg/pjsip/pjsua/pj_str_t;I[BLorg/pjsip/pjsua/SWIGTYPE_p_f_p_q_const__pj_stun_resolve_result__void;)I
    .locals 8
    .param p0, "count"    # J
    .param p2, "srv"    # [Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "wait"    # I
    .param p4, "token"    # [B
    .param p5, "cb"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_q_const__pj_stun_resolve_result__void;

    .prologue
    .line 155
    const-class v7, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v7

    :try_start_0
    invoke-static {p2}, Lorg/pjsip/pjsua/pj_str_t;->cArrayUnwrap([Lorg/pjsip/pjsua/pj_str_t;)[J

    move-result-object v2

    invoke-static {p5}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_q_const__pj_stun_resolve_result__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_q_const__pj_stun_resolve_result__void;)J

    move-result-wide v5

    move-wide v0, p0

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->resolve_stun_servers(J[JI[BJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized schedule_timer(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_timer_entry;Lorg/pjsip/pjsua/pj_time_val;)I
    .locals 6
    .param p0, "entry"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pj_timer_entry;
    .param p1, "delay"    # Lorg/pjsip/pjsua/pj_time_val;

    .prologue
    .line 171
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_timer_entry;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_timer_entry;)J

    move-result-wide v2

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_time_val;->getCPtr(Lorg/pjsip/pjsua/pj_time_val;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->schedule_timer(JJLorg/pjsip/pjsua/pj_time_val;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static send_dtmf_info(ILorg/pjsip/pjsua/pj_str_t;)I
    .locals 2
    .param p0, "current_call"    # I
    .param p1, "digits"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 792
    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->send_dtmf_info(IJLorg/pjsip/pjsua/pj_str_t;)I

    move-result v0

    return v0
.end method

.method public static setCallbackObject(Lorg/pjsip/pjsua/Callback;)V
    .locals 2
    .param p0, "callback"    # Lorg/pjsip/pjsua/Callback;

    .prologue
    .line 17
    invoke-static {p0}, Lorg/pjsip/pjsua/Callback;->getCPtr(Lorg/pjsip/pjsua/Callback;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->setCallbackObject(JLorg/pjsip/pjsua/Callback;)V

    .line 18
    return-void
.end method

.method public static setZrtpCallbackObject(Lorg/pjsip/pjsua/ZrtpCallback;)V
    .locals 2
    .param p0, "callback"    # Lorg/pjsip/pjsua/ZrtpCallback;

    .prologue
    .line 54
    invoke-static {p0}, Lorg/pjsip/pjsua/ZrtpCallback;->getCPtr(Lorg/pjsip/pjsua/ZrtpCallback;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->setZrtpCallbackObject(JLorg/pjsip/pjsua/ZrtpCallback;)V

    .line 55
    return-void
.end method

.method public static declared-synchronized set_ec(JJ)I
    .locals 2
    .param p0, "tail_ms"    # J
    .param p2, "options"    # J

    .prologue
    .line 684
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/pjsip/pjsua/pjsuaJNI;->set_ec(JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized set_no_snd_dev()Lorg/pjsip/pjsua/pjmedia_port;
    .locals 6

    .prologue
    .line 679
    const-class v3, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->set_no_snd_dev()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 680
    .local v0, "cPtr":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v3

    return-object v2

    :cond_0
    :try_start_1
    new-instance v2, Lorg/pjsip/pjsua/pjmedia_port;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v4}, Lorg/pjsip/pjsua/pjmedia_port;-><init>(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 679
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized set_null_snd_dev()I
    .locals 2

    .prologue
    .line 675
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->set_null_snd_dev()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized set_snd_dev(II)I
    .locals 2
    .param p0, "capture_dev"    # I
    .param p1, "playback_dev"    # I

    .prologue
    .line 671
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->set_snd_dev(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static set_turn_credentials(Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;)I
    .locals 11
    .param p0, "username"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p1, "password"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p2, "realm"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "turn_auth_cred"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;

    .prologue
    .line 864
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v6

    invoke-static {p3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v10}, Lorg/pjsip/pjsua/pjsuaJNI;->set_turn_credentials(JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;J)I

    move-result v0

    return v0
.end method

.method public static sipclf_mod_init()I
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->sipclf_mod_init()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized snd_get_setting(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_aud_dev_cap;[B)I
    .locals 4
    .param p0, "cap"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_aud_dev_cap;
    .param p1, "pval"    # [B

    .prologue
    .line 700
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_aud_dev_cap;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_aud_dev_cap;)J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->snd_get_setting(J[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized snd_is_active()I
    .locals 2

    .prologue
    .line 692
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->snd_is_active()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized snd_set_setting(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_aud_dev_cap;[BI)I
    .locals 4
    .param p0, "cap"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_aud_dev_cap;
    .param p1, "pval"    # [B
    .param p2, "keep"    # I

    .prologue
    .line 696
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_aud_dev_cap;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_aud_dev_cap;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->snd_set_setting(J[BI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized start()I
    .locals 2

    .prologue
    .line 107
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->start()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized stop_worker_threads()V
    .locals 2

    .prologue
    .line 119
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->stop_worker_threads()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit v0

    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized transport_close(II)I
    .locals 2
    .param p0, "id"    # I
    .param p1, "force"    # I

    .prologue
    .line 219
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->transport_close(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized transport_config_default(Lorg/pjsip/pjsua/pjsua_transport_config;)V
    .locals 4
    .param p0, "cfg"    # Lorg/pjsip/pjsua/pjsua_transport_config;

    .prologue
    .line 191
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsua_transport_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_transport_config;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->transport_config_default(JLorg/pjsip/pjsua/pjsua_transport_config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit v1

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized transport_config_dup(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pjsua_transport_config;Lorg/pjsip/pjsua/pjsua_transport_config;)V
    .locals 10
    .param p0, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;
    .param p1, "dst"    # Lorg/pjsip/pjsua/pjsua_transport_config;
    .param p2, "src"    # Lorg/pjsip/pjsua/pjsua_transport_config;

    .prologue
    .line 195
    const-class v9, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v9

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_transport_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_transport_config;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_transport_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_transport_config;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/pjsip/pjsua/pjsuaJNI;->transport_config_dup(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_transport_config;JLorg/pjsip/pjsua/pjsua_transport_config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit v9

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized transport_create(Lorg/pjsip/pjsua/pjsip_transport_type_e;Lorg/pjsip/pjsua/pjsua_transport_config;[I)I
    .locals 4
    .param p0, "type"    # Lorg/pjsip/pjsua/pjsip_transport_type_e;
    .param p1, "cfg"    # Lorg/pjsip/pjsua/pjsua_transport_config;
    .param p2, "p_id"    # [I

    .prologue
    .line 199
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsip_transport_type_e;->swigValue()I

    move-result v0

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_transport_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_transport_config;)J

    move-result-wide v2

    invoke-static {v0, v2, v3, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->transport_create(IJLorg/pjsip/pjsua/pjsua_transport_config;[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized transport_get_info(ILorg/pjsip/pjsua/pjsua_transport_info;)I
    .locals 4
    .param p0, "id"    # I
    .param p1, "info"    # Lorg/pjsip/pjsua/pjsua_transport_info;

    .prologue
    .line 211
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_transport_info;->getCPtr(Lorg/pjsip/pjsua/pjsua_transport_info;)J

    move-result-wide v2

    invoke-static {p0, v2, v3, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->transport_get_info(IJLorg/pjsip/pjsua/pjsua_transport_info;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized transport_register(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_transport;[I)I
    .locals 4
    .param p0, "tp"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_transport;
    .param p1, "p_id"    # [I

    .prologue
    .line 203
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_transport;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_transport;)J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->transport_register(J[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized transport_set_enable(II)I
    .locals 2
    .param p0, "id"    # I
    .param p1, "enabled"    # I

    .prologue
    .line 215
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->transport_set_enable(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized turn_config_dup(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pjsua_turn_config;Lorg/pjsip/pjsua/pjsua_turn_config;)V
    .locals 10
    .param p0, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;
    .param p1, "dst"    # Lorg/pjsip/pjsua/pjsua_turn_config;
    .param p2, "src"    # Lorg/pjsip/pjsua/pjsua_turn_config;

    .prologue
    .line 235
    const-class v9, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v9

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_turn_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_turn_config;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_turn_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_turn_config;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/pjsip/pjsua/pjsuaJNI;->turn_config_dup(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_turn_config;JLorg/pjsip/pjsua/pjsua_turn_config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit v9

    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized turn_config_from_media_config(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pjsua_turn_config;Lorg/pjsip/pjsua/pjsua_media_config;)V
    .locals 10
    .param p0, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;
    .param p1, "dst"    # Lorg/pjsip/pjsua/pjsua_turn_config;
    .param p2, "src"    # Lorg/pjsip/pjsua/pjsua_media_config;

    .prologue
    .line 231
    const-class v9, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v9

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_turn_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_turn_config;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua_media_config;->getCPtr(Lorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/pjsip/pjsua/pjsuaJNI;->turn_config_from_media_config(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_turn_config;JLorg/pjsip/pjsua/pjsua_media_config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit v9

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static update_transport(Lorg/pjsip/pjsua/pj_str_t;)I
    .locals 2
    .param p0, "new_ip_addr"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 852
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->update_transport(JLorg/pjsip/pjsua/pj_str_t;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized verify_sip_url(Ljava/lang/String;)I
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 163
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->verify_sip_url(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized verify_url(Ljava/lang/String;)I
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 167
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->verify_url(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized vid_codec_get_param(Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_codec_param;)I
    .locals 6
    .param p0, "codec_id"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p1, "param"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_codec_param;

    .prologue
    .line 784
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v2

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_codec_param;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_codec_param;)J

    move-result-wide v4

    invoke-static {v2, v3, p0, v4, v5}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_codec_get_param(JLorg/pjsip/pjsua/pj_str_t;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized vid_codec_set_param(Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_codec_param;)I
    .locals 6
    .param p0, "codec_id"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p1, "param"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_codec_param;

    .prologue
    .line 788
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v2

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_codec_param;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_codec_param;)J

    move-result-wide v4

    invoke-static {v2, v3, p0, v4, v5}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_codec_set_param(JLorg/pjsip/pjsua/pj_str_t;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized vid_codec_set_priority(Lorg/pjsip/pjsua/pj_str_t;S)I
    .locals 4
    .param p0, "codec_id"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p1, "priority"    # S

    .prologue
    .line 780
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_codec_set_priority(JLorg/pjsip/pjsua/pj_str_t;S)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized vid_dev_count()J
    .locals 4

    .prologue
    .line 720
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_dev_count()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized vid_dev_get_info(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_info;)I
    .locals 6
    .param p0, "id"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;
    .param p1, "vdi"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_info;

    .prologue
    .line 724
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;)J

    move-result-wide v2

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_info;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_info;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_dev_get_info(JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized vid_enum_codecs(Lorg/pjsip/pjsua/pjsua_codec_info;[J)I
    .locals 4
    .param p0, "id"    # Lorg/pjsip/pjsua/pjsua_codec_info;
    .param p1, "count"    # [J

    .prologue
    .line 776
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsua_codec_info;->getCPtr(Lorg/pjsip/pjsua/pjsua_codec_info;)J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_enum_codecs(JLorg/pjsip/pjsua/pjsua_codec_info;[J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized vid_enum_devs(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_info;[J)I
    .locals 4
    .param p0, "info"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_info;
    .param p1, "count"    # [J

    .prologue
    .line 728
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_info;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_info;)J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_enum_devs(J[J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized vid_enum_wins([I[J)I
    .locals 2
    .param p0, "wids"    # [I
    .param p1, "count"    # [J

    .prologue
    .line 752
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_enum_wins([I[J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized vid_preview_get_win(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;)I
    .locals 4
    .param p0, "id"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;

    .prologue
    .line 744
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_preview_get_win(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized vid_preview_has_native(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;)I
    .locals 4
    .param p0, "id"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;

    .prologue
    .line 736
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_preview_has_native(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized vid_preview_param_default(Lorg/pjsip/pjsua/pjsua_vid_preview_param;)V
    .locals 4
    .param p0, "p"    # Lorg/pjsip/pjsua/pjsua_vid_preview_param;

    .prologue
    .line 732
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsua_vid_preview_param;->getCPtr(Lorg/pjsip/pjsua/pjsua_vid_preview_param;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_preview_param_default(JLorg/pjsip/pjsua/pjsua_vid_preview_param;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    monitor-exit v1

    return-void

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized vid_preview_start(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;Lorg/pjsip/pjsua/pjsua_vid_preview_param;)I
    .locals 6
    .param p0, "id"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;
    .param p1, "p"    # Lorg/pjsip/pjsua/pjsua_vid_preview_param;

    .prologue
    .line 740
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;)J

    move-result-wide v2

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_vid_preview_param;->getCPtr(Lorg/pjsip/pjsua/pjsua_vid_preview_param;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_preview_start(JJLorg/pjsip/pjsua/pjsua_vid_preview_param;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized vid_preview_stop(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;)I
    .locals 4
    .param p0, "id"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;

    .prologue
    .line 748
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_preview_stop(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static vid_set_android_capturer(Ljava/lang/Object;)I
    .locals 1
    .param p0, "window"    # Ljava/lang/Object;

    .prologue
    .line 860
    invoke-static {p0}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_set_android_capturer(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static vid_set_android_renderer(ILjava/lang/Object;)I
    .locals 1
    .param p0, "call_id"    # I
    .param p1, "window"    # Ljava/lang/Object;

    .prologue
    .line 856
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_set_android_renderer(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized vid_win_get_info(ILorg/pjsip/pjsua/pjsua_vid_win_info;)I
    .locals 4
    .param p0, "wid"    # I
    .param p1, "wi"    # Lorg/pjsip/pjsua/pjsua_vid_win_info;

    .prologue
    .line 756
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_vid_win_info;->getCPtr(Lorg/pjsip/pjsua/pjsua_vid_win_info;)J

    move-result-wide v2

    invoke-static {p0, v2, v3, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_win_get_info(IJLorg/pjsip/pjsua/pjsua_vid_win_info;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized vid_win_rotate(II)I
    .locals 2
    .param p0, "wid"    # I
    .param p1, "angle"    # I

    .prologue
    .line 772
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_win_rotate(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized vid_win_set_pos(ILorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_coord;)I
    .locals 4
    .param p0, "wid"    # I
    .param p1, "pos"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_coord;

    .prologue
    .line 764
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_coord;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_coord;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_win_set_pos(IJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized vid_win_set_show(II)I
    .locals 2
    .param p0, "wid"    # I
    .param p1, "show"    # I

    .prologue
    .line 760
    const-class v0, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_win_set_show(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized vid_win_set_size(ILorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_rect_size;)I
    .locals 4
    .param p0, "wid"    # I
    .param p1, "size"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_rect_size;

    .prologue
    .line 768
    const-class v1, Lorg/pjsip/pjsua/pjsua;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_rect_size;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_rect_size;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->vid_win_set_size(IJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

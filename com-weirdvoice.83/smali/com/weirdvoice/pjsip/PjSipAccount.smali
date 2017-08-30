.class public Lcom/weirdvoice/pjsip/PjSipAccount;
.super Ljava/lang/Object;
.source "PjSipAccount.java"


# instance fields
.field public active:Z

.field public cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

.field public css_cfg:Lorg/pjsip/pjsua/csipsimple_acc_config;

.field private displayName:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field private profile_default_rtp_port:Z

.field private profile_enable_qos:I

.field private profile_qos_dscp:I

.field private profile_vid_auto_show:I

.field private profile_vid_auto_transmit:I

.field public transport:Ljava/lang/Integer;

.field public wizard:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/pjsip/PjSipAccount;->transport:Ljava/lang/Integer;

    .line 64
    iput v1, p0, Lcom/weirdvoice/pjsip/PjSipAccount;->profile_vid_auto_show:I

    .line 65
    iput v1, p0, Lcom/weirdvoice/pjsip/PjSipAccount;->profile_vid_auto_transmit:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipAccount;->profile_default_rtp_port:Z

    .line 75
    new-instance v0, Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-direct {v0}, Lorg/pjsip/pjsua/pjsua_acc_config;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    .line 76
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->acc_config_default(Lorg/pjsip/pjsua/pjsua_acc_config;)V

    .line 78
    new-instance v0, Lorg/pjsip/pjsua/csipsimple_acc_config;

    invoke-direct {v0}, Lorg/pjsip/pjsua/csipsimple_acc_config;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/pjsip/PjSipAccount;->css_cfg:Lorg/pjsip/pjsua/csipsimple_acc_config;

    .line 79
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipAccount;->css_cfg:Lorg/pjsip/pjsua/csipsimple_acc_config;

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->csipsimple_acc_config_default(Lorg/pjsip/pjsua/csipsimple_acc_config;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/weirdvoice/api/SipProfile;)V
    .locals 17
    .param p1, "profile"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Lcom/weirdvoice/pjsip/PjSipAccount;-><init>()V

    .line 89
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/weirdvoice/api/SipProfile;->id:J

    const-wide/16 v14, -0x1

    cmp-long v11, v12, v14

    if-eqz v11, :cond_0

    .line 90
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->id:Ljava/lang/Long;

    .line 93
    :cond_0
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->displayName:Ljava/lang/String;

    .line 94
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->wizard:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->wizard:Ljava/lang/String;

    .line 95
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->transport:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->transport:Ljava/lang/Integer;

    .line 96
    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/weirdvoice/api/SipProfile;->active:Z

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->active:Z

    .line 97
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->transport:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->transport:Ljava/lang/Integer;

    .line 100
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/weirdvoice/api/SipProfile;->priority:I

    invoke-virtual {v11, v12}, Lorg/pjsip/pjsua/pjsua_acc_config;->setPriority(I)V

    .line 101
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 102
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-static {v12}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/pjsip/pjsua/pjsua_acc_config;->setId(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 104
    :cond_1
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->reg_uri:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 105
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/weirdvoice/api/SipProfile;->reg_uri:Ljava/lang/String;

    invoke-static {v12}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/pjsip/pjsua/pjsua_acc_config;->setReg_uri(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 107
    :cond_2
    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->publish_enabled:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    .line 108
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/weirdvoice/api/SipProfile;->publish_enabled:I

    invoke-virtual {v11, v12}, Lorg/pjsip/pjsua/pjsua_acc_config;->setPublish_enabled(I)V

    .line 110
    :cond_3
    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->reg_timeout:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 111
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/weirdvoice/api/SipProfile;->reg_timeout:I

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/pjsip/pjsua/pjsua_acc_config;->setReg_timeout(J)V

    .line 113
    :cond_4
    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->reg_delay_before_refresh:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 114
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/weirdvoice/api/SipProfile;->reg_delay_before_refresh:I

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/pjsip/pjsua/pjsua_acc_config;->setReg_delay_before_refresh(J)V

    .line 116
    :cond_5
    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->ka_interval:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    .line 117
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/weirdvoice/api/SipProfile;->ka_interval:I

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/pjsip/pjsua/pjsua_acc_config;->setKa_interval(J)V

    .line 119
    :cond_6
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    if-eqz v11, :cond_7

    .line 120
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/weirdvoice/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    invoke-static {v12}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/pjsip/pjsua/pjsua_acc_config;->setPidf_tuple_id(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 122
    :cond_7
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->force_contact:Ljava/lang/String;

    if-eqz v11, :cond_8

    .line 123
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/weirdvoice/api/SipProfile;->force_contact:Ljava/lang/String;

    invoke-static {v12}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/pjsip/pjsua/pjsua_acc_config;->setForce_contact(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 126
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/weirdvoice/api/SipProfile;->allow_contact_rewrite:Z

    if-eqz v11, :cond_15

    sget v11, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_0
    invoke-virtual {v12, v11}, Lorg/pjsip/pjsua/pjsua_acc_config;->setAllow_contact_rewrite(I)V

    .line 127
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/weirdvoice/api/SipProfile;->contact_rewrite_method:I

    invoke-virtual {v11, v12}, Lorg/pjsip/pjsua/pjsua_acc_config;->setContact_rewrite_method(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/weirdvoice/api/SipProfile;->allow_via_rewrite:Z

    if-eqz v11, :cond_16

    sget v11, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_1
    invoke-virtual {v12, v11}, Lorg/pjsip/pjsua/pjsua_acc_config;->setAllow_via_rewrite(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/weirdvoice/api/SipProfile;->allow_sdp_nat_rewrite:Z

    if-eqz v11, :cond_17

    sget v11, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_2
    invoke-virtual {v12, v11}, Lorg/pjsip/pjsua/pjsua_acc_config;->setAllow_sdp_nat_rewrite(I)V

    .line 132
    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->use_srtp:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_9

    .line 133
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/weirdvoice/api/SipProfile;->use_srtp:I

    invoke-static {v12}, Lorg/pjsip/pjsua/pjmedia_srtp_use;->swigToEnum(I)Lorg/pjsip/pjsua/pjmedia_srtp_use;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/pjsip/pjsua/pjsua_acc_config;->setUse_srtp(Lorg/pjsip/pjsua/pjmedia_srtp_use;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/pjsip/pjsua/pjsua_acc_config;->setSrtp_secure_signaling(I)V

    .line 137
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->css_cfg:Lorg/pjsip/pjsua/csipsimple_acc_config;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/weirdvoice/api/SipProfile;->use_zrtp:I

    invoke-virtual {v11, v12}, Lorg/pjsip/pjsua/csipsimple_acc_config;->setUse_zrtp(I)V

    .line 140
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v11, :cond_19

    .line 141
    const-string v11, "PjSipAccount"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Create proxy "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    array-length v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    array-length v12, v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/pjsip/pjsua/pjsua_acc_config;->setProxy_cnt(J)V

    .line 143
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-virtual {v11}, Lorg/pjsip/pjsua/pjsua_acc_config;->getProxy()[Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v7

    .line 144
    .local v7, "proxies":[Lorg/pjsip/pjsua/pj_str_t;
    const/4 v5, 0x0

    .line 145
    .local v5, "i":I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    array-length v13, v12

    const/4 v11, 0x0

    :goto_3
    if-lt v11, v13, :cond_18

    .line 150
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-virtual {v11, v7}, Lorg/pjsip/pjsua/pjsua_acc_config;->setProxy([Lorg/pjsip/pjsua/pj_str_t;)V

    .line 154
    .end local v5    # "i":I
    .end local v7    # "proxies":[Lorg/pjsip/pjsua/pj_str_t;
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/weirdvoice/api/SipProfile;->reg_use_proxy:I

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/pjsip/pjsua/pjsua_acc_config;->setReg_use_proxy(J)V

    .line 156
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    if-nez v11, :cond_a

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    if-eqz v11, :cond_1a

    .line 157
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    const-wide/16 v12, 0x1

    invoke-virtual {v11, v12, v13}, Lorg/pjsip/pjsua/pjsua_acc_config;->setCred_count(J)V

    .line 158
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-virtual {v11}, Lorg/pjsip/pjsua/pjsua_acc_config;->getCred_info()Lorg/pjsip/pjsua/pjsip_cred_info;

    move-result-object v3

    .line 160
    .local v3, "cred_info":Lorg/pjsip/pjsua/pjsip_cred_info;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->realm:Ljava/lang/String;

    if-eqz v11, :cond_b

    .line 161
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->realm:Ljava/lang/String;

    invoke-static {v11}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/pjsip/pjsua/pjsip_cred_info;->setRealm(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 163
    :cond_b
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    if-eqz v11, :cond_c

    .line 164
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    invoke-static {v11}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/pjsip/pjsua/pjsip_cred_info;->setUsername(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 166
    :cond_c
    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->datatype:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_d

    .line 167
    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->datatype:I

    invoke-virtual {v3, v11}, Lorg/pjsip/pjsua/pjsip_cred_info;->setData_type(I)V

    .line 169
    :cond_d
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    if-eqz v11, :cond_e

    .line 170
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    invoke-static {v11}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/pjsip/pjsua/pjsip_cred_info;->setData(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 178
    .end local v3    # "cred_info":Lorg/pjsip/pjsua/pjsip_cred_info;
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-virtual {v11}, Lorg/pjsip/pjsua/pjsua_acc_config;->getAuth_pref()Lorg/pjsip/pjsua/pjsip_auth_clt_pref;

    move-result-object v2

    .line 179
    .local v2, "authPref":Lorg/pjsip/pjsua/pjsip_auth_clt_pref;
    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/weirdvoice/api/SipProfile;->initial_auth:Z

    if-eqz v11, :cond_1b

    sget v11, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_6
    invoke-virtual {v2, v11}, Lorg/pjsip/pjsua/pjsip_auth_clt_pref;->setInitial_auth(I)V

    .line 180
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->auth_algo:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 181
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->auth_algo:Ljava/lang/String;

    invoke-static {v11}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/pjsip/pjsua/pjsip_auth_clt_pref;->setAlgorithm(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 183
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-virtual {v11, v2}, Lorg/pjsip/pjsua/pjsua_acc_config;->setAuth_pref(Lorg/pjsip/pjsua/pjsip_auth_clt_pref;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/weirdvoice/api/SipProfile;->mwi_enabled:Z

    if-eqz v11, :cond_1c

    sget v11, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_7
    invoke-virtual {v12, v11}, Lorg/pjsip/pjsua/pjsua_acc_config;->setMwi_enabled(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->ipv6_media_use:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_1d

    sget-object v11, Lorg/pjsip/pjsua/pjsua_ipv6_use;->PJSUA_IPV6_ENABLED:Lorg/pjsip/pjsua/pjsua_ipv6_use;

    :goto_8
    invoke-virtual {v12, v11}, Lorg/pjsip/pjsua/pjsua_acc_config;->setIpv6_media_use(Lorg/pjsip/pjsua/pjsua_ipv6_use;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/weirdvoice/api/SipProfile;->use_rfc5626:Z

    if-eqz v11, :cond_1e

    sget v11, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_9
    int-to-long v14, v11

    invoke-virtual {v12, v14, v15}, Lorg/pjsip/pjsua/pjsua_acc_config;->setUse_rfc5626(J)V

    .line 192
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 193
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/weirdvoice/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    invoke-static {v12}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/pjsip/pjsua/pjsua_acc_config;->setRfc5626_instance_id(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 195
    :cond_10
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 196
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/weirdvoice/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    invoke-static {v12}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/pjsip/pjsua/pjsua_acc_config;->setRfc5626_reg_id(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 201
    :cond_11
    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->vid_in_auto_show:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->profile_vid_auto_show:I

    .line 202
    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->vid_out_auto_transmit:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->profile_vid_auto_transmit:I

    .line 206
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-virtual {v11}, Lorg/pjsip/pjsua/pjsua_acc_config;->getRtp_cfg()Lorg/pjsip/pjsua/pjsua_transport_config;

    move-result-object v9

    .line 207
    .local v9, "rtpCfg":Lorg/pjsip/pjsua/pjsua_transport_config;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->rtp_port:I

    if-ltz v11, :cond_12

    .line 208
    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->rtp_port:I

    int-to-long v12, v11

    invoke-virtual {v9, v12, v13}, Lorg/pjsip/pjsua/pjsua_transport_config;->setPort(J)V

    .line 209
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->profile_default_rtp_port:Z

    .line 211
    :cond_12
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_13

    .line 212
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    invoke-static {v11}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/pjsip/pjsua/pjsua_transport_config;->setPublic_addr(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 214
    :cond_13
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_14

    .line 215
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    invoke-static {v11}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/pjsip/pjsua/pjsua_transport_config;->setBound_addr(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 218
    :cond_14
    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->rtp_enable_qos:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->profile_enable_qos:I

    .line 219
    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->rtp_qos_dscp:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->profile_qos_dscp:I

    .line 221
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->sip_stun_use:I

    if-nez v11, :cond_1f

    sget-object v11, Lorg/pjsip/pjsua/pjsua_stun_use;->PJSUA_STUN_USE_DISABLED:Lorg/pjsip/pjsua/pjsua_stun_use;

    :goto_a
    invoke-virtual {v12, v11}, Lorg/pjsip/pjsua/pjsua_acc_config;->setSip_stun_use(Lorg/pjsip/pjsua/pjsua_stun_use;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->media_stun_use:I

    if-nez v11, :cond_20

    sget-object v11, Lorg/pjsip/pjsua/pjsua_stun_use;->PJSUA_STUN_USE_DISABLED:Lorg/pjsip/pjsua/pjsua_stun_use;

    :goto_b
    invoke-virtual {v12, v11}, Lorg/pjsip/pjsua/pjsua_acc_config;->setMedia_stun_use(Lorg/pjsip/pjsua/pjsua_stun_use;)V

    .line 223
    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_use:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_22

    .line 224
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    sget-object v12, Lorg/pjsip/pjsua/pjsua_ice_config_use;->PJSUA_ICE_CONFIG_USE_CUSTOM:Lorg/pjsip/pjsua/pjsua_ice_config_use;

    invoke-virtual {v11, v12}, Lorg/pjsip/pjsua/pjsua_acc_config;->setIce_cfg_use(Lorg/pjsip/pjsua/pjsua_ice_config_use;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-virtual {v11}, Lorg/pjsip/pjsua/pjsua_acc_config;->getIce_cfg()Lorg/pjsip/pjsua/pjsua_ice_config;

    move-result-object v6

    .line 226
    .local v6, "iceCfg":Lorg/pjsip/pjsua/pjsua_ice_config;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_enable:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_21

    sget v11, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_c
    invoke-virtual {v6, v11}, Lorg/pjsip/pjsua/pjsua_ice_config;->setEnable_ice(I)V

    .line 230
    .end local v6    # "iceCfg":Lorg/pjsip/pjsua/pjsua_ice_config;
    :goto_d
    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_use:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_24

    .line 231
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    sget-object v12, Lorg/pjsip/pjsua/pjsua_turn_config_use;->PJSUA_TURN_CONFIG_USE_CUSTOM:Lorg/pjsip/pjsua/pjsua_turn_config_use;

    invoke-virtual {v11, v12}, Lorg/pjsip/pjsua/pjsua_acc_config;->setTurn_cfg_use(Lorg/pjsip/pjsua/pjsua_turn_config_use;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-virtual {v11}, Lorg/pjsip/pjsua/pjsua_acc_config;->getTurn_cfg()Lorg/pjsip/pjsua/pjsua_turn_config;

    move-result-object v10

    .line 233
    .local v10, "turnCfg":Lorg/pjsip/pjsua/pjsua_turn_config;
    invoke-virtual {v10}, Lorg/pjsip/pjsua/pjsua_turn_config;->getTurn_auth_cred()Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;

    move-result-object v4

    .line 234
    .local v4, "creds":Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_enable:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_23

    sget v11, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_e
    invoke-virtual {v10, v11}, Lorg/pjsip/pjsua/pjsua_turn_config;->setEnable_turn(I)V

    .line 235
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    invoke-static {v11}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/pjsip/pjsua/pjsua_turn_config;->setTurn_server(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 237
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    invoke-static {v11}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v11

    .line 238
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    invoke-static {v12}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v12

    .line 239
    const-string v13, "*"

    invoke-static {v13}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v13

    .line 236
    invoke-static {v11, v12, v13, v4}, Lorg/pjsip/pjsua/pjsua;->set_turn_credentials(Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;)I

    .line 242
    invoke-virtual {v10, v4}, Lorg/pjsip/pjsua/pjsua_turn_config;->setTurn_auth_cred(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;)V

    .line 246
    .end local v4    # "creds":Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;
    .end local v10    # "turnCfg":Lorg/pjsip/pjsua/pjsua_turn_config;
    :goto_f
    return-void

    .line 126
    .end local v2    # "authPref":Lorg/pjsip/pjsua/pjsip_auth_clt_pref;
    .end local v9    # "rtpCfg":Lorg/pjsip/pjsua/pjsua_transport_config;
    :cond_15
    sget v11, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_0

    .line 128
    :cond_16
    sget v11, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_1

    .line 129
    :cond_17
    sget v11, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_2

    .line 145
    .restart local v5    # "i":I
    .restart local v7    # "proxies":[Lorg/pjsip/pjsua/pj_str_t;
    :cond_18
    aget-object v8, v12, v11

    .line 146
    .local v8, "proxy":Ljava/lang/String;
    const-string v14, "PjSipAccount"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Add proxy "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {v8}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v14

    aput-object v14, v7, v5

    .line 148
    add-int/lit8 v5, v5, 0x1

    .line 145
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 152
    .end local v5    # "i":I
    .end local v7    # "proxies":[Lorg/pjsip/pjsua/pj_str_t;
    .end local v8    # "proxy":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/pjsip/pjsua/pjsua_acc_config;->setProxy_cnt(J)V

    goto/16 :goto_4

    .line 173
    :cond_1a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/pjsip/pjsua/pjsua_acc_config;->setCred_count(J)V

    goto/16 :goto_5

    .line 179
    .restart local v2    # "authPref":Lorg/pjsip/pjsua/pjsip_auth_clt_pref;
    :cond_1b
    sget v11, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_6

    .line 186
    :cond_1c
    sget v11, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_7

    .line 188
    :cond_1d
    sget-object v11, Lorg/pjsip/pjsua/pjsua_ipv6_use;->PJSUA_IPV6_DISABLED:Lorg/pjsip/pjsua/pjsua_ipv6_use;

    goto/16 :goto_8

    .line 191
    :cond_1e
    sget v11, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_9

    .line 221
    .restart local v9    # "rtpCfg":Lorg/pjsip/pjsua/pjsua_transport_config;
    :cond_1f
    sget-object v11, Lorg/pjsip/pjsua/pjsua_stun_use;->PJSUA_STUN_USE_DEFAULT:Lorg/pjsip/pjsua/pjsua_stun_use;

    goto/16 :goto_a

    .line 222
    :cond_20
    sget-object v11, Lorg/pjsip/pjsua/pjsua_stun_use;->PJSUA_STUN_USE_DEFAULT:Lorg/pjsip/pjsua/pjsua_stun_use;

    goto/16 :goto_b

    .line 226
    .restart local v6    # "iceCfg":Lorg/pjsip/pjsua/pjsua_ice_config;
    :cond_21
    sget v11, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_c

    .line 228
    .end local v6    # "iceCfg":Lorg/pjsip/pjsua/pjsua_ice_config;
    :cond_22
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    sget-object v12, Lorg/pjsip/pjsua/pjsua_ice_config_use;->PJSUA_ICE_CONFIG_USE_DEFAULT:Lorg/pjsip/pjsua/pjsua_ice_config_use;

    invoke-virtual {v11, v12}, Lorg/pjsip/pjsua/pjsua_acc_config;->setIce_cfg_use(Lorg/pjsip/pjsua/pjsua_ice_config_use;)V

    goto/16 :goto_d

    .line 234
    .restart local v4    # "creds":Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;
    .restart local v10    # "turnCfg":Lorg/pjsip/pjsua/pjsua_turn_config;
    :cond_23
    sget v11, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_e

    .line 244
    .end local v4    # "creds":Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;
    .end local v10    # "turnCfg":Lorg/pjsip/pjsua/pjsua_turn_config;
    :cond_24
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    sget-object v12, Lorg/pjsip/pjsua/pjsua_turn_config_use;->PJSUA_TURN_CONFIG_USE_DEFAULT:Lorg/pjsip/pjsua/pjsua_turn_config_use;

    invoke-virtual {v11, v12}, Lorg/pjsip/pjsua/pjsua_acc_config;->setTurn_cfg_use(Lorg/pjsip/pjsua/pjsua_turn_config_use;)V

    goto :goto_f
.end method


# virtual methods
.method public applyExtraParams(Landroid/content/Context;)V
    .locals 22
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 258
    const-string v16, ""

    .line 259
    .local v16, "regUri":Ljava/lang/String;
    const-string v5, ""

    .line 260
    .local v5, "argument":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->transport:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 275
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/pjsip/pjsua/pjsua_acc_config;->getReg_uri()Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v16

    .line 277
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/pjsip/pjsua/pjsua_acc_config;->getProxy_cnt()J

    move-result-wide v10

    .line 279
    .local v10, "initialProxyCnt":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/pjsip/pjsua/pjsua_acc_config;->getProxy()[Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v14

    .line 283
    .local v14, "proxies":[Lorg/pjsip/pjsua/pj_str_t;
    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-static/range {v18 .. v18}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v8

    .line 284
    .local v8, "firstProxy":Ljava/lang/String;
    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-eqz v18, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 285
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/pjsip/pjsua/pjsua_acc_config;->setReg_uri(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_acc_config;->setProxy_cnt(J)V

    .line 299
    .end local v8    # "firstProxy":Ljava/lang/String;
    .end local v10    # "initialProxyCnt":J
    .end local v14    # "proxies":[Lorg/pjsip/pjsua/pj_str_t;
    :cond_1
    :goto_1
    new-instance v13, Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    .line 300
    .local v13, "prefs":Lcom/weirdvoice/utils/PreferencesProviderWrapper;
    const-string v18, "default_caller_id"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 302
    .local v6, "defaultCallerid":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/pjsip/pjsua/pjsua_acc_config;->getId()Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "accId":Ljava/lang/String;
    invoke-static {v4}, Lcom/weirdvoice/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;

    move-result-object v12

    .line 305
    .local v12, "parsedInfos":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    iget-object v0, v12, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 307
    iput-object v6, v12, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/pjsip/pjsua/pjsua_acc_config;->setId(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 313
    .end local v4    # "accId":Ljava/lang/String;
    .end local v12    # "parsedInfos":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v18, v0

    invoke-virtual {v13}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getUdpKeepAliveInterval()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_acc_config;->setKa_interval(J)V

    .line 316
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->profile_vid_auto_show:I

    move/from16 v18, v0

    if-ltz v18, :cond_8

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->profile_vid_auto_show:I

    move/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    sget v18, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_acc_config;->setVid_in_auto_show(I)V

    .line 321
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->profile_vid_auto_transmit:I

    move/from16 v18, v0

    if-ltz v18, :cond_a

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->profile_vid_auto_transmit:I

    move/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    sget v18, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_acc_config;->setVid_out_auto_transmit(I)V

    .line 329
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/pjsip/pjsua/pjsua_acc_config;->getRtp_cfg()Lorg/pjsip/pjsua/pjsua_transport_config;

    move-result-object v17

    .line 330
    .local v17, "rtpCfg":Lorg/pjsip/pjsua/pjsua_transport_config;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->profile_default_rtp_port:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 331
    invoke-virtual {v13}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getRTPPort()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Lorg/pjsip/pjsua/pjsua_transport_config;->setPort(J)V

    .line 333
    :cond_3
    const-string v18, "enable_qos"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 334
    .local v9, "hasQos":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->profile_enable_qos:I

    move/from16 v18, v0

    if-ltz v18, :cond_4

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->profile_enable_qos:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/4 v9, 0x1

    .line 337
    :cond_4
    :goto_6
    if-eqz v9, :cond_5

    .line 339
    sget-object v18, Lorg/pjsip/pjsua/pj_qos_type;->PJ_QOS_TYPE_VOICE:Lorg/pjsip/pjsua/pj_qos_type;

    invoke-virtual/range {v17 .. v18}, Lorg/pjsip/pjsua/pjsua_transport_config;->setQos_type(Lorg/pjsip/pjsua/pj_qos_type;)V

    .line 340
    invoke-virtual/range {v17 .. v17}, Lorg/pjsip/pjsua/pjsua_transport_config;->getQos_params()Lorg/pjsip/pjsua/pj_qos_params;

    move-result-object v15

    .line 342
    .local v15, "qosParam":Lorg/pjsip/pjsua/pj_qos_params;
    const-string v18, "dscp_rtp_val"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    int-to-short v7, v0

    .line 343
    .local v7, "dscpVal":S
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->profile_qos_dscp:I

    move/from16 v18, v0

    if-ltz v18, :cond_5

    .line 345
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->profile_qos_dscp:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-short v7, v0

    .line 346
    invoke-virtual {v15, v7}, Lorg/pjsip/pjsua/pj_qos_params;->setDscp_val(S)V

    .line 347
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/pjsip/pjsua/pj_qos_params;->setFlags(S)V

    .line 350
    .end local v7    # "dscpVal":S
    .end local v15    # "qosParam":Lorg/pjsip/pjsua/pj_qos_params;
    :cond_5
    return-void

    .line 262
    .end local v6    # "defaultCallerid":Ljava/lang/String;
    .end local v9    # "hasQos":Z
    .end local v13    # "prefs":Lcom/weirdvoice/utils/PreferencesProviderWrapper;
    .end local v17    # "rtpCfg":Lorg/pjsip/pjsua/pjsua_transport_config;
    :pswitch_0
    const-string v5, ";transport=udp;lr"

    .line 263
    goto/16 :goto_0

    .line 265
    :pswitch_1
    const-string v5, ";transport=tcp;lr"

    .line 266
    goto/16 :goto_0

    .line 269
    :pswitch_2
    const-string v5, ";transport=tls;lr"

    .line 270
    goto/16 :goto_0

    .line 288
    .restart local v8    # "firstProxy":Ljava/lang/String;
    .restart local v10    # "initialProxyCnt":J
    .restart local v14    # "proxies":[Lorg/pjsip/pjsua/pj_str_t;
    :cond_6
    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v19

    aput-object v19, v14, v18

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lorg/pjsip/pjsua/pjsua_acc_config;->setProxy([Lorg/pjsip/pjsua/pj_str_t;)V

    goto/16 :goto_1

    .line 317
    .end local v8    # "firstProxy":Ljava/lang/String;
    .end local v10    # "initialProxyCnt":J
    .end local v14    # "proxies":[Lorg/pjsip/pjsua/pj_str_t;
    .restart local v6    # "defaultCallerid":Ljava/lang/String;
    .restart local v13    # "prefs":Lcom/weirdvoice/utils/PreferencesProviderWrapper;
    :cond_7
    sget v18, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_2

    .line 319
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v18, v0

    sget v19, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    invoke-virtual/range {v18 .. v19}, Lorg/pjsip/pjsua/pjsua_acc_config;->setVid_in_auto_show(I)V

    goto/16 :goto_3

    .line 322
    :cond_9
    sget v18, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_4

    .line 324
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v18, v0

    sget v19, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    invoke-virtual/range {v18 .. v19}, Lorg/pjsip/pjsua/pjsua_acc_config;->setVid_out_auto_transmit(I)V

    goto/16 :goto_5

    .line 335
    .restart local v9    # "hasQos":Z
    .restart local v17    # "rtpCfg":Lorg/pjsip/pjsua/pjsua_transport_config;
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 361
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/weirdvoice/pjsip/PjSipAccount;

    if-ne v1, v2, :cond_1

    move-object v0, p1

    .line 362
    check-cast v0, Lcom/weirdvoice/pjsip/PjSipAccount;

    .line 363
    .local v0, "oAccount":Lcom/weirdvoice/pjsip/PjSipAccount;
    iget-object v1, v0, Lcom/weirdvoice/pjsip/PjSipAccount;->id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipAccount;->id:Ljava/lang/Long;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 365
    .end local v0    # "oAccount":Lcom/weirdvoice/pjsip/PjSipAccount;
    :goto_0
    return v1

    .line 363
    .restart local v0    # "oAccount":Lcom/weirdvoice/pjsip/PjSipAccount;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 365
    .end local v0    # "oAccount":Lcom/weirdvoice/pjsip/PjSipAccount;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipAccount;->displayName:Ljava/lang/String;

    return-object v0
.end method

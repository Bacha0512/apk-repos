.class public Lorg/abtollc/voip/SipAccount;
.super Ljava/lang/Object;
.source "SipAccount.java"


# instance fields
.field public active:Z

.field public cfg:Lorg/abtollc/jni/pjsua_acc_config;

.field public css_cfg:Lorg/abtollc/jni/csipsimple_acc_config;

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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/voip/SipAccount;->transport:Ljava/lang/Integer;

    .line 36
    iput v1, p0, Lorg/abtollc/voip/SipAccount;->profile_vid_auto_show:I

    .line 37
    iput v1, p0, Lorg/abtollc/voip/SipAccount;->profile_vid_auto_transmit:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/abtollc/voip/SipAccount;->profile_default_rtp_port:Z

    .line 45
    new-instance v0, Lorg/abtollc/jni/pjsua_acc_config;

    invoke-direct {v0}, Lorg/abtollc/jni/pjsua_acc_config;-><init>()V

    iput-object v0, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    .line 46
    iget-object v0, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    invoke-static {v0}, Lorg/abtollc/jni/pjsua;->acc_config_default(Lorg/abtollc/jni/pjsua_acc_config;)V

    .line 48
    new-instance v0, Lorg/abtollc/jni/csipsimple_acc_config;

    invoke-direct {v0}, Lorg/abtollc/jni/csipsimple_acc_config;-><init>()V

    iput-object v0, p0, Lorg/abtollc/voip/SipAccount;->css_cfg:Lorg/abtollc/jni/csipsimple_acc_config;

    .line 49
    iget-object v0, p0, Lorg/abtollc/voip/SipAccount;->css_cfg:Lorg/abtollc/jni/csipsimple_acc_config;

    invoke-static {v0}, Lorg/abtollc/jni/pjsua;->csipsimple_acc_config_default(Lorg/abtollc/jni/csipsimple_acc_config;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/abtollc/api/SipProfile;)V
    .locals 12
    .param p1, "profile"    # Lorg/abtollc/api/SipProfile;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/abtollc/voip/SipAccount;-><init>()V

    .line 61
    iget-wide v6, p1, Lorg/abtollc/api/SipProfile;->id:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 62
    iget-wide v6, p1, Lorg/abtollc/api/SipProfile;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lorg/abtollc/voip/SipAccount;->id:Ljava/lang/Long;

    .line 65
    :cond_0
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->display_name:Ljava/lang/String;

    iput-object v6, p0, Lorg/abtollc/voip/SipAccount;->displayName:Ljava/lang/String;

    .line 66
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->wizard:Ljava/lang/String;

    iput-object v6, p0, Lorg/abtollc/voip/SipAccount;->wizard:Ljava/lang/String;

    .line 67
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->transport:Ljava/lang/Integer;

    iput-object v6, p0, Lorg/abtollc/voip/SipAccount;->transport:Ljava/lang/Integer;

    .line 68
    iget-boolean v6, p1, Lorg/abtollc/api/SipProfile;->active:Z

    iput-boolean v6, p0, Lorg/abtollc/voip/SipAccount;->active:Z

    .line 71
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget v7, p1, Lorg/abtollc/api/SipProfile;->priority:I

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setPriority(I)V

    .line 72
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 73
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->displayName:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 74
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-static {v6}, Lorg/abtollc/api/SipUri;->parseSipContact(Ljava/lang/String;)Lorg/abtollc/api/SipUri$ParsedSipContactInfos;

    move-result-object v2

    .line 75
    .local v2, "parsedInfos":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->displayName:Ljava/lang/String;

    iput-object v6, v2, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    .line 76
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    invoke-virtual {v2}, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setId(Lorg/abtollc/jni/pj_str_t;)V

    .line 81
    .end local v2    # "parsedInfos":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    :cond_1
    :goto_0
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->reg_uri:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 82
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget-object v7, p1, Lorg/abtollc/api/SipProfile;->reg_uri:Ljava/lang/String;

    invoke-static {v7}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setReg_uri(Lorg/abtollc/jni/pj_str_t;)V

    .line 84
    :cond_2
    iget v6, p1, Lorg/abtollc/api/SipProfile;->publish_enabled:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 85
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget v7, p1, Lorg/abtollc/api/SipProfile;->publish_enabled:I

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setPublish_enabled(I)V

    .line 87
    :cond_3
    iget v6, p1, Lorg/abtollc/api/SipProfile;->reg_timeout:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 88
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget v7, p1, Lorg/abtollc/api/SipProfile;->reg_timeout:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lorg/abtollc/jni/pjsua_acc_config;->setReg_timeout(J)V

    .line 90
    :cond_4
    iget v6, p1, Lorg/abtollc/api/SipProfile;->reg_delay_before_refresh:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 91
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget v7, p1, Lorg/abtollc/api/SipProfile;->reg_delay_before_refresh:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lorg/abtollc/jni/pjsua_acc_config;->setReg_delay_before_refresh(J)V

    .line 93
    :cond_5
    iget v6, p1, Lorg/abtollc/api/SipProfile;->ka_interval:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    .line 94
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget v7, p1, Lorg/abtollc/api/SipProfile;->ka_interval:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lorg/abtollc/jni/pjsua_acc_config;->setKa_interval(J)V

    .line 96
    :cond_6
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 97
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget-object v7, p1, Lorg/abtollc/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    invoke-static {v7}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setPidf_tuple_id(Lorg/abtollc/jni/pj_str_t;)V

    .line 99
    :cond_7
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->force_contact:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 100
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget-object v7, p1, Lorg/abtollc/api/SipProfile;->force_contact:Ljava/lang/String;

    invoke-static {v7}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setForce_contact(Lorg/abtollc/jni/pj_str_t;)V

    .line 103
    :cond_8
    iget-object v7, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget-boolean v6, p1, Lorg/abtollc/api/SipProfile;->allow_contact_rewrite:Z

    if-eqz v6, :cond_b

    sget v6, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    :goto_1
    invoke-virtual {v7, v6}, Lorg/abtollc/jni/pjsua_acc_config;->setAllow_contact_rewrite(I)V

    .line 104
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget v7, p1, Lorg/abtollc/api/SipProfile;->contact_rewrite_method:I

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setContact_rewrite_method(I)V

    .line 105
    iget-object v7, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget-boolean v6, p1, Lorg/abtollc/api/SipProfile;->allow_via_rewrite:Z

    if-eqz v6, :cond_c

    sget v6, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    :goto_2
    invoke-virtual {v7, v6}, Lorg/abtollc/jni/pjsua_acc_config;->setAllow_via_rewrite(I)V

    .line 107
    iget v6, p1, Lorg/abtollc/api/SipProfile;->use_srtp:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_9

    .line 108
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget v7, p1, Lorg/abtollc/api/SipProfile;->use_srtp:I

    invoke-static {v7}, Lorg/abtollc/jni/pjmedia_srtp_use;->swigToEnum(I)Lorg/abtollc/jni/pjmedia_srtp_use;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setUse_srtp(Lorg/abtollc/jni/pjmedia_srtp_use;)V

    .line 109
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setSrtp_secure_signaling(I)V

    .line 112
    :cond_9
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->css_cfg:Lorg/abtollc/jni/csipsimple_acc_config;

    iget v7, p1, Lorg/abtollc/api/SipProfile;->use_zrtp:I

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/csipsimple_acc_config;->setUse_zrtp(I)V

    .line 114
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v6, :cond_19

    .line 115
    const-string v6, "PjSipAccount"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create proxy "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget-object v7, p1, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    array-length v7, v7

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lorg/abtollc/jni/pjsua_acc_config;->setProxy_cnt(J)V

    .line 117
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    invoke-virtual {v6}, Lorg/abtollc/jni/pjsua_acc_config;->getProxy()[Lorg/abtollc/jni/pj_str_t;

    move-result-object v3

    .line 118
    .local v3, "proxies":[Lorg/abtollc/jni/pj_str_t;
    const/4 v1, 0x0

    .line 119
    .local v1, "i":I
    iget-object v7, p1, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_d

    aget-object v4, v7, v6

    .line 120
    .local v4, "proxy":Ljava/lang/String;
    const-string v9, "PjSipAccount"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Add proxy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {v4}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v9

    aput-object v9, v3, v1

    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 119
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 78
    .end local v1    # "i":I
    .end local v3    # "proxies":[Lorg/abtollc/jni/pj_str_t;
    .end local v4    # "proxy":Ljava/lang/String;
    :cond_a
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget-object v7, p1, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-static {v7}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setId(Lorg/abtollc/jni/pj_str_t;)V

    goto/16 :goto_0

    .line 103
    :cond_b
    sget v6, Lorg/abtollc/jni/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_1

    .line 105
    :cond_c
    sget v6, Lorg/abtollc/jni/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_2

    .line 124
    .restart local v1    # "i":I
    .restart local v3    # "proxies":[Lorg/abtollc/jni/pj_str_t;
    :cond_d
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    invoke-virtual {v6, v3}, Lorg/abtollc/jni/pjsua_acc_config;->setProxy([Lorg/abtollc/jni/pj_str_t;)V

    .line 128
    .end local v1    # "i":I
    .end local v3    # "proxies":[Lorg/abtollc/jni/pj_str_t;
    :goto_4
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget v7, p1, Lorg/abtollc/api/SipProfile;->reg_use_proxy:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lorg/abtollc/jni/pjsua_acc_config;->setReg_use_proxy(J)V

    .line 130
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->username:Ljava/lang/String;

    if-nez v6, :cond_e

    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->data:Ljava/lang/String;

    if-eqz v6, :cond_1a

    .line 131
    :cond_e
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9}, Lorg/abtollc/jni/pjsua_acc_config;->setCred_count(J)V

    .line 132
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    invoke-virtual {v6}, Lorg/abtollc/jni/pjsua_acc_config;->getCred_info()Lorg/abtollc/jni/pjsip_cred_info;

    move-result-object v0

    .line 134
    .local v0, "cred_info":Lorg/abtollc/jni/pjsip_cred_info;
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->realm:Ljava/lang/String;

    if-eqz v6, :cond_f

    .line 135
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->realm:Ljava/lang/String;

    invoke-static {v6}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/abtollc/jni/pjsip_cred_info;->setRealm(Lorg/abtollc/jni/pj_str_t;)V

    .line 137
    :cond_f
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->username:Ljava/lang/String;

    if-eqz v6, :cond_10

    .line 138
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->username:Ljava/lang/String;

    invoke-static {v6}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/abtollc/jni/pjsip_cred_info;->setUsername(Lorg/abtollc/jni/pj_str_t;)V

    .line 140
    :cond_10
    iget v6, p1, Lorg/abtollc/api/SipProfile;->datatype:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_11

    .line 141
    iget v6, p1, Lorg/abtollc/api/SipProfile;->datatype:I

    invoke-virtual {v0, v6}, Lorg/abtollc/jni/pjsip_cred_info;->setData_type(I)V

    .line 143
    :cond_11
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->data:Ljava/lang/String;

    if-eqz v6, :cond_12

    .line 144
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->data:Ljava/lang/String;

    invoke-static {v6}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/abtollc/jni/pjsip_cred_info;->setData(Lorg/abtollc/jni/pj_str_t;)V

    .line 150
    .end local v0    # "cred_info":Lorg/abtollc/jni/pjsip_cred_info;
    :cond_12
    :goto_5
    iget-object v7, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget-boolean v6, p1, Lorg/abtollc/api/SipProfile;->mwi_enabled:Z

    if-eqz v6, :cond_1b

    sget v6, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    :goto_6
    invoke-virtual {v7, v6}, Lorg/abtollc/jni/pjsua_acc_config;->setMwi_enabled(I)V

    .line 151
    iget-object v7, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget v6, p1, Lorg/abtollc/api/SipProfile;->ipv6_media_use:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1c

    sget-object v6, Lorg/abtollc/jni/pjsua_ipv6_use;->PJSUA_IPV6_ENABLED:Lorg/abtollc/jni/pjsua_ipv6_use;

    :goto_7
    invoke-virtual {v7, v6}, Lorg/abtollc/jni/pjsua_acc_config;->setIpv6_media_use(Lorg/abtollc/jni/pjsua_ipv6_use;)V

    .line 154
    iget-object v8, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget-boolean v6, p1, Lorg/abtollc/api/SipProfile;->use_rfc5626:Z

    if-eqz v6, :cond_1d

    sget v6, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    int-to-long v6, v6

    :goto_8
    invoke-virtual {v8, v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setUse_rfc5626(J)V

    .line 155
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 156
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget-object v7, p1, Lorg/abtollc/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    invoke-static {v7}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setRfc5626_instance_id(Lorg/abtollc/jni/pj_str_t;)V

    .line 158
    :cond_13
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 159
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget-object v7, p1, Lorg/abtollc/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    invoke-static {v7}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setRfc5626_reg_id(Lorg/abtollc/jni/pj_str_t;)V

    .line 163
    :cond_14
    iget v6, p1, Lorg/abtollc/api/SipProfile;->vid_in_auto_show:I

    iput v6, p0, Lorg/abtollc/voip/SipAccount;->profile_vid_auto_show:I

    .line 164
    iget v6, p1, Lorg/abtollc/api/SipProfile;->vid_out_auto_transmit:I

    iput v6, p0, Lorg/abtollc/voip/SipAccount;->profile_vid_auto_transmit:I

    .line 167
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    invoke-virtual {v6}, Lorg/abtollc/jni/pjsua_acc_config;->getRtp_cfg()Lorg/abtollc/jni/pjsua_transport_config;

    move-result-object v5

    .line 168
    .local v5, "rtpCfg":Lorg/abtollc/jni/pjsua_transport_config;
    iget v6, p1, Lorg/abtollc/api/SipProfile;->rtp_port:I

    if-ltz v6, :cond_15

    .line 169
    iget v6, p1, Lorg/abtollc/api/SipProfile;->rtp_port:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/abtollc/jni/pjsua_transport_config;->setPort(J)V

    .line 170
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/abtollc/voip/SipAccount;->profile_default_rtp_port:Z

    .line 172
    :cond_15
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 173
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    invoke-static {v6}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/abtollc/jni/pjsua_transport_config;->setPublic_addr(Lorg/abtollc/jni/pj_str_t;)V

    .line 175
    :cond_16
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 176
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    invoke-static {v6}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/abtollc/jni/pjsua_transport_config;->setBound_addr(Lorg/abtollc/jni/pj_str_t;)V

    .line 179
    :cond_17
    iget v6, p1, Lorg/abtollc/api/SipProfile;->rtp_enable_qos:I

    iput v6, p0, Lorg/abtollc/voip/SipAccount;->profile_enable_qos:I

    .line 180
    iget v6, p1, Lorg/abtollc/api/SipProfile;->rtp_qos_dscp:I

    iput v6, p0, Lorg/abtollc/voip/SipAccount;->profile_qos_dscp:I

    .line 182
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->wizard:Ljava/lang/String;

    const-string v7, "LOCAL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 183
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setRegister_on_acc_add(I)V

    .line 186
    :cond_18
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->contactDetails:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contactDetails="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lorg/abtollc/api/SipProfile;->contactDetails:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget-object v7, p1, Lorg/abtollc/api/SipProfile;->contactDetails:Ljava/lang/String;

    invoke-static {v7}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setContact_params(Lorg/abtollc/jni/pj_str_t;)V

    .line 193
    :goto_9
    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->contactDetailsUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contactDetailsUri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lorg/abtollc/api/SipProfile;->contactDetailsUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget-object v7, p1, Lorg/abtollc/api/SipProfile;->contactDetailsUri:Ljava/lang/String;

    invoke-static {v7}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setContact_uri_params(Lorg/abtollc/jni/pj_str_t;)V

    .line 221
    :goto_a
    return-void

    .line 126
    .end local v5    # "rtpCfg":Lorg/abtollc/jni/pjsua_transport_config;
    :cond_19
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/abtollc/jni/pjsua_acc_config;->setProxy_cnt(J)V

    goto/16 :goto_4

    .line 147
    :cond_1a
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/abtollc/jni/pjsua_acc_config;->setCred_count(J)V

    goto/16 :goto_5

    .line 150
    :cond_1b
    sget v6, Lorg/abtollc/jni/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_6

    .line 151
    :cond_1c
    sget-object v6, Lorg/abtollc/jni/pjsua_ipv6_use;->PJSUA_IPV6_DISABLED:Lorg/abtollc/jni/pjsua_ipv6_use;

    goto/16 :goto_7

    .line 154
    :cond_1d
    sget v6, Lorg/abtollc/jni/pjsuaConstants;->PJ_FALSE:I

    int-to-long v6, v6

    goto/16 :goto_8

    .line 190
    .restart local v5    # "rtpCfg":Lorg/abtollc/jni/pjsua_transport_config;
    :cond_1e
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    const-string v7, ""

    invoke-static {v7}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setContact_params(Lorg/abtollc/jni/pj_str_t;)V

    goto :goto_9

    .line 197
    :cond_1f
    iget-object v6, p0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    const-string v7, ""

    invoke-static {v7}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/abtollc/jni/pjsua_acc_config;->setContact_uri_params(Lorg/abtollc/jni/pj_str_t;)V

    goto :goto_a
.end method


# virtual methods
.method public applyExtraParams(Landroid/content/Context;)V
    .locals 24
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 231
    const-string v18, ""

    .line 232
    .local v18, "regUri":Ljava/lang/String;
    const-string v6, ""

    .line 233
    .local v6, "argument":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->transport:Ljava/lang/Integer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 248
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/abtollc/jni/pjsua_acc_config;->getReg_uri()Lorg/abtollc/jni/pj_str_t;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v18

    .line 250
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/abtollc/jni/pjsua_acc_config;->getProxy_cnt()J

    move-result-wide v12

    .line 252
    .local v12, "initialProxyCnt":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/abtollc/jni/pjsua_acc_config;->getProxy()[Lorg/abtollc/jni/pj_str_t;

    move-result-object v16

    .line 256
    .local v16, "proxies":[Lorg/abtollc/jni/pj_str_t;
    const/16 v20, 0x0

    aget-object v20, v16, v20

    invoke-static/range {v20 .. v20}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v9

    .line 257
    .local v9, "firstProxy":Ljava/lang/String;
    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-eqz v20, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 258
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/abtollc/jni/pjsua_acc_config;->setReg_uri(Lorg/abtollc/jni/pj_str_t;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/jni/pjsua_acc_config;->setProxy_cnt(J)V

    .line 285
    .end local v9    # "firstProxy":Ljava/lang/String;
    .end local v12    # "initialProxyCnt":J
    .end local v16    # "proxies":[Lorg/abtollc/jni/pj_str_t;
    :cond_1
    :goto_1
    new-instance v15, Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    .line 286
    .local v15, "prefs":Lorg/abtollc/utils/PreferencesProviderWrapper;
    const-string v20, "default_caller_id"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, "defaultCallerid":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/abtollc/jni/pjsua_acc_config;->getId()Lorg/abtollc/jni/pj_str_t;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "accId":Ljava/lang/String;
    invoke-static {v4}, Lorg/abtollc/api/SipUri;->parseSipContact(Ljava/lang/String;)Lorg/abtollc/api/SipUri$ParsedSipContactInfos;

    move-result-object v14

    .line 291
    .local v14, "parsedInfos":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    iget-object v0, v14, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 293
    iput-object v7, v14, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    move-object/from16 v20, v0

    invoke-virtual {v14}, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/abtollc/jni/pjsua_acc_config;->setId(Lorg/abtollc/jni/pj_str_t;)V

    .line 299
    .end local v4    # "accId":Ljava/lang/String;
    .end local v14    # "parsedInfos":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getUdpKeepAliveInterval()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/jni/pjsua_acc_config;->setKa_interval(J)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/jni/pjsua_acc_config;->setReg_retry_interval(J)V

    .line 304
    move-object/from16 v0, p0

    iget v0, v0, Lorg/abtollc/voip/SipAccount;->profile_vid_auto_show:I

    move/from16 v20, v0

    if-ltz v20, :cond_a

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/abtollc/voip/SipAccount;->profile_vid_auto_show:I

    move/from16 v20, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    sget v20, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/pjsua_acc_config;->setVid_in_auto_show(I)V

    .line 309
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/abtollc/voip/SipAccount;->profile_vid_auto_transmit:I

    move/from16 v20, v0

    if-ltz v20, :cond_c

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/abtollc/voip/SipAccount;->profile_vid_auto_transmit:I

    move/from16 v20, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    sget v20, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    :goto_4
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/pjsua_acc_config;->setVid_out_auto_transmit(I)V

    .line 317
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/abtollc/jni/pjsua_acc_config;->getRtp_cfg()Lorg/abtollc/jni/pjsua_transport_config;

    move-result-object v19

    .line 318
    .local v19, "rtpCfg":Lorg/abtollc/jni/pjsua_transport_config;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/abtollc/voip/SipAccount;->profile_default_rtp_port:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 319
    invoke-virtual {v15}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getRTPPort()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/abtollc/jni/pjsua_transport_config;->setPort(J)V

    .line 321
    :cond_3
    const-string v20, "enable_qos"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v10

    .line 322
    .local v10, "hasQos":Z
    move-object/from16 v0, p0

    iget v0, v0, Lorg/abtollc/voip/SipAccount;->profile_enable_qos:I

    move/from16 v20, v0

    if-ltz v20, :cond_4

    .line 323
    move-object/from16 v0, p0

    iget v0, v0, Lorg/abtollc/voip/SipAccount;->profile_enable_qos:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/4 v10, 0x1

    .line 325
    :cond_4
    :goto_6
    if-eqz v10, :cond_5

    .line 327
    sget-object v20, Lorg/abtollc/jni/pj_qos_type;->PJ_QOS_TYPE_VOICE:Lorg/abtollc/jni/pj_qos_type;

    invoke-virtual/range {v19 .. v20}, Lorg/abtollc/jni/pjsua_transport_config;->setQos_type(Lorg/abtollc/jni/pj_qos_type;)V

    .line 328
    invoke-virtual/range {v19 .. v19}, Lorg/abtollc/jni/pjsua_transport_config;->getQos_params()Lorg/abtollc/jni/pj_qos_params;

    move-result-object v17

    .line 330
    .local v17, "qosParam":Lorg/abtollc/jni/pj_qos_params;
    invoke-virtual {v15}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getDSCPVal()I

    move-result v20

    move/from16 v0, v20

    int-to-short v8, v0

    .line 331
    .local v8, "dscpVal":S
    move-object/from16 v0, p0

    iget v0, v0, Lorg/abtollc/voip/SipAccount;->profile_qos_dscp:I

    move/from16 v20, v0

    if-ltz v20, :cond_5

    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Lorg/abtollc/voip/SipAccount;->profile_qos_dscp:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-short v8, v0

    .line 334
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lorg/abtollc/jni/pj_qos_params;->setDscp_val(S)V

    .line 335
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/pj_qos_params;->setFlags(S)V

    .line 339
    .end local v8    # "dscpVal":S
    .end local v17    # "qosParam":Lorg/abtollc/jni/pj_qos_params;
    :cond_5
    return-void

    .line 235
    .end local v7    # "defaultCallerid":Ljava/lang/String;
    .end local v10    # "hasQos":Z
    .end local v15    # "prefs":Lorg/abtollc/utils/PreferencesProviderWrapper;
    .end local v19    # "rtpCfg":Lorg/abtollc/jni/pjsua_transport_config;
    :pswitch_0
    const-string v6, ";transport=udp;lr"

    .line 236
    goto/16 :goto_0

    .line 238
    :pswitch_1
    const-string v6, ";transport=tcp;lr"

    .line 239
    goto/16 :goto_0

    .line 242
    :pswitch_2
    const-string v6, ";transport=tls;lr"

    .line 243
    goto/16 :goto_0

    .line 262
    .restart local v9    # "firstProxy":Ljava/lang/String;
    .restart local v12    # "initialProxyCnt":J
    .restart local v16    # "proxies":[Lorg/abtollc/jni/pj_str_t;
    :cond_6
    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v21

    aput-object v21, v16, v20

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/pjsua_acc_config;->setProxy([Lorg/abtollc/jni/pj_str_t;)V

    goto/16 :goto_1

    .line 272
    .end local v9    # "firstProxy":Ljava/lang/String;
    .end local v12    # "initialProxyCnt":J
    .end local v16    # "proxies":[Lorg/abtollc/jni/pj_str_t;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/abtollc/jni/pjsua_acc_config;->getId()Lorg/abtollc/jni/pj_str_t;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .local v5, "acc_id":Ljava/lang/StringBuilder;
    const-string v20, ">"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 275
    .local v11, "ind":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_8

    .line 276
    invoke-virtual {v5, v11, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/abtollc/jni/pjsua_acc_config;->setId(Lorg/abtollc/jni/pj_str_t;)V

    goto/16 :goto_1

    .line 278
    :cond_8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 305
    .end local v5    # "acc_id":Ljava/lang/StringBuilder;
    .end local v11    # "ind":I
    .restart local v7    # "defaultCallerid":Ljava/lang/String;
    .restart local v15    # "prefs":Lorg/abtollc/utils/PreferencesProviderWrapper;
    :cond_9
    sget v20, Lorg/abtollc/jni/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_2

    .line 307
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    move-object/from16 v20, v0

    sget v21, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    invoke-virtual/range {v20 .. v21}, Lorg/abtollc/jni/pjsua_acc_config;->setVid_in_auto_show(I)V

    goto/16 :goto_3

    .line 310
    :cond_b
    sget v20, Lorg/abtollc/jni/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_4

    .line 313
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    move-object/from16 v20, v0

    sget v21, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    invoke-virtual/range {v20 .. v21}, Lorg/abtollc/jni/pjsua_acc_config;->setVid_out_auto_transmit(I)V

    goto/16 :goto_5

    .line 323
    .restart local v10    # "hasQos":Z
    .restart local v19    # "rtpCfg":Lorg/abtollc/jni/pjsua_transport_config;
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 233
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
    .line 350
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/abtollc/voip/SipAccount;

    if-ne v1, v2, :cond_1

    move-object v0, p1

    .line 351
    check-cast v0, Lorg/abtollc/voip/SipAccount;

    .line 352
    .local v0, "oAccount":Lorg/abtollc/voip/SipAccount;
    iget-object v1, v0, Lorg/abtollc/voip/SipAccount;->id:Ljava/lang/Long;

    iget-object v2, p0, Lorg/abtollc/voip/SipAccount;->id:Ljava/lang/Long;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 354
    .end local v0    # "oAccount":Lorg/abtollc/voip/SipAccount;
    :goto_0
    return v1

    .line 352
    .restart local v0    # "oAccount":Lorg/abtollc/voip/SipAccount;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 354
    .end local v0    # "oAccount":Lorg/abtollc/voip/SipAccount;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/abtollc/voip/SipAccount;->displayName:Ljava/lang/String;

    return-object v0
.end method

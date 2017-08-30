.class public Lcom/weirdvoice/wizards/impl/Expert;
.super Lcom/weirdvoice/wizards/impl/BaseImplementation;
.source "Expert.java"


# static fields
.field private static SUMMARIES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final THIS_FILE:Ljava/lang/String; = "Expert"


# instance fields
.field private accountAccId:Landroid/preference/EditTextPreference;

.field private accountAllowContactRewrite:Landroid/preference/CheckBoxPreference;

.field private accountAllowSdpNatRewrite:Landroid/preference/CheckBoxPreference;

.field private accountAllowViaRewrite:Landroid/preference/CheckBoxPreference;

.field private accountAuthAlgo:Landroid/preference/EditTextPreference;

.field private accountContactRewriteMethod:Landroid/preference/ListPreference;

.field private accountData:Landroid/preference/EditTextPreference;

.field private accountDataType:Landroid/preference/ListPreference;

.field private accountDefaultUriScheme:Landroid/preference/ListPreference;

.field private accountDisplayName:Landroid/preference/EditTextPreference;

.field private accountForceContact:Landroid/preference/EditTextPreference;

.field private accountInitAuth:Landroid/preference/CheckBoxPreference;

.field private accountProxy:Landroid/preference/EditTextPreference;

.field private accountPublishEnabled:Landroid/preference/CheckBoxPreference;

.field private accountRealm:Landroid/preference/EditTextPreference;

.field private accountRegDelayRefresh:Landroid/preference/EditTextPreference;

.field private accountRegTimeout:Landroid/preference/EditTextPreference;

.field private accountRegUri:Landroid/preference/EditTextPreference;

.field private accountScheme:Landroid/preference/ListPreference;

.field private accountTransport:Landroid/preference/ListPreference;

.field private accountUseSrtp:Landroid/preference/ListPreference;

.field private accountUseZrtp:Landroid/preference/ListPreference;

.field private accountUserName:Landroid/preference/EditTextPreference;

.field private accountVm:Landroid/preference/EditTextPreference;

.field private iceCfgEnable:Landroid/preference/CheckBoxPreference;

.field private iceCfgUse:Landroid/preference/CheckBoxPreference;

.field private ipv6MediaEnable:Landroid/preference/CheckBoxPreference;

.field private mediaStunUse:Landroid/preference/ListPreference;

.field private mwiEnabled:Landroid/preference/CheckBoxPreference;

.field private rfc5626_instanceId:Landroid/preference/EditTextPreference;

.field private rfc5626_regId:Landroid/preference/EditTextPreference;

.field private rtpBoundAddr:Landroid/preference/EditTextPreference;

.field private rtpEnableQos:Landroid/preference/ListPreference;

.field private rtpPort:Landroid/preference/EditTextPreference;

.field private rtpPublicAddr:Landroid/preference/EditTextPreference;

.field private rtpQosDscp:Landroid/preference/EditTextPreference;

.field private sipStunUse:Landroid/preference/ListPreference;

.field private tryCleanRegisters:Landroid/preference/CheckBoxPreference;

.field private turnCfgEnable:Landroid/preference/CheckBoxPreference;

.field private turnCfgPassword:Landroid/preference/EditTextPreference;

.field private turnCfgServer:Landroid/preference/EditTextPreference;

.field private turnCfgUse:Landroid/preference/CheckBoxPreference;

.field private turnCfgUser:Landroid/preference/EditTextPreference;

.field private useRfc5626:Landroid/preference/CheckBoxPreference;

.field private vidInAutoShow:Landroid/preference/ListPreference;

.field private vidOutAutoTransmit:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/weirdvoice/wizards/impl/Expert$1;

    invoke-direct {v0}, Lcom/weirdvoice/wizards/impl/Expert$1;-><init>()V

    sput-object v0, Lcom/weirdvoice/wizards/impl/Expert;->SUMMARIES:Ljava/util/HashMap;

    .line 251
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/weirdvoice/wizards/impl/BaseImplementation;-><init>()V

    return-void
.end method

.method private bindFields()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountDisplayName:Landroid/preference/EditTextPreference;

    .line 81
    const-string v0, "acc_id"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAccId:Landroid/preference/EditTextPreference;

    .line 82
    const-string v0, "reg_uri"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountRegUri:Landroid/preference/EditTextPreference;

    .line 83
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountRealm:Landroid/preference/EditTextPreference;

    .line 84
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountUserName:Landroid/preference/EditTextPreference;

    .line 85
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountData:Landroid/preference/EditTextPreference;

    .line 86
    const-string v0, "datatype"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountDataType:Landroid/preference/ListPreference;

    .line 87
    const-string v0, "auth_algo"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAuthAlgo:Landroid/preference/EditTextPreference;

    .line 88
    const-string v0, "initial_auth"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountInitAuth:Landroid/preference/CheckBoxPreference;

    .line 89
    const-string v0, "scheme"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountScheme:Landroid/preference/ListPreference;

    .line 90
    const-string v0, "transport"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountTransport:Landroid/preference/ListPreference;

    .line 91
    const-string v0, "default_uri_scheme"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountDefaultUriScheme:Landroid/preference/ListPreference;

    .line 92
    const-string v0, "use_srtp"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountUseSrtp:Landroid/preference/ListPreference;

    .line 93
    const-string v0, "use_zrtp"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountUseZrtp:Landroid/preference/ListPreference;

    .line 94
    const-string v0, "publish_enabled"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountPublishEnabled:Landroid/preference/CheckBoxPreference;

    .line 95
    const-string v0, "reg_timeout"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountRegTimeout:Landroid/preference/EditTextPreference;

    .line 96
    const-string v0, "reg_dbr"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountRegDelayRefresh:Landroid/preference/EditTextPreference;

    .line 97
    const-string v0, "force_contact"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountForceContact:Landroid/preference/EditTextPreference;

    .line 98
    const-string v0, "allow_contact_rewrite"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAllowContactRewrite:Landroid/preference/CheckBoxPreference;

    .line 99
    const-string v0, "allow_via_rewrite"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAllowViaRewrite:Landroid/preference/CheckBoxPreference;

    .line 100
    const-string v0, "allow_sdp_nat_rewrite"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAllowSdpNatRewrite:Landroid/preference/CheckBoxPreference;

    .line 101
    const-string v0, "contact_rewrite_method"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountContactRewriteMethod:Landroid/preference/ListPreference;

    .line 102
    const-string v0, "proxy"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountProxy:Landroid/preference/EditTextPreference;

    .line 103
    const-string v0, "vm_nbr"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountVm:Landroid/preference/EditTextPreference;

    .line 104
    const-string v0, "mwi_enabled"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->mwiEnabled:Landroid/preference/CheckBoxPreference;

    .line 105
    const-string v0, "try_clean_reg"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->tryCleanRegisters:Landroid/preference/CheckBoxPreference;

    .line 106
    const-string v0, "use_rfc5626"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->useRfc5626:Landroid/preference/CheckBoxPreference;

    .line 107
    const-string v0, "rfc5626_instance_id"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->rfc5626_instanceId:Landroid/preference/EditTextPreference;

    .line 108
    const-string v0, "rfc5626_reg_id"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->rfc5626_regId:Landroid/preference/EditTextPreference;

    .line 109
    const-string v0, "vid_in_auto_show"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->vidInAutoShow:Landroid/preference/ListPreference;

    .line 110
    const-string v0, "vid_out_auto_transmit"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->vidOutAutoTransmit:Landroid/preference/ListPreference;

    .line 111
    const-string v0, "rtp_enable_qos"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->rtpEnableQos:Landroid/preference/ListPreference;

    .line 112
    const-string v0, "rtp_qos_dscp"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->rtpQosDscp:Landroid/preference/EditTextPreference;

    .line 113
    const-string v0, "rtp_port"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->rtpPort:Landroid/preference/EditTextPreference;

    .line 114
    const-string v0, "rtp_bound_addr"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->rtpBoundAddr:Landroid/preference/EditTextPreference;

    .line 115
    const-string v0, "rtp_public_addr"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->rtpPublicAddr:Landroid/preference/EditTextPreference;

    .line 117
    const-string v0, "sip_stun_use"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->sipStunUse:Landroid/preference/ListPreference;

    .line 118
    const-string v0, "media_stun_use"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->mediaStunUse:Landroid/preference/ListPreference;

    .line 119
    const-string v0, "ice_cfg_use"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->iceCfgUse:Landroid/preference/CheckBoxPreference;

    .line 120
    const-string v0, "ice_cfg_enable"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->iceCfgEnable:Landroid/preference/CheckBoxPreference;

    .line 121
    const-string v0, "turn_cfg_use"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->turnCfgUse:Landroid/preference/CheckBoxPreference;

    .line 122
    const-string v0, "turn_cfg_enable"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->turnCfgEnable:Landroid/preference/CheckBoxPreference;

    .line 123
    const-string v0, "turn_cfg_server"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->turnCfgServer:Landroid/preference/EditTextPreference;

    .line 124
    const-string v0, "turn_cfg_user"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->turnCfgUser:Landroid/preference/EditTextPreference;

    .line 125
    const-string v0, "turn_cfg_pwd"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->turnCfgPassword:Landroid/preference/EditTextPreference;

    .line 127
    const-string v0, "ipv6_media_use"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/weirdvoice/wizards/impl/Expert;->ipv6MediaEnable:Landroid/preference/CheckBoxPreference;

    .line 128
    return-void
.end method

.method private static getIntValue(Landroid/preference/EditTextPreference;I)I
    .locals 3
    .param p0, "pref"    # Landroid/preference/EditTextPreference;
    .param p1, "defaultValue"    # I

    .prologue
    .line 283
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 287
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 284
    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "Expert"

    const-string v2, "List item is not a number"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getIntValue(Landroid/preference/ListPreference;I)I
    .locals 3
    .param p0, "pref"    # Landroid/preference/ListPreference;
    .param p1, "defaultValue"    # I

    .prologue
    .line 275
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 279
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 276
    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "Expert"

    const-string v2, "List item is not a number"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public buildAccount(Lcom/weirdvoice/api/SipProfile;)Lcom/weirdvoice/api/SipProfile;
    .locals 10
    .param p1, "account"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v8, -0x1

    .line 291
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    .line 292
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountTransport:Landroid/preference/ListPreference;

    invoke-static {v5, v6}, Lcom/weirdvoice/wizards/impl/Expert;->getIntValue(Landroid/preference/ListPreference;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 293
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountDefaultUriScheme:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->default_uri_scheme:Ljava/lang/String;

    .line 294
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAccId:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v5}, Lcom/weirdvoice/wizards/impl/Expert;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 295
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountRegUri:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v5}, Lcom/weirdvoice/wizards/impl/Expert;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 296
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountUseSrtp:Landroid/preference/ListPreference;

    invoke-static {v5, v8}, Lcom/weirdvoice/wizards/impl/Expert;->getIntValue(Landroid/preference/ListPreference;I)I

    move-result v5

    iput v5, p1, Lcom/weirdvoice/api/SipProfile;->use_srtp:I

    .line 297
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountUseZrtp:Landroid/preference/ListPreference;

    invoke-static {v5, v8}, Lcom/weirdvoice/wizards/impl/Expert;->getIntValue(Landroid/preference/ListPreference;I)I

    move-result v5

    iput v5, p1, Lcom/weirdvoice/api/SipProfile;->use_zrtp:I

    .line 299
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountUserName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v5}, Lcom/weirdvoice/wizards/impl/Expert;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 300
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountRealm:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v5}, Lcom/weirdvoice/wizards/impl/Expert;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->realm:Ljava/lang/String;

    .line 301
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountUserName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v5}, Lcom/weirdvoice/wizards/impl/Expert;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    .line 302
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountData:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v5}, Lcom/weirdvoice/wizards/impl/Expert;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    .line 303
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountScheme:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->scheme:Ljava/lang/String;

    .line 306
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountDataType:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "dataType":Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 308
    iput v7, p1, Lcom/weirdvoice/api/SipProfile;->datatype:I

    .line 325
    .end local v0    # "dataType":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountInitAuth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    iput-boolean v5, p1, Lcom/weirdvoice/api/SipProfile;->initial_auth:Z

    .line 326
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAuthAlgo:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->auth_algo:Ljava/lang/String;

    .line 328
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountPublishEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_1
    iput v5, p1, Lcom/weirdvoice/api/SipProfile;->publish_enabled:I

    .line 329
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountRegTimeout:Landroid/preference/EditTextPreference;

    invoke-static {v5, v8}, Lcom/weirdvoice/wizards/impl/Expert;->getIntValue(Landroid/preference/EditTextPreference;I)I

    move-result v3

    .line 330
    .local v3, "regTo":I
    if-lez v3, :cond_0

    .line 331
    iput v3, p1, Lcom/weirdvoice/api/SipProfile;->reg_timeout:I

    .line 333
    :cond_0
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountRegDelayRefresh:Landroid/preference/EditTextPreference;

    invoke-static {v5, v8}, Lcom/weirdvoice/wizards/impl/Expert;->getIntValue(Landroid/preference/EditTextPreference;I)I

    move-result v2

    .line 334
    .local v2, "regDelay":I
    if-lez v2, :cond_1

    .line 335
    iput v2, p1, Lcom/weirdvoice/api/SipProfile;->reg_delay_before_refresh:I

    .line 338
    :cond_1
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountContactRewriteMethod:Landroid/preference/ListPreference;

    const/4 v9, 0x2

    invoke-static {v5, v9}, Lcom/weirdvoice/wizards/impl/Expert;->getIntValue(Landroid/preference/ListPreference;I)I

    move-result v5

    iput v5, p1, Lcom/weirdvoice/api/SipProfile;->contact_rewrite_method:I

    .line 340
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAllowContactRewrite:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    iput-boolean v5, p1, Lcom/weirdvoice/api/SipProfile;->allow_contact_rewrite:Z

    .line 341
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAllowViaRewrite:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    iput-boolean v5, p1, Lcom/weirdvoice/api/SipProfile;->allow_via_rewrite:Z

    .line 342
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAllowSdpNatRewrite:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    iput-boolean v5, p1, Lcom/weirdvoice/api/SipProfile;->allow_sdp_nat_rewrite:Z

    .line 343
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountForceContact:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v5}, Lcom/weirdvoice/wizards/impl/Expert;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "forceContact":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 345
    iput-object v1, p1, Lcom/weirdvoice/api/SipProfile;->force_contact:Ljava/lang/String;

    .line 350
    :goto_2
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v5}, Lcom/weirdvoice/wizards/impl/Expert;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 351
    new-array v5, v6, [Ljava/lang/String;

    iget-object v9, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v7

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 356
    :goto_3
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountVm:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v5}, Lcom/weirdvoice/wizards/impl/Expert;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "vmNbr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 358
    iput-object v4, p1, Lcom/weirdvoice/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 362
    :goto_4
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->mwiEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    iput-boolean v5, p1, Lcom/weirdvoice/api/SipProfile;->mwi_enabled:Z

    .line 364
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->tryCleanRegisters:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v6

    :goto_5
    iput v5, p1, Lcom/weirdvoice/api/SipProfile;->try_clean_registers:I

    .line 366
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->useRfc5626:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    iput-boolean v5, p1, Lcom/weirdvoice/api/SipProfile;->use_rfc5626:Z

    .line 367
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->rfc5626_instanceId:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    .line 368
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->rfc5626_regId:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    .line 370
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->vidInAutoShow:Landroid/preference/ListPreference;

    invoke-static {v5, v8}, Lcom/weirdvoice/wizards/impl/Expert;->getIntValue(Landroid/preference/ListPreference;I)I

    move-result v5

    iput v5, p1, Lcom/weirdvoice/api/SipProfile;->vid_in_auto_show:I

    .line 371
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->vidOutAutoTransmit:Landroid/preference/ListPreference;

    invoke-static {v5, v8}, Lcom/weirdvoice/wizards/impl/Expert;->getIntValue(Landroid/preference/ListPreference;I)I

    move-result v5

    iput v5, p1, Lcom/weirdvoice/api/SipProfile;->vid_out_auto_transmit:I

    .line 373
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->rtpPort:Landroid/preference/EditTextPreference;

    invoke-static {v5, v8}, Lcom/weirdvoice/wizards/impl/Expert;->getIntValue(Landroid/preference/EditTextPreference;I)I

    move-result v5

    iput v5, p1, Lcom/weirdvoice/api/SipProfile;->rtp_port:I

    .line 374
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->rtpBoundAddr:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    .line 375
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->rtpPublicAddr:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    .line 376
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->rtpEnableQos:Landroid/preference/ListPreference;

    invoke-static {v5, v8}, Lcom/weirdvoice/wizards/impl/Expert;->getIntValue(Landroid/preference/ListPreference;I)I

    move-result v5

    iput v5, p1, Lcom/weirdvoice/api/SipProfile;->rtp_enable_qos:I

    .line 377
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->rtpQosDscp:Landroid/preference/EditTextPreference;

    invoke-static {v5, v8}, Lcom/weirdvoice/wizards/impl/Expert;->getIntValue(Landroid/preference/EditTextPreference;I)I

    move-result v5

    iput v5, p1, Lcom/weirdvoice/api/SipProfile;->rtp_qos_dscp:I

    .line 379
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->sipStunUse:Landroid/preference/ListPreference;

    invoke-static {v5, v8}, Lcom/weirdvoice/wizards/impl/Expert;->getIntValue(Landroid/preference/ListPreference;I)I

    move-result v5

    iput v5, p1, Lcom/weirdvoice/api/SipProfile;->sip_stun_use:I

    .line 380
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->mediaStunUse:Landroid/preference/ListPreference;

    invoke-static {v5, v8}, Lcom/weirdvoice/wizards/impl/Expert;->getIntValue(Landroid/preference/ListPreference;I)I

    move-result v5

    iput v5, p1, Lcom/weirdvoice/api/SipProfile;->media_stun_use:I

    .line 381
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->iceCfgUse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v6

    :goto_6
    iput v5, p1, Lcom/weirdvoice/api/SipProfile;->ice_cfg_use:I

    .line 382
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->iceCfgEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v6

    :goto_7
    iput v5, p1, Lcom/weirdvoice/api/SipProfile;->ice_cfg_enable:I

    .line 383
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->turnCfgUse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v8, v6

    :cond_2
    iput v8, p1, Lcom/weirdvoice/api/SipProfile;->turn_cfg_use:I

    .line 384
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->turnCfgEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_d

    move v5, v6

    :goto_8
    iput v5, p1, Lcom/weirdvoice/api/SipProfile;->turn_cfg_enable:I

    .line 385
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->turnCfgServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    .line 386
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->turnCfgUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    .line 387
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->turnCfgPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    .line 389
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->ipv6MediaEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_e

    :goto_9
    iput v6, p1, Lcom/weirdvoice/api/SipProfile;->ipv6_media_use:I

    .line 391
    return-object p1

    .line 309
    .end local v1    # "forceContact":Ljava/lang/String;
    .end local v2    # "regDelay":I
    .end local v3    # "regTo":I
    .end local v4    # "vmNbr":Ljava/lang/String;
    .restart local v0    # "dataType":Ljava/lang/String;
    :cond_3
    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 310
    iput v6, p1, Lcom/weirdvoice/api/SipProfile;->datatype:I

    goto/16 :goto_0

    .line 316
    :cond_4
    iput v7, p1, Lcom/weirdvoice/api/SipProfile;->datatype:I

    goto/16 :goto_0

    .line 319
    .end local v0    # "dataType":Ljava/lang/String;
    :cond_5
    const-string v5, ""

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->realm:Ljava/lang/String;

    .line 320
    const-string v5, ""

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    .line 321
    const-string v5, ""

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    .line 322
    const-string v5, "Digest"

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->scheme:Ljava/lang/String;

    .line 323
    iput v7, p1, Lcom/weirdvoice/api/SipProfile;->datatype:I

    goto/16 :goto_0

    :cond_6
    move v5, v7

    .line 328
    goto/16 :goto_1

    .line 347
    .restart local v1    # "forceContact":Ljava/lang/String;
    .restart local v2    # "regDelay":I
    .restart local v3    # "regTo":I
    :cond_7
    const-string v5, ""

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->force_contact:Ljava/lang/String;

    goto/16 :goto_2

    .line 353
    :cond_8
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    goto/16 :goto_3

    .line 360
    .restart local v4    # "vmNbr":Ljava/lang/String;
    :cond_9
    const-string v5, ""

    iput-object v5, p1, Lcom/weirdvoice/api/SipProfile;->vm_nbr:Ljava/lang/String;

    goto/16 :goto_4

    :cond_a
    move v5, v7

    .line 364
    goto/16 :goto_5

    :cond_b
    move v5, v8

    .line 381
    goto/16 :goto_6

    :cond_c
    move v5, v7

    .line 382
    goto :goto_7

    :cond_d
    move v5, v7

    .line 384
    goto :goto_8

    :cond_e
    move v6, v7

    .line 389
    goto :goto_9
.end method

.method public canSave()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    const/4 v0, 0x1

    .line 265
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v4}, Lcom/weirdvoice/wizards/impl/Expert;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/weirdvoice/wizards/impl/Expert;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 266
    iget-object v4, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAccId:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAccId:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Lcom/weirdvoice/wizards/impl/Expert;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAccId:Landroid/preference/EditTextPreference;

    const-string v5, "[^<]*<sip(s)?:[^@]*@[^@]*>"

    invoke-virtual {p0, v1, v5}, Lcom/weirdvoice/wizards/impl/Expert;->isMatching(Landroid/preference/EditTextPreference;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v4, v1}, Lcom/weirdvoice/wizards/impl/Expert;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 267
    iget-object v4, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountRegUri:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountRegUri:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Lcom/weirdvoice/wizards/impl/Expert;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountRegUri:Landroid/preference/EditTextPreference;

    const-string v5, "sip(s)?:.*"

    invoke-virtual {p0, v1, v5}, Lcom/weirdvoice/wizards/impl/Expert;->isMatching(Landroid/preference/EditTextPreference;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {p0, v4, v1}, Lcom/weirdvoice/wizards/impl/Expert;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 268
    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountProxy:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v4}, Lcom/weirdvoice/wizards/impl/Expert;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountProxy:Landroid/preference/EditTextPreference;

    const-string v5, "sip(s)?:.*"

    invoke-virtual {p0, v4, v5}, Lcom/weirdvoice/wizards/impl/Expert;->isMatching(Landroid/preference/EditTextPreference;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    invoke-virtual {p0, v1, v3}, Lcom/weirdvoice/wizards/impl/Expert;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 270
    return v0

    :cond_0
    move v1, v3

    .line 266
    goto :goto_0

    :cond_1
    move v1, v2

    .line 267
    goto :goto_1

    :cond_2
    move v3, v2

    .line 268
    goto :goto_2
.end method

.method public fillLayout(Lcom/weirdvoice/api/SipProfile;)V
    .locals 8
    .param p1, "account"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 131
    invoke-direct {p0}, Lcom/weirdvoice/wizards/impl/Expert;->bindFields()V

    .line 134
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAccId:Landroid/preference/EditTextPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountRegUri:Landroid/preference/EditTextPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->reg_uri:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountRealm:Landroid/preference/EditTextPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->realm:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountUserName:Landroid/preference/EditTextPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountData:Landroid/preference/EditTextPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 142
    iget-object v1, p1, Lcom/weirdvoice/api/SipProfile;->scheme:Ljava/lang/String;

    .line 143
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountScheme:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 150
    :goto_0
    iget v0, p1, Lcom/weirdvoice/api/SipProfile;->datatype:I

    .line 151
    .local v0, "ctype":I
    if-nez v0, :cond_2

    .line 152
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountDataType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 164
    :goto_1
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountInitAuth:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p1, Lcom/weirdvoice/api/SipProfile;->initial_auth:Z

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAuthAlgo:Landroid/preference/EditTextPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->auth_algo:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountTransport:Landroid/preference/ListPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->transport:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 168
    iget-object v2, p1, Lcom/weirdvoice/api/SipProfile;->default_uri_scheme:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountDefaultUriScheme:Landroid/preference/ListPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->default_uri_scheme:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 171
    :cond_0
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountPublishEnabled:Landroid/preference/CheckBoxPreference;

    iget v2, p1, Lcom/weirdvoice/api/SipProfile;->publish_enabled:I

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 172
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountRegTimeout:Landroid/preference/EditTextPreference;

    iget v5, p1, Lcom/weirdvoice/api/SipProfile;->reg_timeout:I

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountRegDelayRefresh:Landroid/preference/EditTextPreference;

    iget v5, p1, Lcom/weirdvoice/api/SipProfile;->reg_delay_before_refresh:I

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountForceContact:Landroid/preference/EditTextPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->force_contact:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAllowContactRewrite:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p1, Lcom/weirdvoice/api/SipProfile;->allow_contact_rewrite:Z

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 177
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAllowViaRewrite:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p1, Lcom/weirdvoice/api/SipProfile;->allow_via_rewrite:Z

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 178
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountAllowSdpNatRewrite:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p1, Lcom/weirdvoice/api/SipProfile;->allow_sdp_nat_rewrite:Z

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 179
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountContactRewriteMethod:Landroid/preference/ListPreference;

    iget v5, p1, Lcom/weirdvoice/api/SipProfile;->contact_rewrite_method:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 180
    iget-object v2, p1, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 181
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountProxy:Landroid/preference/EditTextPreference;

    const-string v5, "|"

    iget-object v6, p1, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 185
    :goto_3
    const-string v2, "Expert"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "use srtp : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Lcom/weirdvoice/api/SipProfile;->use_srtp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountUseSrtp:Landroid/preference/ListPreference;

    iget v5, p1, Lcom/weirdvoice/api/SipProfile;->use_srtp:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 187
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountUseZrtp:Landroid/preference/ListPreference;

    iget v5, p1, Lcom/weirdvoice/api/SipProfile;->use_zrtp:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 189
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->useRfc5626:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p1, Lcom/weirdvoice/api/SipProfile;->use_rfc5626:Z

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 190
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->rfc5626_instanceId:Landroid/preference/EditTextPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->rfc5626_regId:Landroid/preference/EditTextPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->rtpEnableQos:Landroid/preference/ListPreference;

    iget v5, p1, Lcom/weirdvoice/api/SipProfile;->rtp_enable_qos:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->rtpQosDscp:Landroid/preference/EditTextPreference;

    iget v5, p1, Lcom/weirdvoice/api/SipProfile;->rtp_qos_dscp:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->rtpPort:Landroid/preference/EditTextPreference;

    iget v5, p1, Lcom/weirdvoice/api/SipProfile;->rtp_port:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->rtpBoundAddr:Landroid/preference/EditTextPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->rtpPublicAddr:Landroid/preference/EditTextPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->vidInAutoShow:Landroid/preference/ListPreference;

    iget v5, p1, Lcom/weirdvoice/api/SipProfile;->vid_in_auto_show:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->vidOutAutoTransmit:Landroid/preference/ListPreference;

    iget v5, p1, Lcom/weirdvoice/api/SipProfile;->vid_out_auto_transmit:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountVm:Landroid/preference/EditTextPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->vm_nbr:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->mwiEnabled:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p1, Lcom/weirdvoice/api/SipProfile;->mwi_enabled:Z

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->tryCleanRegisters:Landroid/preference/CheckBoxPreference;

    iget v2, p1, Lcom/weirdvoice/api/SipProfile;->try_clean_registers:I

    if-eqz v2, :cond_6

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 206
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->sipStunUse:Landroid/preference/ListPreference;

    iget v5, p1, Lcom/weirdvoice/api/SipProfile;->sip_stun_use:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->mediaStunUse:Landroid/preference/ListPreference;

    iget v5, p1, Lcom/weirdvoice/api/SipProfile;->media_stun_use:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 208
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->iceCfgUse:Landroid/preference/CheckBoxPreference;

    iget v2, p1, Lcom/weirdvoice/api/SipProfile;->ice_cfg_use:I

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 209
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->iceCfgEnable:Landroid/preference/CheckBoxPreference;

    iget v2, p1, Lcom/weirdvoice/api/SipProfile;->ice_cfg_enable:I

    if-ne v2, v3, :cond_8

    move v2, v3

    :goto_6
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 210
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->turnCfgUse:Landroid/preference/CheckBoxPreference;

    iget v2, p1, Lcom/weirdvoice/api/SipProfile;->turn_cfg_use:I

    if-ne v2, v3, :cond_9

    move v2, v3

    :goto_7
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 211
    iget-object v5, p0, Lcom/weirdvoice/wizards/impl/Expert;->turnCfgEnable:Landroid/preference/CheckBoxPreference;

    iget v2, p1, Lcom/weirdvoice/api/SipProfile;->turn_cfg_enable:I

    if-ne v2, v3, :cond_a

    move v2, v3

    :goto_8
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 212
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->turnCfgServer:Landroid/preference/EditTextPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->turnCfgUser:Landroid/preference/EditTextPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->turnCfgPassword:Landroid/preference/EditTextPreference;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->ipv6MediaEnable:Landroid/preference/CheckBoxPreference;

    iget v5, p1, Lcom/weirdvoice/api/SipProfile;->ipv6_media_use:I

    if-ne v5, v3, :cond_b

    :goto_9
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 217
    return-void

    .line 146
    .end local v0    # "ctype":I
    :cond_1
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountScheme:Landroid/preference/ListPreference;

    const-string v5, "Digest"

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    .restart local v0    # "ctype":I
    :cond_2
    if-ne v0, v3, :cond_3

    .line 154
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountDataType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_1

    .line 161
    :cond_3
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountDataType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_1

    :cond_4
    move v2, v4

    .line 171
    goto/16 :goto_2

    .line 183
    :cond_5
    iget-object v2, p0, Lcom/weirdvoice/wizards/impl/Expert;->accountProxy:Landroid/preference/EditTextPreference;

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    move v2, v4

    .line 204
    goto/16 :goto_4

    :cond_7
    move v2, v4

    .line 208
    goto :goto_5

    :cond_8
    move v2, v4

    .line 209
    goto :goto_6

    :cond_9
    move v2, v4

    .line 210
    goto :goto_7

    :cond_a
    move v2, v4

    .line 211
    goto :goto_8

    :cond_b
    move v3, v4

    .line 216
    goto :goto_9
.end method

.method public getBasePreferenceResource()I
    .locals 1

    .prologue
    .line 397
    const v0, 0x7f050011

    return v0
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 255
    sget-object v1, Lcom/weirdvoice/wizards/impl/Expert;->SUMMARIES:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 256
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 257
    iget-object v1, p0, Lcom/weirdvoice/wizards/impl/Expert;->parent:Lcom/weirdvoice/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/weirdvoice/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public updateDescriptions()V
    .locals 1

    .prologue
    .line 221
    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->setStringFieldSummary(Ljava/lang/String;)V

    .line 222
    const-string v0, "acc_id"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->setStringFieldSummary(Ljava/lang/String;)V

    .line 223
    const-string v0, "reg_uri"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->setStringFieldSummary(Ljava/lang/String;)V

    .line 224
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->setStringFieldSummary(Ljava/lang/String;)V

    .line 225
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->setStringFieldSummary(Ljava/lang/String;)V

    .line 226
    const-string v0, "proxy"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->setStringFieldSummary(Ljava/lang/String;)V

    .line 227
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->setPasswordFieldSummary(Ljava/lang/String;)V

    .line 228
    const-string v0, "datatype"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->setListFieldSummary(Ljava/lang/String;)V

    .line 229
    const-string v0, "reg_dbr"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->setStringFieldSummary(Ljava/lang/String;)V

    .line 230
    const-string v0, "use_srtp"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->setListFieldSummary(Ljava/lang/String;)V

    .line 231
    const-string v0, "default_uri_scheme"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/impl/Expert;->setListFieldSummary(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.class public Lcom/weirdvoice/api/SipProfile;
.super Ljava/lang/Object;
.source "SipProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCOUNTS_STATUS_TABLE_NAME:Ljava/lang/String; = "accounts_status"

.field public static final ACCOUNTS_TABLE_NAME:Ljava/lang/String; = "accounts"

.field public static final ACCOUNT_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.csipsimple.account"

.field public static final ACCOUNT_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.csipsimple.account"

.field public static final ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

.field public static final ACCOUNT_STATUS_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.csipsimple.account_status"

.field public static final ACCOUNT_STATUS_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.csipsimple.account_status"

.field public static final ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

.field public static final ACCOUNT_STATUS_URI:Landroid/net/Uri;

.field public static final ACCOUNT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/weirdvoice/api/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final CRED_CRED_DATA_EXT_AKA:I = 0x2

.field public static final CRED_DATA_DIGEST:I = 0x1

.field public static final CRED_DATA_PLAIN_PASSWD:I = 0x0

.field public static final CRED_SCHEME_DIGEST:Ljava/lang/String; = "Digest"

.field public static final CRED_SCHEME_PGP:Ljava/lang/String; = "PGP"

.field public static final FIELD_ACC_ID:Ljava/lang/String; = "acc_id"

.field public static final FIELD_ACTIVE:Ljava/lang/String; = "active"

.field public static final FIELD_ALLOW_CONTACT_REWRITE:Ljava/lang/String; = "allow_contact_rewrite"

.field public static final FIELD_ALLOW_SDP_NAT_REWRITE:Ljava/lang/String; = "allow_sdp_nat_rewrite"

.field public static final FIELD_ALLOW_VIA_REWRITE:Ljava/lang/String; = "allow_via_rewrite"

.field public static final FIELD_ANDROID_GROUP:Ljava/lang/String; = "android_group"

.field public static final FIELD_AUTH_ALGO:Ljava/lang/String; = "auth_algo"

.field public static final FIELD_AUTH_INITIAL_AUTH:Ljava/lang/String; = "initial_auth"

.field public static final FIELD_CONTACT_PARAMS:Ljava/lang/String; = "contact_params"

.field public static final FIELD_CONTACT_REWRITE_METHOD:Ljava/lang/String; = "contact_rewrite_method"

.field public static final FIELD_CONTACT_URI_PARAMS:Ljava/lang/String; = "contact_uri_params"

.field public static final FIELD_DATA:Ljava/lang/String; = "data"

.field public static final FIELD_DATATYPE:Ljava/lang/String; = "datatype"

.field public static final FIELD_DEFAULT_URI_SCHEME:Ljava/lang/String; = "default_uri_scheme"

.field public static final FIELD_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final FIELD_FORCE_CONTACT:Ljava/lang/String; = "force_contact"

.field public static final FIELD_ICE_CFG_ENABLE:Ljava/lang/String; = "ice_cfg_enable"

.field public static final FIELD_ICE_CFG_USE:Ljava/lang/String; = "ice_cfg_use"

.field public static final FIELD_ID:Ljava/lang/String; = "id"

.field public static final FIELD_IPV6_MEDIA_USE:Ljava/lang/String; = "ipv6_media_use"

.field public static final FIELD_KA_INTERVAL:Ljava/lang/String; = "ka_interval"

.field public static final FIELD_MEDIA_STUN_USE:Ljava/lang/String; = "media_stun_use"

.field public static final FIELD_MWI_ENABLED:Ljava/lang/String; = "mwi_enabled"

.field public static final FIELD_PIDF_TUPLE_ID:Ljava/lang/String; = "pidf_tuple_id"

.field public static final FIELD_PRIORITY:Ljava/lang/String; = "priority"

.field public static final FIELD_PROXY:Ljava/lang/String; = "proxy"

.field public static final FIELD_PUBLISH_ENABLED:Ljava/lang/String; = "publish_enabled"

.field public static final FIELD_REALM:Ljava/lang/String; = "realm"

.field public static final FIELD_REG_DELAY_BEFORE_REFRESH:Ljava/lang/String; = "reg_dbr"

.field public static final FIELD_REG_TIMEOUT:Ljava/lang/String; = "reg_timeout"

.field public static final FIELD_REG_URI:Ljava/lang/String; = "reg_uri"

.field public static final FIELD_REG_USE_PROXY:Ljava/lang/String; = "reg_use_proxy"

.field public static final FIELD_RFC5626_INSTANCE_ID:Ljava/lang/String; = "rfc5626_instance_id"

.field public static final FIELD_RFC5626_REG_ID:Ljava/lang/String; = "rfc5626_reg_id"

.field public static final FIELD_RTP_BOUND_ADDR:Ljava/lang/String; = "rtp_bound_addr"

.field public static final FIELD_RTP_ENABLE_QOS:Ljava/lang/String; = "rtp_enable_qos"

.field public static final FIELD_RTP_PORT:Ljava/lang/String; = "rtp_port"

.field public static final FIELD_RTP_PUBLIC_ADDR:Ljava/lang/String; = "rtp_public_addr"

.field public static final FIELD_RTP_QOS_DSCP:Ljava/lang/String; = "rtp_qos_dscp"

.field public static final FIELD_SCHEME:Ljava/lang/String; = "scheme"

.field public static final FIELD_SIP_STACK:Ljava/lang/String; = "sip_stack"

.field public static final FIELD_SIP_STUN_USE:Ljava/lang/String; = "sip_stun_use"

.field public static final FIELD_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final FIELD_TRY_CLEAN_REGISTERS:Ljava/lang/String; = "try_clean_reg"

.field public static final FIELD_TURN_CFG_ENABLE:Ljava/lang/String; = "turn_cfg_enable"

.field public static final FIELD_TURN_CFG_PASSWORD:Ljava/lang/String; = "turn_cfg_pwd"

.field public static final FIELD_TURN_CFG_SERVER:Ljava/lang/String; = "turn_cfg_server"

.field public static final FIELD_TURN_CFG_USE:Ljava/lang/String; = "turn_cfg_use"

.field public static final FIELD_TURN_CFG_USER:Ljava/lang/String; = "turn_cfg_user"

.field public static final FIELD_USERNAME:Ljava/lang/String; = "username"

.field public static final FIELD_USE_RFC5626:Ljava/lang/String; = "use_rfc5626"

.field public static final FIELD_USE_SRTP:Ljava/lang/String; = "use_srtp"

.field public static final FIELD_USE_ZRTP:Ljava/lang/String; = "use_zrtp"

.field public static final FIELD_VID_IN_AUTO_SHOW:Ljava/lang/String; = "vid_in_auto_show"

.field public static final FIELD_VID_OUT_AUTO_TRANSMIT:Ljava/lang/String; = "vid_out_auto_transmit"

.field public static final FIELD_VOICE_MAIL_NBR:Ljava/lang/String; = "vm_nbr"

.field public static final FIELD_WIZARD:Ljava/lang/String; = "wizard"

.field public static final FIELD_WIZARD_DATA:Ljava/lang/String; = "wizard_data"

.field public static final GOOGLE_STACK:I = 0x1

.field public static final INVALID_ID:J = -0x1L

.field public static final LISTABLE_PROJECTION:[Ljava/lang/String;

.field public static final PJSIP_STACK:I = 0x0

.field public static final PROXIES_SEPARATOR:Ljava/lang/String; = "|"

.field private static final THIS_FILE:Ljava/lang/String; = "SipProfile"

.field public static final TRANSPORT_AUTO:I = 0x0

.field public static final TRANSPORT_TCP:I = 0x2

.field public static final TRANSPORT_TLS:I = 0x3

.field public static final TRANSPORT_UDP:I = 0x1


# instance fields
.field public acc_id:Ljava/lang/String;

.field public active:Z

.field public allow_contact_rewrite:Z

.field public allow_sdp_nat_rewrite:Z

.field public allow_via_rewrite:Z

.field public android_group:Ljava/lang/String;

.field public auth_algo:Ljava/lang/String;

.field public contact_rewrite_method:I

.field public data:Ljava/lang/String;

.field public datatype:I

.field public default_uri_scheme:Ljava/lang/String;

.field public display_name:Ljava/lang/String;

.field public force_contact:Ljava/lang/String;

.field public ice_cfg_enable:I

.field public ice_cfg_use:I

.field public icon:Landroid/graphics/Bitmap;

.field public id:J

.field public initial_auth:Z

.field public ipv6_media_use:I

.field public ka_interval:I

.field public media_stun_use:I

.field public mwi_enabled:Z

.field public pidf_tuple_id:Ljava/lang/String;

.field public primaryKey:I

.field public priority:I

.field public proxies:[Ljava/lang/String;

.field public publish_enabled:I

.field public realm:Ljava/lang/String;

.field public reg_delay_before_refresh:I

.field public reg_timeout:I

.field public reg_uri:Ljava/lang/String;

.field public reg_use_proxy:I

.field public rfc5626_instance_id:Ljava/lang/String;

.field public rfc5626_reg_id:Ljava/lang/String;

.field public rtp_bound_addr:Ljava/lang/String;

.field public rtp_enable_qos:I

.field public rtp_port:I

.field public rtp_public_addr:Ljava/lang/String;

.field public rtp_qos_dscp:I

.field public scheme:Ljava/lang/String;

.field public sip_stack:I

.field public sip_stun_use:I

.field public transport:Ljava/lang/Integer;

.field public try_clean_registers:I

.field public turn_cfg_enable:I

.field public turn_cfg_password:Ljava/lang/String;

.field public turn_cfg_server:Ljava/lang/String;

.field public turn_cfg_use:I

.field public turn_cfg_user:Ljava/lang/String;

.field public use_rfc5626:Z

.field public use_srtp:I

.field public use_zrtp:I

.field public username:Ljava/lang/String;

.field public vid_in_auto_show:I

.field public vid_out_auto_transmit:I

.field public vm_nbr:Ljava/lang/String;

.field public wizard:Ljava/lang/String;

.field public wizard_data:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 161
    const-string v0, "content://com.weirdvoice.db/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    .line 169
    const-string v0, "content://com.weirdvoice.db/accounts/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    .line 191
    const-string v0, "content://com.weirdvoice.db/accounts_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    .line 199
    const-string v0, "content://com.weirdvoice.db/accounts_status/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

    .line 769
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 770
    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 771
    const-string v2, "acc_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 772
    const-string v2, "active"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 773
    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 774
    const-string v2, "wizard"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 775
    const-string v2, "priority"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 776
    const-string v2, "reg_uri"

    aput-object v2, v0, v1

    .line 769
    sput-object v0, Lcom/weirdvoice/api/SipProfile;->LISTABLE_PROJECTION:[Ljava/lang/String;

    .line 1106
    new-instance v0, Lcom/weirdvoice/api/SipProfile$1;

    invoke-direct {v0}, Lcom/weirdvoice/api/SipProfile$1;-><init>()V

    sput-object v0, Lcom/weirdvoice/api/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1114
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->primaryKey:I

    .line 787
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 791
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    .line 795
    const-string v0, "EXPERT"

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->wizard:Ljava/lang/String;

    .line 799
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 803
    const-string v0, "sip"

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->default_uri_scheme:Ljava/lang/String;

    .line 807
    iput-boolean v5, p0, Lcom/weirdvoice/api/SipProfile;->active:Z

    .line 811
    const/16 v0, 0x64

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->priority:I

    .line 815
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 820
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 824
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->publish_enabled:I

    .line 828
    const/16 v0, 0x384

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->reg_timeout:I

    .line 832
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->ka_interval:I

    .line 836
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    .line 840
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->force_contact:Ljava/lang/String;

    .line 844
    iput-boolean v5, p0, Lcom/weirdvoice/api/SipProfile;->allow_contact_rewrite:Z

    .line 848
    const/4 v0, 0x2

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->contact_rewrite_method:I

    .line 852
    iput-boolean v3, p0, Lcom/weirdvoice/api/SipProfile;->allow_via_rewrite:Z

    .line 856
    iput-boolean v3, p0, Lcom/weirdvoice/api/SipProfile;->allow_sdp_nat_rewrite:Z

    .line 862
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 866
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->realm:Ljava/lang/String;

    .line 870
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    .line 874
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->scheme:Ljava/lang/String;

    .line 878
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->datatype:I

    .line 882
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    .line 886
    iput-boolean v3, p0, Lcom/weirdvoice/api/SipProfile;->initial_auth:Z

    .line 890
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->auth_algo:Ljava/lang/String;

    .line 894
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->use_srtp:I

    .line 898
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->use_zrtp:I

    .line 902
    const/4 v0, 0x3

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->reg_use_proxy:I

    .line 906
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->sip_stack:I

    .line 910
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 914
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->reg_delay_before_refresh:I

    .line 918
    iput v5, p0, Lcom/weirdvoice/api/SipProfile;->try_clean_registers:I

    .line 924
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    .line 928
    iput-boolean v5, p0, Lcom/weirdvoice/api/SipProfile;->use_rfc5626:Z

    .line 932
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    .line 936
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    .line 940
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->vid_in_auto_show:I

    .line 944
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->vid_out_auto_transmit:I

    .line 948
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->rtp_port:I

    .line 952
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    .line 956
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    .line 960
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->rtp_enable_qos:I

    .line 964
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->rtp_qos_dscp:I

    .line 968
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->android_group:Ljava/lang/String;

    .line 972
    iput-boolean v5, p0, Lcom/weirdvoice/api/SipProfile;->mwi_enabled:Z

    .line 976
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->sip_stun_use:I

    .line 980
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->media_stun_use:I

    .line 984
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_use:I

    .line 988
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_enable:I

    .line 992
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_use:I

    .line 996
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_enable:I

    .line 1000
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    .line 1004
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    .line 1008
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    .line 1012
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->ipv6_media_use:I

    .line 1016
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->wizard_data:Ljava/lang/String;

    .line 1019
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    .line 1020
    const-string v0, "EXPERT"

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->wizard:Ljava/lang/String;

    .line 1021
    iput-boolean v5, p0, Lcom/weirdvoice/api/SipProfile;->active:Z

    .line 1022
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->primaryKey:I

    .line 787
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 791
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    .line 795
    const-string v0, "EXPERT"

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->wizard:Ljava/lang/String;

    .line 799
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 803
    const-string v0, "sip"

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->default_uri_scheme:Ljava/lang/String;

    .line 807
    iput-boolean v5, p0, Lcom/weirdvoice/api/SipProfile;->active:Z

    .line 811
    const/16 v0, 0x64

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->priority:I

    .line 815
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 820
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 824
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->publish_enabled:I

    .line 828
    const/16 v0, 0x384

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->reg_timeout:I

    .line 832
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->ka_interval:I

    .line 836
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    .line 840
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->force_contact:Ljava/lang/String;

    .line 844
    iput-boolean v5, p0, Lcom/weirdvoice/api/SipProfile;->allow_contact_rewrite:Z

    .line 848
    const/4 v0, 0x2

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->contact_rewrite_method:I

    .line 852
    iput-boolean v3, p0, Lcom/weirdvoice/api/SipProfile;->allow_via_rewrite:Z

    .line 856
    iput-boolean v3, p0, Lcom/weirdvoice/api/SipProfile;->allow_sdp_nat_rewrite:Z

    .line 862
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 866
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->realm:Ljava/lang/String;

    .line 870
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    .line 874
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->scheme:Ljava/lang/String;

    .line 878
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->datatype:I

    .line 882
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    .line 886
    iput-boolean v3, p0, Lcom/weirdvoice/api/SipProfile;->initial_auth:Z

    .line 890
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->auth_algo:Ljava/lang/String;

    .line 894
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->use_srtp:I

    .line 898
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->use_zrtp:I

    .line 902
    const/4 v0, 0x3

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->reg_use_proxy:I

    .line 906
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->sip_stack:I

    .line 910
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 914
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->reg_delay_before_refresh:I

    .line 918
    iput v5, p0, Lcom/weirdvoice/api/SipProfile;->try_clean_registers:I

    .line 924
    iput-object v4, p0, Lcom/weirdvoice/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    .line 928
    iput-boolean v5, p0, Lcom/weirdvoice/api/SipProfile;->use_rfc5626:Z

    .line 932
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    .line 936
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    .line 940
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->vid_in_auto_show:I

    .line 944
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->vid_out_auto_transmit:I

    .line 948
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->rtp_port:I

    .line 952
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    .line 956
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    .line 960
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->rtp_enable_qos:I

    .line 964
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->rtp_qos_dscp:I

    .line 968
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->android_group:Ljava/lang/String;

    .line 972
    iput-boolean v5, p0, Lcom/weirdvoice/api/SipProfile;->mwi_enabled:Z

    .line 976
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->sip_stun_use:I

    .line 980
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->media_stun_use:I

    .line 984
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_use:I

    .line 988
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_enable:I

    .line 992
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_use:I

    .line 996
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_enable:I

    .line 1000
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    .line 1004
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    .line 1008
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    .line 1012
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->ipv6_media_use:I

    .line 1016
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->wizard_data:Ljava/lang/String;

    .line 1032
    invoke-direct {p0, p1}, Lcom/weirdvoice/api/SipProfile;->createFromDb(Landroid/database/Cursor;)V

    .line 1033
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->primaryKey:I

    .line 787
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 791
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    .line 795
    const-string v0, "EXPERT"

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->wizard:Ljava/lang/String;

    .line 799
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 803
    const-string v0, "sip"

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->default_uri_scheme:Ljava/lang/String;

    .line 807
    iput-boolean v1, p0, Lcom/weirdvoice/api/SipProfile;->active:Z

    .line 811
    const/16 v0, 0x64

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->priority:I

    .line 815
    iput-object v6, p0, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 820
    iput-object v6, p0, Lcom/weirdvoice/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 824
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->publish_enabled:I

    .line 828
    const/16 v0, 0x384

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->reg_timeout:I

    .line 832
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->ka_interval:I

    .line 836
    iput-object v6, p0, Lcom/weirdvoice/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    .line 840
    iput-object v6, p0, Lcom/weirdvoice/api/SipProfile;->force_contact:Ljava/lang/String;

    .line 844
    iput-boolean v1, p0, Lcom/weirdvoice/api/SipProfile;->allow_contact_rewrite:Z

    .line 848
    const/4 v0, 0x2

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->contact_rewrite_method:I

    .line 852
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipProfile;->allow_via_rewrite:Z

    .line 856
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipProfile;->allow_sdp_nat_rewrite:Z

    .line 862
    iput-object v6, p0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 866
    iput-object v6, p0, Lcom/weirdvoice/api/SipProfile;->realm:Ljava/lang/String;

    .line 870
    iput-object v6, p0, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    .line 874
    iput-object v6, p0, Lcom/weirdvoice/api/SipProfile;->scheme:Ljava/lang/String;

    .line 878
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->datatype:I

    .line 882
    iput-object v6, p0, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    .line 886
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipProfile;->initial_auth:Z

    .line 890
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->auth_algo:Ljava/lang/String;

    .line 894
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->use_srtp:I

    .line 898
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->use_zrtp:I

    .line 902
    const/4 v0, 0x3

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->reg_use_proxy:I

    .line 906
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->sip_stack:I

    .line 910
    iput-object v6, p0, Lcom/weirdvoice/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 914
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->reg_delay_before_refresh:I

    .line 918
    iput v1, p0, Lcom/weirdvoice/api/SipProfile;->try_clean_registers:I

    .line 924
    iput-object v6, p0, Lcom/weirdvoice/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    .line 928
    iput-boolean v1, p0, Lcom/weirdvoice/api/SipProfile;->use_rfc5626:Z

    .line 932
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    .line 936
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    .line 940
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->vid_in_auto_show:I

    .line 944
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->vid_out_auto_transmit:I

    .line 948
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->rtp_port:I

    .line 952
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    .line 956
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    .line 960
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->rtp_enable_qos:I

    .line 964
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->rtp_qos_dscp:I

    .line 968
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->android_group:Ljava/lang/String;

    .line 972
    iput-boolean v1, p0, Lcom/weirdvoice/api/SipProfile;->mwi_enabled:Z

    .line 976
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->sip_stun_use:I

    .line 980
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->media_stun_use:I

    .line 984
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_use:I

    .line 988
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_enable:I

    .line 992
    iput v3, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_use:I

    .line 996
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_enable:I

    .line 1000
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    .line 1004
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    .line 1008
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    .line 1012
    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->ipv6_media_use:I

    .line 1016
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->wizard_data:Ljava/lang/String;

    .line 1042
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->primaryKey:I

    .line 1043
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 1044
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    .line 1045
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->wizard:Ljava/lang/String;

    .line 1046
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 1047
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/weirdvoice/api/SipProfile;->active:Z

    .line 1048
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->priority:I

    .line 1049
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 1050
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 1051
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->publish_enabled:I

    .line 1052
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->reg_timeout:I

    .line 1053
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->ka_interval:I

    .line 1054
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    .line 1055
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->force_contact:Ljava/lang/String;

    .line 1056
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    const-string v3, "|"

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1056
    invoke-static {v0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 1058
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->realm:Ljava/lang/String;

    .line 1059
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    .line 1060
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->datatype:I

    .line 1061
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    .line 1062
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->use_srtp:I

    .line 1063
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/weirdvoice/api/SipProfile;->allow_contact_rewrite:Z

    .line 1064
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->contact_rewrite_method:I

    .line 1065
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->sip_stack:I

    .line 1066
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->reg_use_proxy:I

    .line 1067
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->use_zrtp:I

    .line 1068
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 1069
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->reg_delay_before_refresh:I

    .line 1070
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    .line 1071
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->try_clean_registers:I

    .line 1072
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/weirdvoice/api/SipProfile;->use_rfc5626:Z

    .line 1073
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    .line 1074
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    .line 1075
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->vid_in_auto_show:I

    .line 1076
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->vid_out_auto_transmit:I

    .line 1077
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->rtp_port:I

    .line 1078
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    .line 1079
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    .line 1080
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->rtp_enable_qos:I

    .line 1081
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->rtp_qos_dscp:I

    .line 1082
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->android_group:Ljava/lang/String;

    .line 1083
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/weirdvoice/api/SipProfile;->mwi_enabled:Z

    .line 1084
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/weirdvoice/api/SipProfile;->allow_via_rewrite:Z

    .line 1085
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->sip_stun_use:I

    .line 1086
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->media_stun_use:I

    .line 1087
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_use:I

    .line 1088
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_enable:I

    .line 1089
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_use:I

    .line 1090
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_enable:I

    .line 1091
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    .line 1092
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    .line 1093
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    .line 1094
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipProfile;->ipv6_media_use:I

    .line 1095
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/weirdvoice/api/SipProfile;->initial_auth:Z

    .line 1096
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->auth_algo:Ljava/lang/String;

    .line 1097
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->wizard_data:Ljava/lang/String;

    .line 1098
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->default_uri_scheme:Ljava/lang/String;

    .line 1099
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    :goto_6
    iput-boolean v1, p0, Lcom/weirdvoice/api/SipProfile;->allow_sdp_nat_rewrite:Z

    .line 1100
    return-void

    :cond_0
    move v0, v2

    .line 1047
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 1063
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 1072
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 1083
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 1084
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 1095
    goto :goto_5

    :cond_6
    move v1, v2

    .line 1099
    goto :goto_6
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/weirdvoice/api/SipProfile;)V
    .locals 0

    .prologue
    .line 1041
    invoke-direct {p0, p1}, Lcom/weirdvoice/api/SipProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private final createFromContentValue(Landroid/content/ContentValues;)V
    .locals 8
    .param p1, "args"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1223
    const-string v2, "id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1224
    .local v0, "tmp_i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1225
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v6, v2

    iput-wide v6, p0, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 1227
    :cond_0
    const-string v2, "display_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1228
    .local v1, "tmp_s":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1229
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    .line 1231
    :cond_1
    const-string v2, "wizard"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1232
    if-eqz v1, :cond_2

    .line 1233
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->wizard:Ljava/lang/String;

    .line 1235
    :cond_2
    const-string v2, "transport"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1236
    if-eqz v0, :cond_3

    .line 1237
    iput-object v0, p0, Lcom/weirdvoice/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 1239
    :cond_3
    const-string v2, "default_uri_scheme"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1240
    if-eqz v1, :cond_4

    .line 1241
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->default_uri_scheme:Ljava/lang/String;

    .line 1244
    :cond_4
    const-string v2, "active"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1245
    if-eqz v0, :cond_38

    .line 1246
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_37

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipProfile;->active:Z

    .line 1250
    :goto_1
    const-string v2, "android_group"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1251
    if-eqz v1, :cond_5

    .line 1252
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->android_group:Ljava/lang/String;

    .line 1254
    :cond_5
    const-string v2, "wizard_data"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1255
    if-eqz v1, :cond_6

    .line 1256
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->wizard_data:Ljava/lang/String;

    .line 1260
    :cond_6
    const-string v2, "priority"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1261
    if-eqz v0, :cond_7

    .line 1262
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->priority:I

    .line 1264
    :cond_7
    const-string v2, "acc_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1265
    if-eqz v1, :cond_8

    .line 1266
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 1268
    :cond_8
    const-string v2, "reg_uri"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1269
    if-eqz v1, :cond_9

    .line 1270
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 1272
    :cond_9
    const-string v2, "publish_enabled"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1273
    if-eqz v0, :cond_a

    .line 1274
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->publish_enabled:I

    .line 1276
    :cond_a
    const-string v2, "reg_timeout"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1277
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_b

    .line 1278
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->reg_timeout:I

    .line 1280
    :cond_b
    const-string v2, "reg_dbr"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1281
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_c

    .line 1282
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->reg_delay_before_refresh:I

    .line 1285
    :cond_c
    const-string v2, "ka_interval"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1286
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_d

    .line 1287
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->ka_interval:I

    .line 1289
    :cond_d
    const-string v2, "pidf_tuple_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1290
    if-eqz v1, :cond_e

    .line 1291
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    .line 1293
    :cond_e
    const-string v2, "force_contact"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1294
    if-eqz v1, :cond_f

    .line 1295
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->force_contact:Ljava/lang/String;

    .line 1297
    :cond_f
    const-string v2, "allow_contact_rewrite"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1298
    if-eqz v0, :cond_10

    .line 1299
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_39

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipProfile;->allow_contact_rewrite:Z

    .line 1301
    :cond_10
    const-string v2, "contact_rewrite_method"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1302
    if-eqz v0, :cond_11

    .line 1303
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->contact_rewrite_method:I

    .line 1305
    :cond_11
    const-string v2, "allow_via_rewrite"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1306
    if-eqz v0, :cond_12

    .line 1307
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_3a

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipProfile;->allow_via_rewrite:Z

    .line 1309
    :cond_12
    const-string v2, "allow_sdp_nat_rewrite"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1310
    if-eqz v0, :cond_13

    .line 1311
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_3b

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipProfile;->allow_sdp_nat_rewrite:Z

    .line 1314
    :cond_13
    const-string v2, "use_srtp"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1315
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_14

    .line 1316
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->use_srtp:I

    .line 1318
    :cond_14
    const-string v2, "use_zrtp"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1319
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_15

    .line 1320
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->use_zrtp:I

    .line 1324
    :cond_15
    const-string v2, "proxy"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1325
    if-eqz v1, :cond_16

    .line 1326
    const-string v2, "|"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 1328
    :cond_16
    const-string v2, "reg_use_proxy"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1329
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_17

    .line 1330
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->reg_use_proxy:I

    .line 1334
    :cond_17
    const-string v2, "realm"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1335
    if-eqz v1, :cond_18

    .line 1336
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->realm:Ljava/lang/String;

    .line 1338
    :cond_18
    const-string v2, "scheme"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1339
    if-eqz v1, :cond_19

    .line 1340
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->scheme:Ljava/lang/String;

    .line 1342
    :cond_19
    const-string v2, "username"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1343
    if-eqz v1, :cond_1a

    .line 1344
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    .line 1346
    :cond_1a
    const-string v2, "datatype"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1347
    if-eqz v0, :cond_1b

    .line 1348
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->datatype:I

    .line 1350
    :cond_1b
    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1351
    if-eqz v1, :cond_1c

    .line 1352
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    .line 1354
    :cond_1c
    const-string v2, "initial_auth"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1355
    if-eqz v0, :cond_1d

    .line 1356
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_3c

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipProfile;->initial_auth:Z

    .line 1358
    :cond_1d
    const-string v2, "auth_algo"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1359
    if-eqz v1, :cond_1e

    .line 1360
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->auth_algo:Ljava/lang/String;

    .line 1364
    :cond_1e
    const-string v2, "sip_stack"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1365
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1f

    .line 1366
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->sip_stack:I

    .line 1368
    :cond_1f
    const-string v2, "mwi_enabled"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1369
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_20

    .line 1370
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_3d

    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipProfile;->mwi_enabled:Z

    .line 1372
    :cond_20
    const-string v2, "vm_nbr"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1373
    if-eqz v1, :cond_21

    .line 1374
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 1376
    :cond_21
    const-string v2, "try_clean_reg"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1377
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_22

    .line 1378
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->try_clean_registers:I

    .line 1382
    :cond_22
    const-string v2, "use_rfc5626"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1383
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_23

    .line 1384
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3e

    :goto_7
    iput-boolean v3, p0, Lcom/weirdvoice/api/SipProfile;->use_rfc5626:Z

    .line 1386
    :cond_23
    const-string v2, "rfc5626_instance_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1387
    if-eqz v1, :cond_24

    .line 1388
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    .line 1390
    :cond_24
    const-string v2, "rfc5626_reg_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1391
    if-eqz v1, :cond_25

    .line 1392
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    .line 1396
    :cond_25
    const-string v2, "vid_in_auto_show"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1397
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_26

    .line 1398
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->vid_in_auto_show:I

    .line 1400
    :cond_26
    const-string v2, "vid_out_auto_transmit"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1401
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_27

    .line 1402
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->vid_out_auto_transmit:I

    .line 1406
    :cond_27
    const-string v2, "rtp_port"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1407
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_28

    .line 1408
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->rtp_port:I

    .line 1410
    :cond_28
    const-string v2, "rtp_public_addr"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1411
    if-eqz v1, :cond_29

    .line 1412
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    .line 1414
    :cond_29
    const-string v2, "rtp_bound_addr"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1415
    if-eqz v1, :cond_2a

    .line 1416
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    .line 1418
    :cond_2a
    const-string v2, "rtp_enable_qos"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1419
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2b

    .line 1420
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->rtp_enable_qos:I

    .line 1422
    :cond_2b
    const-string v2, "rtp_qos_dscp"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1423
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2c

    .line 1424
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->rtp_qos_dscp:I

    .line 1428
    :cond_2c
    const-string v2, "sip_stun_use"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1429
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2d

    .line 1430
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->sip_stun_use:I

    .line 1432
    :cond_2d
    const-string v2, "media_stun_use"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1433
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2e

    .line 1434
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->media_stun_use:I

    .line 1436
    :cond_2e
    const-string v2, "ice_cfg_use"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1437
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2f

    .line 1438
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_use:I

    .line 1440
    :cond_2f
    const-string v2, "ice_cfg_enable"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1441
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_30

    .line 1442
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_enable:I

    .line 1444
    :cond_30
    const-string v2, "turn_cfg_use"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1445
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_31

    .line 1446
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_use:I

    .line 1448
    :cond_31
    const-string v2, "turn_cfg_enable"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1449
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_32

    .line 1450
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_enable:I

    .line 1452
    :cond_32
    const-string v2, "turn_cfg_server"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1453
    if-eqz v1, :cond_33

    .line 1454
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    .line 1456
    :cond_33
    const-string v2, "turn_cfg_user"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1457
    if-eqz v1, :cond_34

    .line 1458
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    .line 1460
    :cond_34
    const-string v2, "turn_cfg_pwd"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1461
    if-eqz v1, :cond_35

    .line 1462
    iput-object v1, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    .line 1464
    :cond_35
    const-string v2, "ipv6_media_use"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1465
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_36

    .line 1466
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/weirdvoice/api/SipProfile;->ipv6_media_use:I

    .line 1468
    :cond_36
    return-void

    :cond_37
    move v2, v4

    .line 1246
    goto/16 :goto_0

    .line 1248
    :cond_38
    iput-boolean v3, p0, Lcom/weirdvoice/api/SipProfile;->active:Z

    goto/16 :goto_1

    :cond_39
    move v2, v4

    .line 1299
    goto/16 :goto_2

    :cond_3a
    move v2, v4

    .line 1307
    goto/16 :goto_3

    :cond_3b
    move v2, v4

    .line 1311
    goto/16 :goto_4

    :cond_3c
    move v2, v4

    .line 1356
    goto/16 :goto_5

    :cond_3d
    move v2, v4

    .line 1370
    goto/16 :goto_6

    :cond_3e
    move v3, v4

    .line 1384
    goto/16 :goto_7
.end method

.method private final createFromDb(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1208
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1209
    .local v0, "args":Landroid/content/ContentValues;
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 1210
    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 1211
    return-void
.end method

.method public static getAllProfiles(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "onlyActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/weirdvoice/api/SipProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1769
    sget-object v0, Lcom/weirdvoice/api/SipProfile;->LISTABLE_PROJECTION:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/weirdvoice/api/SipProfile;->getAllProfiles(Landroid/content/Context;Z[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getAllProfiles(Landroid/content/Context;Z[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "onlyActive"    # Z
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/weirdvoice/api/SipProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1780
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1782
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/weirdvoice/api/SipProfile;>;"
    const/4 v3, 0x0

    .line 1783
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1784
    .local v4, "selectionArgs":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1785
    const-string v3, "active=?"

    .line 1786
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1787
    const-string v1, "1"

    aput-object v1, v4, v0

    .line 1790
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1792
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1794
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1796
    :cond_1
    new-instance v0, Lcom/weirdvoice/api/SipProfile;

    invoke-direct {v0, v6}, Lcom/weirdvoice/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1802
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1806
    :cond_3
    :goto_0
    return-object v8

    .line 1799
    :catch_0
    move-exception v7

    .line 1800
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SipProfile"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1802
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1801
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1802
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1803
    throw v0
.end method

.method public static getProfileFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lcom/weirdvoice/api/SipProfile;
    .locals 11
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1739
    new-instance v6, Lcom/weirdvoice/api/SipProfile;

    invoke-direct {v6}, Lcom/weirdvoice/api/SipProfile;-><init>()V

    .line 1740
    .local v6, "account":Lcom/weirdvoice/api/SipProfile;
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 1741
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1742
    sget-object v1, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    .line 1741
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1745
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1747
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1748
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1749
    new-instance v7, Lcom/weirdvoice/api/SipProfile;

    invoke-direct {v7, v8}, Lcom/weirdvoice/api/SipProfile;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "account":Lcom/weirdvoice/api/SipProfile;
    .local v7, "account":Lcom/weirdvoice/api/SipProfile;
    move-object v6, v7

    .line 1754
    .end local v7    # "account":Lcom/weirdvoice/api/SipProfile;
    .restart local v6    # "account":Lcom/weirdvoice/api/SipProfile;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1758
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v6

    .line 1751
    .restart local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1752
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SipProfile"

    const-string v1, "Something went wrong while retrieving the account"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1754
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1753
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1754
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1755
    throw v0
.end method

.method private getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1199
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1195
    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1121
    const/4 v0, 0x0

    return v0
.end method

.method public formatCalleeNumber(Ljava/lang/String;)Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    .locals 3
    .param p1, "fuzzyNumber"    # Ljava/lang/String;

    .prologue
    .line 1702
    invoke-static {p1}, Lcom/weirdvoice/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;

    move-result-object v1

    .line 1704
    .local v1, "finalCallee":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    iget-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1705
    invoke-virtual {p0}, Lcom/weirdvoice/api/SipProfile;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    .line 1706
    .local v0, "defaultDomain":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1707
    iget-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    iput-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    .line 1708
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    .line 1713
    .end local v0    # "defaultDomain":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1714
    iget-object v2, p0, Lcom/weirdvoice/api/SipProfile;->default_uri_scheme:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1715
    iget-object v2, p0, Lcom/weirdvoice/api/SipProfile;->default_uri_scheme:Ljava/lang/String;

    iput-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    .line 1720
    :cond_1
    :goto_1
    return-object v1

    .line 1710
    .restart local v0    # "defaultDomain":Ljava/lang/String;
    :cond_2
    iput-object v0, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    goto :goto_0

    .line 1717
    .end local v0    # "defaultDomain":Ljava/lang/String;
    :cond_3
    const-string v2, "sip"

    iput-object v2, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    goto :goto_1
.end method

.method public getAutoRegistration()Z
    .locals 1

    .prologue
    .line 1615
    const/4 v0, 0x1

    return v0
.end method

.method public getDbContentValues()Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1483
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1485
    .local v0, "args":Landroid/content/ContentValues;
    iget-wide v4, p0, Lcom/weirdvoice/api/SipProfile;->id:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 1486
    const-string v1, "id"

    iget-wide v4, p0, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1490
    :cond_0
    const-string v4, "active"

    iget-boolean v1, p0, Lcom/weirdvoice/api/SipProfile;->active:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1491
    const-string v1, "wizard"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->wizard:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    const-string v1, "display_name"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    const-string v1, "transport"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->transport:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1494
    const-string v1, "default_uri_scheme"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->default_uri_scheme:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    const-string v1, "wizard_data"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->wizard_data:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const-string v1, "priority"

    iget v4, p0, Lcom/weirdvoice/api/SipProfile;->priority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1498
    const-string v1, "acc_id"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    const-string v1, "reg_uri"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->reg_uri:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    const-string v1, "publish_enabled"

    iget v4, p0, Lcom/weirdvoice/api/SipProfile;->publish_enabled:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1502
    const-string v1, "reg_timeout"

    iget v4, p0, Lcom/weirdvoice/api/SipProfile;->reg_timeout:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1503
    const-string v1, "ka_interval"

    iget v4, p0, Lcom/weirdvoice/api/SipProfile;->ka_interval:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1504
    const-string v1, "pidf_tuple_id"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const-string v1, "force_contact"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->force_contact:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    const-string v4, "allow_contact_rewrite"

    iget-boolean v1, p0, Lcom/weirdvoice/api/SipProfile;->allow_contact_rewrite:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1507
    const-string v4, "allow_via_rewrite"

    iget-boolean v1, p0, Lcom/weirdvoice/api/SipProfile;->allow_via_rewrite:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1508
    const-string v4, "allow_sdp_nat_rewrite"

    iget-boolean v1, p0, Lcom/weirdvoice/api/SipProfile;->allow_sdp_nat_rewrite:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1509
    const-string v1, "contact_rewrite_method"

    iget v4, p0, Lcom/weirdvoice/api/SipProfile;->contact_rewrite_method:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1510
    const-string v1, "use_srtp"

    iget v4, p0, Lcom/weirdvoice/api/SipProfile;->use_srtp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1511
    const-string v1, "use_zrtp"

    iget v4, p0, Lcom/weirdvoice/api/SipProfile;->use_zrtp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1515
    iget-object v1, p0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1516
    const-string v1, "proxy"

    const-string v4, "|"

    iget-object v5, p0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    :goto_4
    const-string v1, "reg_use_proxy"

    iget v4, p0, Lcom/weirdvoice/api/SipProfile;->reg_use_proxy:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1523
    const-string v1, "realm"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    const-string v1, "scheme"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    const-string v1, "username"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    const-string v1, "datatype"

    iget v4, p0, Lcom/weirdvoice/api/SipProfile;->datatype:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1527
    iget-object v1, p0, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1528
    const-string v1, "data"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    :cond_1
    const-string v4, "initial_auth"

    iget-boolean v1, p0, Lcom/weirdvoice/api/SipProfile;->initial_auth:Z

    if-eqz v1, :cond_8

    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1531
    iget-object v1, p0, Lcom/weirdvoice/api/SipProfile;->auth_algo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1532
    const-string v1, "auth_algo"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->auth_algo:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    :cond_2
    const-string v1, "sip_stack"

    iget v4, p0, Lcom/weirdvoice/api/SipProfile;->sip_stack:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1536
    const-string v1, "mwi_enabled"

    iget-boolean v4, p0, Lcom/weirdvoice/api/SipProfile;->mwi_enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1537
    const-string v1, "vm_nbr"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->vm_nbr:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const-string v1, "reg_dbr"

    iget v4, p0, Lcom/weirdvoice/api/SipProfile;->reg_delay_before_refresh:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1539
    const-string v1, "try_clean_reg"

    iget v4, p0, Lcom/weirdvoice/api/SipProfile;->try_clean_registers:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1542
    const-string v1, "rtp_bound_addr"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    const-string v1, "rtp_enable_qos"

    iget v4, p0, Lcom/weirdvoice/api/SipProfile;->rtp_enable_qos:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1544
    const-string v1, "rtp_port"

    iget v4, p0, Lcom/weirdvoice/api/SipProfile;->rtp_port:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1545
    const-string v1, "rtp_public_addr"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    const-string v1, "rtp_qos_dscp"

    iget v4, p0, Lcom/weirdvoice/api/SipProfile;->rtp_qos_dscp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1548
    const-string v1, "vid_in_auto_show"

    iget v4, p0, Lcom/weirdvoice/api/SipProfile;->vid_in_auto_show:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1549
    const-string v1, "vid_out_auto_transmit"

    iget v4, p0, Lcom/weirdvoice/api/SipProfile;->vid_out_auto_transmit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1551
    const-string v1, "rfc5626_instance_id"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    const-string v1, "rfc5626_reg_id"

    iget-object v4, p0, Lcom/weirdvoice/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    const-string v1, "use_rfc5626"

    iget-boolean v4, p0, Lcom/weirdvoice/api/SipProfile;->use_rfc5626:Z

    if-eqz v4, :cond_9

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1555
    const-string v1, "android_group"

    iget-object v2, p0, Lcom/weirdvoice/api/SipProfile;->android_group:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    const-string v1, "sip_stun_use"

    iget v2, p0, Lcom/weirdvoice/api/SipProfile;->sip_stun_use:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1558
    const-string v1, "media_stun_use"

    iget v2, p0, Lcom/weirdvoice/api/SipProfile;->media_stun_use:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1559
    const-string v1, "ice_cfg_use"

    iget v2, p0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_use:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1560
    const-string v1, "ice_cfg_enable"

    iget v2, p0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_enable:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1561
    const-string v1, "turn_cfg_use"

    iget v2, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_use:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1562
    const-string v1, "turn_cfg_enable"

    iget v2, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_enable:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1563
    const-string v1, "turn_cfg_server"

    iget-object v2, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const-string v1, "turn_cfg_user"

    iget-object v2, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    const-string v1, "turn_cfg_pwd"

    iget-object v2, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    const-string v1, "ipv6_media_use"

    iget v2, p0, Lcom/weirdvoice/api/SipProfile;->ipv6_media_use:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1569
    return-object v0

    :cond_3
    move v1, v3

    .line 1490
    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 1506
    goto/16 :goto_1

    :cond_5
    move v1, v3

    .line 1507
    goto/16 :goto_2

    :cond_6
    move v1, v3

    .line 1508
    goto/16 :goto_3

    .line 1518
    :cond_7
    const-string v1, "proxy"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    move v1, v3

    .line 1530
    goto/16 :goto_5

    :cond_9
    move v2, v3

    .line 1553
    goto/16 :goto_6
.end method

.method public getDefaultDomain()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1578
    iget-object v3, p0, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/weirdvoice/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;

    move-result-object v1

    .line 1579
    .local v1, "parsedAoR":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    const/4 v2, 0x0

    .line 1580
    .local v2, "parsedInfo":Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;
    iget-object v3, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1582
    iget-object v3, p0, Lcom/weirdvoice/api/SipProfile;->reg_uri:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1583
    iget-object v3, p0, Lcom/weirdvoice/api/SipProfile;->reg_uri:Ljava/lang/String;

    invoke-static {v3}, Lcom/weirdvoice/api/SipUri;->parseSipUri(Ljava/lang/String;)Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;

    move-result-object v2

    .line 1591
    :cond_0
    :goto_0
    if-nez v2, :cond_4

    .line 1604
    :cond_1
    :goto_1
    return-object v0

    .line 1584
    :cond_2
    iget-object v3, p0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 1585
    iget-object v3, p0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/weirdvoice/api/SipUri;->parseSipUri(Ljava/lang/String;)Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;

    move-result-object v2

    .line 1587
    goto :goto_0

    .line 1588
    :cond_3
    invoke-virtual {v1}, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->getServerSipUri()Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;

    move-result-object v2

    goto :goto_0

    .line 1595
    :cond_4
    iget-object v3, v2, Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;->domain:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1596
    iget-object v0, v2, Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;->domain:Ljava/lang/String;

    .line 1597
    .local v0, "dom":Ljava/lang/String;
    iget v3, v2, Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;->port:I

    const/16 v4, 0x13c4

    if-eq v3, v4, :cond_1

    .line 1598
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;->port:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1602
    .end local v0    # "dom":Ljava/lang/String;
    :cond_5
    const-string v3, "SipProfile"

    const-string v4, "Domain not found for this account"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1624
    iget-object v1, p0, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1625
    iget-object v1, p0, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/weirdvoice/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;

    move-result-object v0

    .line 1626
    .local v0, "parsed":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    iget-object v1, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1627
    iget-object v1, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    .line 1630
    .end local v0    # "parsed":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1661
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSipDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1670
    iget-object v1, p0, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/weirdvoice/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;

    move-result-object v0

    .line 1671
    .local v0, "parsed":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    iget-object v1, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1672
    iget-object v1, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    .line 1674
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getSipUserName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1694
    iget-object v1, p0, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/weirdvoice/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;

    move-result-object v0

    .line 1695
    .local v0, "parsed":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    iget-object v1, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1696
    iget-object v1, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    .line 1698
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1129
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->primaryKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    iget-wide v4, p0, Lcom/weirdvoice/api/SipProfile;->id:J

    long-to-int v0, v4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1132
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->wizard:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->transport:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1134
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipProfile;->active:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1135
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1136
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1137
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->reg_uri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1138
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->publish_enabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->reg_timeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1140
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->ka_interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1141
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1142
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->force_contact:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1144
    const-string v0, "|"

    iget-object v3, p0, Lcom/weirdvoice/api/SipProfile;->proxies:[Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1148
    :goto_1
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->realm:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->username:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1150
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->datatype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1151
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->data:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1152
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->use_srtp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1153
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipProfile;->allow_contact_rewrite:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1154
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->contact_rewrite_method:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1155
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->sip_stack:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1156
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->reg_use_proxy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1157
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->use_zrtp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->vm_nbr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1159
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->reg_delay_before_refresh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1161
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->try_clean_registers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1162
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipProfile;->use_rfc5626:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1163
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1165
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->vid_in_auto_show:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1166
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->vid_out_auto_transmit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1167
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->rtp_port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1168
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1170
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->rtp_enable_qos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->rtp_qos_dscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->android_group:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1173
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipProfile;->mwi_enabled:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1174
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipProfile;->allow_via_rewrite:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->sip_stun_use:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1176
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->media_stun_use:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1177
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_use:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->ice_cfg_enable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_use:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_enable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1183
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1184
    iget v0, p0, Lcom/weirdvoice/api/SipProfile;->ipv6_media_use:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipProfile;->initial_auth:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->auth_algo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1187
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->wizard_data:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/weirdvoice/api/SipProfile;->default_uri_scheme:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1189
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipProfile;->allow_sdp_nat_rewrite:Z

    if-eqz v0, :cond_7

    :goto_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1190
    return-void

    :cond_0
    move v0, v2

    .line 1134
    goto/16 :goto_0

    .line 1146
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 1153
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 1162
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 1173
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 1174
    goto :goto_5

    :cond_6
    move v0, v2

    .line 1185
    goto :goto_6

    :cond_7
    move v1, v2

    .line 1189
    goto :goto_7
.end method

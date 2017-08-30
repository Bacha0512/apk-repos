.class public Lorg/abtollc/api/SipProfile;
.super Ljava/lang/Object;
.source "SipProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCOUNTS_STATUS_TABLE_NAME:Ljava/lang/String; = "accounts_status"

.field public static final ACCOUNTS_TABLE_NAME:Ljava/lang/String; = "accounts"

.field public static final ACCOUNT_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.abtollc.account"

.field public static final ACCOUNT_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.abtollc.account"

.field public static final ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

.field public static final ACCOUNT_STATUS_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.abtollc.account_status"

.field public static final ACCOUNT_STATUS_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.abtollc.account_status"

.field public static final ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

.field public static final ACCOUNT_STATUS_URI:Landroid/net/Uri;

.field public static final ACCOUNT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/abtollc/api/SipProfile;",
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

.field public static final FIELD_ALLOW_VIA_REWRITE:Ljava/lang/String; = "allow_via_rewrite"

.field public static final FIELD_ANDROID_GROUP:Ljava/lang/String; = "android_group"

.field public static final FIELD_CONTACT_PARAMS:Ljava/lang/String; = "contact_params"

.field public static final FIELD_CONTACT_REWRITE_METHOD:Ljava/lang/String; = "contact_rewrite_method"

.field public static final FIELD_CONTACT_URI_PARAMS:Ljava/lang/String; = "contact_uri_params"

.field public static final FIELD_DATA:Ljava/lang/String; = "data"

.field public static final FIELD_DATATYPE:Ljava/lang/String; = "datatype"

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

.field public static final GOOGLE_STACK:I = 0x1

.field public static final INVALID_ID:J = -0x1L

.field public static final LISTABLE_PROJECTION:[Ljava/lang/String;

.field public static final PROXIES_SEPARATOR:Ljava/lang/String; = "|"

.field public static final SIP_STACK:I = 0x0

.field private static final THIS_FILE:Ljava/lang/String; = "SipProfile"

.field public static final TRANSPORT_AUTO:I = 0x0

.field public static final TRANSPORT_TCP:I = 0x2

.field public static final TRANSPORT_TLS:I = 0x3

.field public static final TRANSPORT_UDP:I = 0x1


# instance fields
.field public acc_id:Ljava/lang/String;

.field public active:Z

.field public allow_contact_rewrite:Z

.field public allow_via_rewrite:Z

.field public android_group:Ljava/lang/String;

.field public contactDetails:Ljava/lang/String;

.field public contactDetailsUri:Ljava/lang/String;

.field public contact_rewrite_method:I

.field public data:Ljava/lang/String;

.field public datatype:I

.field public display_name:Ljava/lang/String;

.field public force_contact:Ljava/lang/String;

.field public ice_cfg_enable:I

.field public ice_cfg_use:I

.field public icon:Landroid/graphics/Bitmap;

.field public id:J

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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 125
    const-string v0, "content://org.abtollc.db/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/abtollc/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    .line 133
    const-string v0, "content://org.abtollc.db/accounts/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/abtollc/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    .line 155
    const-string v0, "content://org.abtollc.db/accounts_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/abtollc/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    .line 163
    const-string v0, "content://org.abtollc.db/accounts_status/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/abtollc/api/SipProfile;->ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

    .line 586
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "acc_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "active"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "wizard"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "reg_uri"

    aput-object v2, v0, v1

    sput-object v0, Lorg/abtollc/api/SipProfile;->LISTABLE_PROJECTION:[Ljava/lang/String;

    .line 909
    new-instance v0, Lorg/abtollc/api/SipProfile$1;

    invoke-direct {v0}, Lorg/abtollc/api/SipProfile$1;-><init>()V

    sput-object v0, Lorg/abtollc/api/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput v2, p0, Lorg/abtollc/api/SipProfile;->primaryKey:I

    .line 604
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/abtollc/api/SipProfile;->id:J

    .line 608
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->display_name:Ljava/lang/String;

    .line 612
    const-string v0, "EXPERT"

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->wizard:Ljava/lang/String;

    .line 616
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 620
    iput-boolean v3, p0, Lorg/abtollc/api/SipProfile;->active:Z

    .line 624
    const/16 v0, 0x64

    iput v0, p0, Lorg/abtollc/api/SipProfile;->priority:I

    .line 628
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 633
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 637
    iput v3, p0, Lorg/abtollc/api/SipProfile;->publish_enabled:I

    .line 641
    const/16 v0, 0x384

    iput v0, p0, Lorg/abtollc/api/SipProfile;->reg_timeout:I

    .line 645
    iput v3, p0, Lorg/abtollc/api/SipProfile;->ka_interval:I

    .line 649
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    .line 653
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->force_contact:Ljava/lang/String;

    .line 657
    iput-boolean v5, p0, Lorg/abtollc/api/SipProfile;->allow_contact_rewrite:Z

    .line 661
    iput v5, p0, Lorg/abtollc/api/SipProfile;->contact_rewrite_method:I

    .line 665
    iput-boolean v3, p0, Lorg/abtollc/api/SipProfile;->allow_via_rewrite:Z

    .line 671
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 675
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->realm:Ljava/lang/String;

    .line 679
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->username:Ljava/lang/String;

    .line 683
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->scheme:Ljava/lang/String;

    .line 687
    iput v3, p0, Lorg/abtollc/api/SipProfile;->datatype:I

    .line 691
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->data:Ljava/lang/String;

    .line 695
    iput v2, p0, Lorg/abtollc/api/SipProfile;->use_srtp:I

    .line 699
    iput v2, p0, Lorg/abtollc/api/SipProfile;->use_zrtp:I

    .line 703
    const/4 v0, 0x3

    iput v0, p0, Lorg/abtollc/api/SipProfile;->reg_use_proxy:I

    .line 707
    iput v3, p0, Lorg/abtollc/api/SipProfile;->sip_stack:I

    .line 711
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 715
    iput v2, p0, Lorg/abtollc/api/SipProfile;->reg_delay_before_refresh:I

    .line 719
    iput v3, p0, Lorg/abtollc/api/SipProfile;->try_clean_registers:I

    .line 725
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    .line 729
    iput-boolean v5, p0, Lorg/abtollc/api/SipProfile;->use_rfc5626:Z

    .line 733
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    .line 737
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    .line 741
    iput v2, p0, Lorg/abtollc/api/SipProfile;->vid_in_auto_show:I

    .line 745
    iput v2, p0, Lorg/abtollc/api/SipProfile;->vid_out_auto_transmit:I

    .line 749
    iput v2, p0, Lorg/abtollc/api/SipProfile;->rtp_port:I

    .line 753
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    .line 757
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    .line 761
    iput v2, p0, Lorg/abtollc/api/SipProfile;->rtp_enable_qos:I

    .line 765
    iput v2, p0, Lorg/abtollc/api/SipProfile;->rtp_qos_dscp:I

    .line 769
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->android_group:Ljava/lang/String;

    .line 773
    iput-boolean v3, p0, Lorg/abtollc/api/SipProfile;->mwi_enabled:Z

    .line 777
    iput v2, p0, Lorg/abtollc/api/SipProfile;->sip_stun_use:I

    .line 781
    iput v2, p0, Lorg/abtollc/api/SipProfile;->media_stun_use:I

    .line 785
    iput v2, p0, Lorg/abtollc/api/SipProfile;->ice_cfg_use:I

    .line 789
    iput v3, p0, Lorg/abtollc/api/SipProfile;->ice_cfg_enable:I

    .line 793
    iput v2, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_use:I

    .line 797
    iput v3, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_enable:I

    .line 801
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    .line 805
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    .line 809
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    .line 814
    iput v3, p0, Lorg/abtollc/api/SipProfile;->ipv6_media_use:I

    .line 818
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->contactDetails:Ljava/lang/String;

    .line 822
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->contactDetailsUri:Ljava/lang/String;

    .line 825
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->display_name:Ljava/lang/String;

    .line 826
    const-string v0, "EXPERT"

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->wizard:Ljava/lang/String;

    .line 827
    iput-boolean v3, p0, Lorg/abtollc/api/SipProfile;->active:Z

    .line 828
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

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput v2, p0, Lorg/abtollc/api/SipProfile;->primaryKey:I

    .line 604
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/abtollc/api/SipProfile;->id:J

    .line 608
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->display_name:Ljava/lang/String;

    .line 612
    const-string v0, "EXPERT"

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->wizard:Ljava/lang/String;

    .line 616
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 620
    iput-boolean v3, p0, Lorg/abtollc/api/SipProfile;->active:Z

    .line 624
    const/16 v0, 0x64

    iput v0, p0, Lorg/abtollc/api/SipProfile;->priority:I

    .line 628
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 633
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 637
    iput v3, p0, Lorg/abtollc/api/SipProfile;->publish_enabled:I

    .line 641
    const/16 v0, 0x384

    iput v0, p0, Lorg/abtollc/api/SipProfile;->reg_timeout:I

    .line 645
    iput v3, p0, Lorg/abtollc/api/SipProfile;->ka_interval:I

    .line 649
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    .line 653
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->force_contact:Ljava/lang/String;

    .line 657
    iput-boolean v5, p0, Lorg/abtollc/api/SipProfile;->allow_contact_rewrite:Z

    .line 661
    iput v5, p0, Lorg/abtollc/api/SipProfile;->contact_rewrite_method:I

    .line 665
    iput-boolean v3, p0, Lorg/abtollc/api/SipProfile;->allow_via_rewrite:Z

    .line 671
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 675
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->realm:Ljava/lang/String;

    .line 679
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->username:Ljava/lang/String;

    .line 683
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->scheme:Ljava/lang/String;

    .line 687
    iput v3, p0, Lorg/abtollc/api/SipProfile;->datatype:I

    .line 691
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->data:Ljava/lang/String;

    .line 695
    iput v2, p0, Lorg/abtollc/api/SipProfile;->use_srtp:I

    .line 699
    iput v2, p0, Lorg/abtollc/api/SipProfile;->use_zrtp:I

    .line 703
    const/4 v0, 0x3

    iput v0, p0, Lorg/abtollc/api/SipProfile;->reg_use_proxy:I

    .line 707
    iput v3, p0, Lorg/abtollc/api/SipProfile;->sip_stack:I

    .line 711
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 715
    iput v2, p0, Lorg/abtollc/api/SipProfile;->reg_delay_before_refresh:I

    .line 719
    iput v3, p0, Lorg/abtollc/api/SipProfile;->try_clean_registers:I

    .line 725
    iput-object v4, p0, Lorg/abtollc/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    .line 729
    iput-boolean v5, p0, Lorg/abtollc/api/SipProfile;->use_rfc5626:Z

    .line 733
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    .line 737
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    .line 741
    iput v2, p0, Lorg/abtollc/api/SipProfile;->vid_in_auto_show:I

    .line 745
    iput v2, p0, Lorg/abtollc/api/SipProfile;->vid_out_auto_transmit:I

    .line 749
    iput v2, p0, Lorg/abtollc/api/SipProfile;->rtp_port:I

    .line 753
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    .line 757
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    .line 761
    iput v2, p0, Lorg/abtollc/api/SipProfile;->rtp_enable_qos:I

    .line 765
    iput v2, p0, Lorg/abtollc/api/SipProfile;->rtp_qos_dscp:I

    .line 769
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->android_group:Ljava/lang/String;

    .line 773
    iput-boolean v3, p0, Lorg/abtollc/api/SipProfile;->mwi_enabled:Z

    .line 777
    iput v2, p0, Lorg/abtollc/api/SipProfile;->sip_stun_use:I

    .line 781
    iput v2, p0, Lorg/abtollc/api/SipProfile;->media_stun_use:I

    .line 785
    iput v2, p0, Lorg/abtollc/api/SipProfile;->ice_cfg_use:I

    .line 789
    iput v3, p0, Lorg/abtollc/api/SipProfile;->ice_cfg_enable:I

    .line 793
    iput v2, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_use:I

    .line 797
    iput v3, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_enable:I

    .line 801
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    .line 805
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    .line 809
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    .line 814
    iput v3, p0, Lorg/abtollc/api/SipProfile;->ipv6_media_use:I

    .line 818
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->contactDetails:Ljava/lang/String;

    .line 822
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->contactDetailsUri:Ljava/lang/String;

    .line 838
    invoke-direct {p0, p1}, Lorg/abtollc/api/SipProfile;->createFromDb(Landroid/database/Cursor;)V

    .line 839
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput v3, p0, Lorg/abtollc/api/SipProfile;->primaryKey:I

    .line 604
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lorg/abtollc/api/SipProfile;->id:J

    .line 608
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->display_name:Ljava/lang/String;

    .line 612
    const-string v0, "EXPERT"

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->wizard:Ljava/lang/String;

    .line 616
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 620
    iput-boolean v2, p0, Lorg/abtollc/api/SipProfile;->active:Z

    .line 624
    const/16 v0, 0x64

    iput v0, p0, Lorg/abtollc/api/SipProfile;->priority:I

    .line 628
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 633
    iput-object v6, p0, Lorg/abtollc/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 637
    iput v2, p0, Lorg/abtollc/api/SipProfile;->publish_enabled:I

    .line 641
    const/16 v0, 0x384

    iput v0, p0, Lorg/abtollc/api/SipProfile;->reg_timeout:I

    .line 645
    iput v2, p0, Lorg/abtollc/api/SipProfile;->ka_interval:I

    .line 649
    iput-object v6, p0, Lorg/abtollc/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    .line 653
    iput-object v6, p0, Lorg/abtollc/api/SipProfile;->force_contact:Ljava/lang/String;

    .line 657
    iput-boolean v1, p0, Lorg/abtollc/api/SipProfile;->allow_contact_rewrite:Z

    .line 661
    iput v1, p0, Lorg/abtollc/api/SipProfile;->contact_rewrite_method:I

    .line 665
    iput-boolean v2, p0, Lorg/abtollc/api/SipProfile;->allow_via_rewrite:Z

    .line 671
    iput-object v6, p0, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 675
    iput-object v6, p0, Lorg/abtollc/api/SipProfile;->realm:Ljava/lang/String;

    .line 679
    iput-object v6, p0, Lorg/abtollc/api/SipProfile;->username:Ljava/lang/String;

    .line 683
    iput-object v6, p0, Lorg/abtollc/api/SipProfile;->scheme:Ljava/lang/String;

    .line 687
    iput v2, p0, Lorg/abtollc/api/SipProfile;->datatype:I

    .line 691
    iput-object v6, p0, Lorg/abtollc/api/SipProfile;->data:Ljava/lang/String;

    .line 695
    iput v3, p0, Lorg/abtollc/api/SipProfile;->use_srtp:I

    .line 699
    iput v3, p0, Lorg/abtollc/api/SipProfile;->use_zrtp:I

    .line 703
    const/4 v0, 0x3

    iput v0, p0, Lorg/abtollc/api/SipProfile;->reg_use_proxy:I

    .line 707
    iput v2, p0, Lorg/abtollc/api/SipProfile;->sip_stack:I

    .line 711
    iput-object v6, p0, Lorg/abtollc/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 715
    iput v3, p0, Lorg/abtollc/api/SipProfile;->reg_delay_before_refresh:I

    .line 719
    iput v2, p0, Lorg/abtollc/api/SipProfile;->try_clean_registers:I

    .line 725
    iput-object v6, p0, Lorg/abtollc/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    .line 729
    iput-boolean v1, p0, Lorg/abtollc/api/SipProfile;->use_rfc5626:Z

    .line 733
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    .line 737
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    .line 741
    iput v3, p0, Lorg/abtollc/api/SipProfile;->vid_in_auto_show:I

    .line 745
    iput v3, p0, Lorg/abtollc/api/SipProfile;->vid_out_auto_transmit:I

    .line 749
    iput v3, p0, Lorg/abtollc/api/SipProfile;->rtp_port:I

    .line 753
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    .line 757
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    .line 761
    iput v3, p0, Lorg/abtollc/api/SipProfile;->rtp_enable_qos:I

    .line 765
    iput v3, p0, Lorg/abtollc/api/SipProfile;->rtp_qos_dscp:I

    .line 769
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->android_group:Ljava/lang/String;

    .line 773
    iput-boolean v2, p0, Lorg/abtollc/api/SipProfile;->mwi_enabled:Z

    .line 777
    iput v3, p0, Lorg/abtollc/api/SipProfile;->sip_stun_use:I

    .line 781
    iput v3, p0, Lorg/abtollc/api/SipProfile;->media_stun_use:I

    .line 785
    iput v3, p0, Lorg/abtollc/api/SipProfile;->ice_cfg_use:I

    .line 789
    iput v2, p0, Lorg/abtollc/api/SipProfile;->ice_cfg_enable:I

    .line 793
    iput v3, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_use:I

    .line 797
    iput v2, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_enable:I

    .line 801
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    .line 805
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    .line 809
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    .line 814
    iput v2, p0, Lorg/abtollc/api/SipProfile;->ipv6_media_use:I

    .line 818
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->contactDetails:Ljava/lang/String;

    .line 822
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->contactDetailsUri:Ljava/lang/String;

    .line 848
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->primaryKey:I

    .line 849
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lorg/abtollc/api/SipProfile;->id:J

    .line 850
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->display_name:Ljava/lang/String;

    .line 851
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->wizard:Ljava/lang/String;

    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/abtollc/api/SipProfile;->active:Z

    .line 854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->priority:I

    .line 855
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 856
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 857
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->publish_enabled:I

    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->reg_timeout:I

    .line 859
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->ka_interval:I

    .line 860
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    .line 861
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->force_contact:Ljava/lang/String;

    .line 862
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "|"

    .line 863
    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 862
    invoke-static {v0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 864
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->realm:Ljava/lang/String;

    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->username:Ljava/lang/String;

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->datatype:I

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->data:Ljava/lang/String;

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->use_srtp:I

    .line 869
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/abtollc/api/SipProfile;->allow_contact_rewrite:Z

    .line 870
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->contact_rewrite_method:I

    .line 871
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->sip_stack:I

    .line 872
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->reg_use_proxy:I

    .line 873
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->use_zrtp:I

    .line 874
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 875
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->reg_delay_before_refresh:I

    .line 876
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    .line 877
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->try_clean_registers:I

    .line 878
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/abtollc/api/SipProfile;->use_rfc5626:Z

    .line 879
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    .line 880
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    .line 881
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->vid_in_auto_show:I

    .line 882
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->vid_out_auto_transmit:I

    .line 883
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->rtp_port:I

    .line 884
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    .line 885
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    .line 886
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->rtp_enable_qos:I

    .line 887
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->rtp_qos_dscp:I

    .line 888
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->android_group:Ljava/lang/String;

    .line 889
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/abtollc/api/SipProfile;->mwi_enabled:Z

    .line 890
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Lorg/abtollc/api/SipProfile;->allow_via_rewrite:Z

    .line 891
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->sip_stun_use:I

    .line 892
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->media_stun_use:I

    .line 893
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->ice_cfg_use:I

    .line 894
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->ice_cfg_enable:I

    .line 895
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_use:I

    .line 896
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_enable:I

    .line 897
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    .line 898
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    .line 899
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    .line 900
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfile;->ipv6_media_use:I

    .line 901
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->contactDetails:Ljava/lang/String;

    .line 902
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->contactDetailsUri:Ljava/lang/String;

    .line 903
    return-void

    :cond_0
    move v0, v2

    .line 853
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 869
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 878
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 889
    goto :goto_3

    :cond_4
    move v1, v2

    .line 890
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/abtollc/api/SipProfile$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/abtollc/api/SipProfile$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/abtollc/api/SipProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private final createFromContentValue(Landroid/content/ContentValues;)V
    .locals 8
    .param p1, "args"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1021
    const-string v2, "id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1022
    .local v0, "tmp_i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1023
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v6, v2

    iput-wide v6, p0, Lorg/abtollc/api/SipProfile;->id:J

    .line 1025
    :cond_0
    const-string v2, "display_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1026
    .local v1, "tmp_s":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1027
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->display_name:Ljava/lang/String;

    .line 1029
    :cond_1
    const-string v2, "wizard"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1030
    if-eqz v1, :cond_2

    .line 1031
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->wizard:Ljava/lang/String;

    .line 1033
    :cond_2
    const-string v2, "transport"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1034
    if-eqz v0, :cond_3

    .line 1035
    iput-object v0, p0, Lorg/abtollc/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 1038
    :cond_3
    const-string v2, "active"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1039
    if-eqz v0, :cond_35

    .line 1040
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_34

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lorg/abtollc/api/SipProfile;->active:Z

    .line 1044
    :goto_1
    const-string v2, "android_group"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1045
    if-eqz v1, :cond_4

    .line 1046
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->android_group:Ljava/lang/String;

    .line 1050
    :cond_4
    const-string v2, "priority"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1051
    if-eqz v0, :cond_5

    .line 1052
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->priority:I

    .line 1054
    :cond_5
    const-string v2, "acc_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    if-eqz v1, :cond_6

    .line 1056
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 1058
    :cond_6
    const-string v2, "reg_uri"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1059
    if-eqz v1, :cond_7

    .line 1060
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 1062
    :cond_7
    const-string v2, "publish_enabled"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1063
    if-eqz v0, :cond_8

    .line 1064
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->publish_enabled:I

    .line 1066
    :cond_8
    const-string v2, "reg_timeout"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1067
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_9

    .line 1068
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->reg_timeout:I

    .line 1070
    :cond_9
    const-string v2, "reg_dbr"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1071
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_a

    .line 1072
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->reg_delay_before_refresh:I

    .line 1075
    :cond_a
    const-string v2, "ka_interval"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1076
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_b

    .line 1077
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->ka_interval:I

    .line 1079
    :cond_b
    const-string v2, "pidf_tuple_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1080
    if-eqz v1, :cond_c

    .line 1081
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    .line 1083
    :cond_c
    const-string v2, "force_contact"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1084
    if-eqz v1, :cond_d

    .line 1085
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->force_contact:Ljava/lang/String;

    .line 1087
    :cond_d
    const-string v2, "allow_contact_rewrite"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1088
    if-eqz v0, :cond_e

    .line 1089
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_36

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lorg/abtollc/api/SipProfile;->allow_contact_rewrite:Z

    .line 1091
    :cond_e
    const-string v2, "contact_rewrite_method"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1092
    if-eqz v0, :cond_f

    .line 1093
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->contact_rewrite_method:I

    .line 1095
    :cond_f
    const-string v2, "allow_via_rewrite"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1096
    if-eqz v0, :cond_10

    .line 1097
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_37

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lorg/abtollc/api/SipProfile;->allow_via_rewrite:Z

    .line 1100
    :cond_10
    const-string v2, "use_srtp"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1101
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_11

    .line 1102
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->use_srtp:I

    .line 1104
    :cond_11
    const-string v2, "use_zrtp"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1105
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_12

    .line 1106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->use_zrtp:I

    .line 1110
    :cond_12
    const-string v2, "proxy"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1111
    if-eqz v1, :cond_13

    .line 1112
    const-string v2, "|"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 1114
    :cond_13
    const-string v2, "reg_use_proxy"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1115
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_14

    .line 1116
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->reg_use_proxy:I

    .line 1120
    :cond_14
    const-string v2, "realm"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1121
    if-eqz v1, :cond_15

    .line 1122
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->realm:Ljava/lang/String;

    .line 1124
    :cond_15
    const-string v2, "scheme"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1125
    if-eqz v1, :cond_16

    .line 1126
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->scheme:Ljava/lang/String;

    .line 1128
    :cond_16
    const-string v2, "username"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1129
    if-eqz v1, :cond_17

    .line 1130
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->username:Ljava/lang/String;

    .line 1132
    :cond_17
    const-string v2, "datatype"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1133
    if-eqz v0, :cond_18

    .line 1134
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->datatype:I

    .line 1136
    :cond_18
    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1137
    if-eqz v1, :cond_19

    .line 1138
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->data:Ljava/lang/String;

    .line 1141
    :cond_19
    const-string v2, "sip_stack"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1142
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1a

    .line 1143
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->sip_stack:I

    .line 1145
    :cond_1a
    const-string v2, "mwi_enabled"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1146
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1b

    .line 1147
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_38

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lorg/abtollc/api/SipProfile;->mwi_enabled:Z

    .line 1149
    :cond_1b
    const-string v2, "vm_nbr"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1150
    if-eqz v1, :cond_1c

    .line 1151
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 1153
    :cond_1c
    const-string v2, "try_clean_reg"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1154
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1d

    .line 1155
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->try_clean_registers:I

    .line 1159
    :cond_1d
    const-string v2, "use_rfc5626"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1160
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1e

    .line 1161
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_39

    :goto_5
    iput-boolean v3, p0, Lorg/abtollc/api/SipProfile;->use_rfc5626:Z

    .line 1163
    :cond_1e
    const-string v2, "rfc5626_instance_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1164
    if-eqz v1, :cond_1f

    .line 1165
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    .line 1167
    :cond_1f
    const-string v2, "rfc5626_reg_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1168
    if-eqz v1, :cond_20

    .line 1169
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    .line 1173
    :cond_20
    const-string v2, "vid_in_auto_show"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1174
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_21

    .line 1175
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->vid_in_auto_show:I

    .line 1177
    :cond_21
    const-string v2, "vid_out_auto_transmit"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1178
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_22

    .line 1179
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->vid_out_auto_transmit:I

    .line 1183
    :cond_22
    const-string v2, "rtp_port"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1184
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_23

    .line 1185
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->rtp_port:I

    .line 1187
    :cond_23
    const-string v2, "rtp_public_addr"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1188
    if-eqz v1, :cond_24

    .line 1189
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    .line 1191
    :cond_24
    const-string v2, "rtp_bound_addr"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1192
    if-eqz v1, :cond_25

    .line 1193
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    .line 1195
    :cond_25
    const-string v2, "rtp_enable_qos"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1196
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_26

    .line 1197
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->rtp_enable_qos:I

    .line 1199
    :cond_26
    const-string v2, "rtp_qos_dscp"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1200
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_27

    .line 1201
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->rtp_qos_dscp:I

    .line 1204
    :cond_27
    const-string v2, "sip_stun_use"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1205
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_28

    .line 1206
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->sip_stun_use:I

    .line 1208
    :cond_28
    const-string v2, "media_stun_use"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1209
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_29

    .line 1210
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->media_stun_use:I

    .line 1212
    :cond_29
    const-string v2, "ice_cfg_use"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1213
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2a

    .line 1214
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->ice_cfg_use:I

    .line 1216
    :cond_2a
    const-string v2, "ice_cfg_enable"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1217
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2b

    .line 1218
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->ice_cfg_enable:I

    .line 1220
    :cond_2b
    const-string v2, "turn_cfg_use"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1221
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2c

    .line 1222
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_use:I

    .line 1224
    :cond_2c
    const-string v2, "ice_cfg_enable"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1225
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2d

    .line 1226
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_enable:I

    .line 1228
    :cond_2d
    const-string v2, "turn_cfg_server"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1229
    if-eqz v1, :cond_2e

    .line 1230
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    .line 1232
    :cond_2e
    const-string v2, "turn_cfg_user"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1233
    if-eqz v1, :cond_2f

    .line 1234
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    .line 1236
    :cond_2f
    const-string v2, "turn_cfg_pwd"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1237
    if-eqz v1, :cond_30

    .line 1238
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    .line 1240
    :cond_30
    const-string v2, "ipv6_media_use"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1241
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_31

    .line 1242
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfile;->ipv6_media_use:I

    .line 1244
    :cond_31
    const-string v2, "contact_params"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1245
    if-eqz v1, :cond_32

    .line 1246
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->contactDetails:Ljava/lang/String;

    .line 1248
    :cond_32
    const-string v2, "contact_uri_params"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1249
    if-eqz v1, :cond_33

    .line 1250
    iput-object v1, p0, Lorg/abtollc/api/SipProfile;->contactDetailsUri:Ljava/lang/String;

    .line 1252
    :cond_33
    return-void

    :cond_34
    move v2, v4

    .line 1040
    goto/16 :goto_0

    .line 1042
    :cond_35
    iput-boolean v4, p0, Lorg/abtollc/api/SipProfile;->active:Z

    goto/16 :goto_1

    :cond_36
    move v2, v4

    .line 1089
    goto/16 :goto_2

    :cond_37
    move v2, v4

    .line 1097
    goto/16 :goto_3

    :cond_38
    move v2, v4

    .line 1147
    goto/16 :goto_4

    :cond_39
    move v3, v4

    .line 1161
    goto/16 :goto_5
.end method

.method private final createFromDb(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1006
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1007
    .local v0, "args":Landroid/content/ContentValues;
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 1008
    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 1009
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
            "Lorg/abtollc/api/SipProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1542
    sget-object v0, Lorg/abtollc/api/SipProfile;->LISTABLE_PROJECTION:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/abtollc/api/SipProfile;->getAllProfiles(Landroid/content/Context;Z[Ljava/lang/String;)Ljava/util/ArrayList;

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
            "Lorg/abtollc/api/SipProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1554
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1556
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/abtollc/api/SipProfile;>;"
    const/4 v3, 0x0

    .line 1557
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1558
    .local v4, "selectionArgs":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1559
    const-string v3, "active=?"

    .line 1560
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "1"

    aput-object v1, v4, v0

    .line 1564
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1566
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1568
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1570
    :cond_1
    new-instance v0, Lorg/abtollc/api/SipProfile;

    invoke-direct {v0, v6}, Lorg/abtollc/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1571
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1576
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1580
    :cond_3
    :goto_0
    return-object v8

    .line 1573
    :catch_0
    move-exception v7

    .line 1574
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SipProfile"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1576
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getProfileFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lorg/abtollc/api/SipProfile;
    .locals 11
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1487
    const/4 v6, 0x0

    .line 1488
    .local v6, "account":Lorg/abtollc/api/SipProfile;
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 1489
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    .line 1490
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    .line 1489
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1493
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1495
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1496
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1497
    new-instance v7, Lorg/abtollc/api/SipProfile;

    invoke-direct {v7, v8}, Lorg/abtollc/api/SipProfile;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "account":Lorg/abtollc/api/SipProfile;
    .local v7, "account":Lorg/abtollc/api/SipProfile;
    move-object v6, v7

    .line 1502
    .end local v7    # "account":Lorg/abtollc/api/SipProfile;
    .restart local v6    # "account":Lorg/abtollc/api/SipProfile;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1506
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v6

    .line 1499
    .restart local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1500
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SipProfile"

    const-string v1, "Something went wrong while retrieving the account"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1502
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getProfileIdFromDbSipUri(Landroid/content/Context;Ljava/lang/String;)J
    .locals 10
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 1511
    new-instance v6, Lorg/abtollc/api/SipProfile;

    invoke-direct {v6}, Lorg/abtollc/api/SipProfile;-><init>()V

    .line 1512
    .local v6, "account":Lorg/abtollc/api/SipProfile;
    if-eqz p1, :cond_1

    const-string v0, ""

    if-eq p1, v0, :cond_1

    .line 1515
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/abtollc/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    const-string v3, "acc_id LIKE ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1517
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1519
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1520
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1521
    new-instance v7, Lorg/abtollc/api/SipProfile;

    invoke-direct {v7, v8}, Lorg/abtollc/api/SipProfile;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "account":Lorg/abtollc/api/SipProfile;
    .local v7, "account":Lorg/abtollc/api/SipProfile;
    move-object v6, v7

    .line 1526
    .end local v7    # "account":Lorg/abtollc/api/SipProfile;
    .restart local v6    # "account":Lorg/abtollc/api/SipProfile;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1530
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    iget-wide v0, v6, Lorg/abtollc/api/SipProfile;->id:J

    return-wide v0

    .line 1523
    .restart local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1524
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SipProfile"

    const-string v1, "Something went wrong while retrieving the account"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1526
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 997
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
    .line 993
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
    .line 923
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoRegistration()Z
    .locals 1

    .prologue
    .line 1384
    const/4 v0, 0x1

    return v0
.end method

.method public getDbContentValues()Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1255
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1257
    .local v0, "args":Landroid/content/ContentValues;
    iget-wide v4, p0, Lorg/abtollc/api/SipProfile;->id:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 1258
    const-string v1, "id"

    iget-wide v4, p0, Lorg/abtollc/api/SipProfile;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1262
    :cond_0
    const-string v4, "active"

    iget-boolean v1, p0, Lorg/abtollc/api/SipProfile;->active:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1263
    const-string v1, "wizard"

    iget-object v4, p0, Lorg/abtollc/api/SipProfile;->wizard:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    const-string v1, "display_name"

    iget-object v4, p0, Lorg/abtollc/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    const-string v1, "transport"

    iget-object v4, p0, Lorg/abtollc/api/SipProfile;->transport:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1267
    const-string v1, "priority"

    iget v4, p0, Lorg/abtollc/api/SipProfile;->priority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1268
    const-string v1, "acc_id"

    iget-object v4, p0, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    const-string v1, "reg_uri"

    iget-object v4, p0, Lorg/abtollc/api/SipProfile;->reg_uri:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    const-string v1, "publish_enabled"

    iget v4, p0, Lorg/abtollc/api/SipProfile;->publish_enabled:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1274
    const-string v1, "reg_timeout"

    iget v4, p0, Lorg/abtollc/api/SipProfile;->reg_timeout:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1275
    const-string v1, "ka_interval"

    iget v4, p0, Lorg/abtollc/api/SipProfile;->ka_interval:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1276
    const-string v1, "pidf_tuple_id"

    iget-object v4, p0, Lorg/abtollc/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    const-string v1, "force_contact"

    iget-object v4, p0, Lorg/abtollc/api/SipProfile;->force_contact:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const-string v4, "allow_contact_rewrite"

    iget-boolean v1, p0, Lorg/abtollc/api/SipProfile;->allow_contact_rewrite:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1279
    const-string v1, "allow_via_rewrite"

    iget-boolean v4, p0, Lorg/abtollc/api/SipProfile;->allow_via_rewrite:Z

    if-eqz v4, :cond_6

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1280
    const-string v1, "contact_rewrite_method"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->contact_rewrite_method:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1281
    const-string v1, "use_srtp"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->use_srtp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1282
    const-string v1, "use_zrtp"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->use_zrtp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1286
    iget-object v1, p0, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1287
    const-string v1, "proxy"

    const-string v2, "|"

    iget-object v3, p0, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    :goto_3
    const-string v1, "reg_use_proxy"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->reg_use_proxy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1294
    const-string v1, "realm"

    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const-string v1, "scheme"

    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const-string v1, "username"

    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const-string v1, "datatype"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->datatype:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1298
    iget-object v1, p0, Lorg/abtollc/api/SipProfile;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1299
    const-string v1, "data"

    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    :cond_1
    const-string v1, "sip_stack"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->sip_stack:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1303
    const-string v1, "mwi_enabled"

    iget-boolean v2, p0, Lorg/abtollc/api/SipProfile;->mwi_enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1304
    const-string v1, "vm_nbr"

    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->vm_nbr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    const-string v1, "reg_dbr"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->reg_delay_before_refresh:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1306
    const-string v1, "try_clean_reg"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->try_clean_registers:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1309
    const-string v1, "rtp_bound_addr"

    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const-string v1, "rtp_enable_qos"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->rtp_enable_qos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1311
    const-string v1, "rtp_port"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->rtp_port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1312
    const-string v1, "rtp_public_addr"

    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const-string v1, "rtp_qos_dscp"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->rtp_qos_dscp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1315
    const-string v1, "vid_in_auto_show"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->vid_in_auto_show:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1316
    const-string v1, "vid_out_auto_transmit"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->vid_out_auto_transmit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1318
    const-string v1, "rfc5626_instance_id"

    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v1, "rfc5626_reg_id"

    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-string v1, "use_rfc5626"

    iget-boolean v2, p0, Lorg/abtollc/api/SipProfile;->use_rfc5626:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1322
    const-string v1, "android_group"

    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->android_group:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const-string v1, "sip_stun_use"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->sip_stun_use:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1325
    const-string v1, "media_stun_use"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->media_stun_use:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1326
    const-string v1, "ice_cfg_use"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->ice_cfg_use:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1327
    const-string v1, "ice_cfg_enable"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->ice_cfg_enable:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1328
    const-string v1, "turn_cfg_use"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_use:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1329
    const-string v1, "turn_cfg_enable"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_enable:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1330
    const-string v1, "turn_cfg_server"

    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const-string v1, "turn_cfg_user"

    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const-string v1, "turn_cfg_pwd"

    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    const-string v1, "ipv6_media_use"

    iget v2, p0, Lorg/abtollc/api/SipProfile;->ipv6_media_use:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1336
    iget-object v1, p0, Lorg/abtollc/api/SipProfile;->contactDetails:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1337
    const-string v1, "contact_params"

    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->contactDetails:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :cond_2
    iget-object v1, p0, Lorg/abtollc/api/SipProfile;->contactDetailsUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1341
    const-string v1, "contact_uri_params"

    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->contactDetailsUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    :cond_3
    return-object v0

    :cond_4
    move v1, v3

    .line 1262
    goto/16 :goto_0

    :cond_5
    move v1, v3

    .line 1278
    goto/16 :goto_1

    :cond_6
    move v2, v3

    .line 1279
    goto/16 :goto_2

    .line 1289
    :cond_7
    const-string v1, "proxy"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public getDefaultDomain()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1353
    const/4 v1, 0x0

    .line 1354
    .local v1, "parsedInfo":Lorg/abtollc/api/SipUri$ParsedSipUriInfos;
    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->reg_uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1355
    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->reg_uri:Ljava/lang/String;

    invoke-static {v2}, Lorg/abtollc/api/SipUri;->parseSipUri(Ljava/lang/String;)Lorg/abtollc/api/SipUri$ParsedSipUriInfos;

    move-result-object v1

    .line 1360
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 1373
    :cond_1
    :goto_1
    return-object v0

    .line 1356
    :cond_2
    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 1357
    iget-object v2, p0, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/abtollc/api/SipUri;->parseSipUri(Ljava/lang/String;)Lorg/abtollc/api/SipUri$ParsedSipUriInfos;

    move-result-object v1

    goto :goto_0

    .line 1364
    :cond_3
    iget-object v2, v1, Lorg/abtollc/api/SipUri$ParsedSipUriInfos;->domain:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1365
    iget-object v0, v1, Lorg/abtollc/api/SipUri$ParsedSipUriInfos;->domain:Ljava/lang/String;

    .line 1366
    .local v0, "dom":Ljava/lang/String;
    iget v2, v1, Lorg/abtollc/api/SipUri$ParsedSipUriInfos;->port:I

    const/16 v3, 0x13c4

    if-eq v2, v3, :cond_1

    .line 1367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lorg/abtollc/api/SipUri$ParsedSipUriInfos;->port:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1371
    .end local v0    # "dom":Ljava/lang/String;
    :cond_4
    const-string v2, "SipProfile"

    const-string v3, "Domain not found for this account"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1393
    iget-object v1, p0, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1394
    iget-object v1, p0, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-static {v1}, Lorg/abtollc/api/SipUri;->parseSipContact(Ljava/lang/String;)Lorg/abtollc/api/SipUri$ParsedSipContactInfos;

    move-result-object v0

    .line 1395
    .local v0, "parsed":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    iget-object v1, v0, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1396
    iget-object v1, v0, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    .line 1399
    .end local v0    # "parsed":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->display_name:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1427
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1428
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1430
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSipDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1439
    iget-object v1, p0, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-static {v1}, Lorg/abtollc/api/SipUri;->parseSipContact(Ljava/lang/String;)Lorg/abtollc/api/SipUri$ParsedSipContactInfos;

    move-result-object v0

    .line 1440
    .local v0, "parsed":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    iget-object v1, v0, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1441
    iget-object v1, v0, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    .line 1443
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getSipUserName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1463
    iget-object v1, p0, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-static {v1}, Lorg/abtollc/api/SipUri;->parseSipContact(Ljava/lang/String;)Lorg/abtollc/api/SipUri$ParsedSipContactInfos;

    move-result-object v0

    .line 1464
    .local v0, "parsed":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    iget-object v1, v0, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1465
    iget-object v1, v0, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    .line 1467
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1450
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 930
    iget v0, p0, Lorg/abtollc/api/SipProfile;->primaryKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    iget-wide v4, p0, Lorg/abtollc/api/SipProfile;->id:J

    long-to-int v0, v4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->wizard:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->transport:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    iget-boolean v0, p0, Lorg/abtollc/api/SipProfile;->active:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    iget v0, p0, Lorg/abtollc/api/SipProfile;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->reg_uri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 939
    iget v0, p0, Lorg/abtollc/api/SipProfile;->publish_enabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 940
    iget v0, p0, Lorg/abtollc/api/SipProfile;->reg_timeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    iget v0, p0, Lorg/abtollc/api/SipProfile;->ka_interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 942
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->force_contact:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 945
    const-string v0, "|"

    iget-object v3, p0, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 949
    :goto_1
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->realm:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->username:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 951
    iget v0, p0, Lorg/abtollc/api/SipProfile;->datatype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->data:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 953
    iget v0, p0, Lorg/abtollc/api/SipProfile;->use_srtp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    iget-boolean v0, p0, Lorg/abtollc/api/SipProfile;->allow_contact_rewrite:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    iget v0, p0, Lorg/abtollc/api/SipProfile;->contact_rewrite_method:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    iget v0, p0, Lorg/abtollc/api/SipProfile;->sip_stack:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 957
    iget v0, p0, Lorg/abtollc/api/SipProfile;->reg_use_proxy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    iget v0, p0, Lorg/abtollc/api/SipProfile;->use_zrtp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->vm_nbr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 960
    iget v0, p0, Lorg/abtollc/api/SipProfile;->reg_delay_before_refresh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 962
    iget v0, p0, Lorg/abtollc/api/SipProfile;->try_clean_registers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    iget-boolean v0, p0, Lorg/abtollc/api/SipProfile;->use_rfc5626:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 966
    iget v0, p0, Lorg/abtollc/api/SipProfile;->vid_in_auto_show:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 967
    iget v0, p0, Lorg/abtollc/api/SipProfile;->vid_out_auto_transmit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    iget v0, p0, Lorg/abtollc/api/SipProfile;->rtp_port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 971
    iget v0, p0, Lorg/abtollc/api/SipProfile;->rtp_enable_qos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    iget v0, p0, Lorg/abtollc/api/SipProfile;->rtp_qos_dscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 973
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->android_group:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 974
    iget-boolean v0, p0, Lorg/abtollc/api/SipProfile;->mwi_enabled:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    iget-boolean v0, p0, Lorg/abtollc/api/SipProfile;->allow_via_rewrite:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 976
    iget v0, p0, Lorg/abtollc/api/SipProfile;->sip_stun_use:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    iget v0, p0, Lorg/abtollc/api/SipProfile;->media_stun_use:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    iget v0, p0, Lorg/abtollc/api/SipProfile;->ice_cfg_use:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 979
    iget v0, p0, Lorg/abtollc/api/SipProfile;->ice_cfg_enable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 980
    iget v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_use:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    iget v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_enable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 985
    iget v0, p0, Lorg/abtollc/api/SipProfile;->ipv6_media_use:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 986
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->contactDetails:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lorg/abtollc/api/SipProfile;->contactDetailsUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/abtollc/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 988
    return-void

    :cond_0
    move v0, v2

    .line 935
    goto/16 :goto_0

    .line 947
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 954
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 963
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 974
    goto :goto_4

    :cond_5
    move v1, v2

    .line 975
    goto :goto_5
.end method

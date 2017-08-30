.class public Lorg/abtollc/db/DBProvider;
.super Landroid/content/ContentProvider;
.source "DBProvider.java"


# static fields
.field private static final ACCOUNTS:I = 0x1

.field private static final ACCOUNTS_ID:I = 0x2

.field private static final ACCOUNTS_STATUS:I = 0x3

.field private static final ACCOUNTS_STATUS_ID:I = 0x4

.field public static final ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

.field public static final ACCOUNT_FULL_PROJECTION_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CALLLOGS:I = 0x5

.field private static final CALLLOGS_ID:I = 0x6

.field private static final FILTERS:I = 0x7

.field private static final FILTERS_ID:I = 0x8

.field private static final MESSAGES:I = 0x9

.field private static final MESSAGES_ID:I = 0xa

.field private static final MESSAGES_THREAD_SELECTION:Ljava/lang/String;

.field private static final MESSAGE_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.abtollc.ptt_message"

.field private static final MESSAGE_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.abtollc.ptt_message"

.field private static final PTT_MESSAGES:I = 0xd

.field private static final PTT_MESSAGES_ID:I = 0xe

.field private static final PTT_MESSAGES_TABLE_NAME:Ljava/lang/String; = "ptt_messages"

.field private static final PTT_MESSAGE_ID_URI_BASE:Landroid/net/Uri;

.field private static final THIS_FILE:Ljava/lang/String; = "DBProvider"

.field private static final THREADS:I = 0xb

.field private static final THREADS_ID:I = 0xc

.field private static final UNKNOWN_URI_LOG:Ljava/lang/String; = "Unknown URI "

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOpenHelper:Lorg/abtollc/db/DBAdapter$DatabaseHelper;

.field private final profilesStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 54
    const-string v0, "content://org.abtollc.db/ptt_messages/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/abtollc/db/DBProvider;->PTT_MESSAGE_ID_URI_BASE:Landroid/net/Uri;

    .line 64
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 66
    sget-object v0, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "org.abtollc.db"

    const-string v2, "accounts"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "org.abtollc.db"

    const-string v2, "accounts/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    sget-object v0, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "org.abtollc.db"

    const-string v2, "accounts_status"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    sget-object v0, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "org.abtollc.db"

    const-string v2, "accounts_status/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    sget-object v0, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "org.abtollc.db"

    const-string v2, "calllogs"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    sget-object v0, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "org.abtollc.db"

    const-string v2, "calllogs/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    sget-object v0, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "org.abtollc.db"

    const-string v2, "outgoing_filters"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    sget-object v0, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "org.abtollc.db"

    const-string v2, "outgoing_filters/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    sget-object v0, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "org.abtollc.db"

    const-string v2, "messages"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    sget-object v0, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "org.abtollc.db"

    const-string v2, "messages/#"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    sget-object v0, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "org.abtollc.db"

    const-string v2, "thread"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sget-object v0, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "org.abtollc.db"

    const-string v2, "thread/*"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "org.abtollc.db"

    const-string v2, "ptt_messages"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "org.abtollc.db"

    const-string v2, "ptt_messages/#"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    const/16 v0, 0x34

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const-string v1, "active"

    aput-object v1, v0, v4

    const-string v1, "wizard"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "priority"

    aput-object v2, v0, v1

    const-string v1, "acc_id"

    aput-object v1, v0, v6

    const-string v1, "reg_uri"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "mwi_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "publish_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "reg_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ka_interval"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pidf_tuple_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "force_contact"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "allow_contact_rewrite"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "contact_rewrite_method"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "contact_params"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "contact_uri_params"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "transport"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "use_srtp"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "use_zrtp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "reg_dbr"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "rtp_port"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "rtp_public_addr"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "rtp_bound_addr"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "rtp_enable_qos"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "rtp_qos_dscp"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "reg_use_proxy"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "realm"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "scheme"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "username"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "datatype"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "data"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "sip_stack"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "vm_nbr"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "try_clean_reg"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "android_group"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "use_rfc5626"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "rfc5626_instance_id"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "rfc5626_reg_id"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "vid_in_auto_show"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "vid_out_auto_transmit"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "sip_stun_use"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "media_stun_use"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "ice_cfg_use"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "ice_cfg_enable"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "turn_cfg_use"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "turn_cfg_enable"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "turn_cfg_server"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "turn_cfg_user"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "turn_cfg_pwd"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "ipv6_media_use"

    aput-object v2, v0, v1

    sput-object v0, Lorg/abtollc/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    .line 127
    const/16 v0, 0x34

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Long;

    aput-object v2, v0, v1

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v4

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Lorg/abtollc/db/DBProvider;->ACCOUNT_FULL_PROJECTION_TYPES:[Ljava/lang/Class;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(sender=? AND type IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 230
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "receiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/abtollc/db/DBProvider;->MESSAGES_THREAD_SELECTION:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    .line 216
    iput-object p1, p0, Lorg/abtollc/db/DBProvider;->mContext:Landroid/content/Context;

    .line 217
    return-void
.end method

.method private broadcastAccountChange(J)V
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 750
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.abtollc.service.ACCOUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .local v0, "publishIntent":Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 753
    return-void
.end method

.method private broadcastRegistrationChange(J)V
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 761
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.abtollc.service.REGISTRATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 762
    .local v0, "publishIntent":Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 765
    return-void
.end method

.method private broadcastcallLogAdded(J)V
    .locals 3
    .param p1, "callLogId"    # J

    .prologue
    .line 739
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.abtollc.calllog.ACTION_CALL_LOG_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 740
    .local v0, "publishIntent":Landroid/content/Intent;
    const-string v1, "call_log_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 741
    iget-object v1, p0, Lorg/abtollc/db/DBProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 742
    return-void
.end method

.method private getCursor([Landroid/content/ContentValues;)Landroid/database/Cursor;
    .locals 12
    .param p1, "contentValues"    # [Landroid/content/ContentValues;

    .prologue
    const/4 v9, 0x0

    .line 707
    array-length v8, p1

    if-lez v8, :cond_2

    .line 708
    aget-object v8, p1, v9

    invoke-virtual {v8}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    .line 709
    .local v6, "valueSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v0

    .line 710
    .local v0, "colSize":I
    new-array v5, v0, [Ljava/lang/String;

    .line 712
    .local v5, "keys":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 713
    .local v4, "i":I
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 714
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v5, v4

    .line 715
    add-int/lit8 v4, v4, 0x1

    .line 716
    goto :goto_0

    .line 718
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 719
    .local v1, "cursor":Landroid/database/MatrixCursor;
    array-length v10, p1

    move v8, v9

    :goto_1
    if-ge v8, v10, :cond_3

    aget-object v2, p1, v8

    .line 720
    .local v2, "cv":Landroid/content/ContentValues;
    new-array v7, v0, [Ljava/lang/Object;

    .line 721
    .local v7, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 722
    invoke-virtual {v2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 723
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v7, v4

    .line 724
    add-int/lit8 v4, v4, 0x1

    .line 725
    goto :goto_2

    .line 726
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {v1, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 719
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 730
    .end local v0    # "colSize":I
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "i":I
    .end local v5    # "keys":[Ljava/lang/String;
    .end local v6    # "valueSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7    # "values":[Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/abtollc/db/DBProvider;->mOpenHelper:Lorg/abtollc/db/DBAdapter$DatabaseHelper;

    invoke-virtual {v14}, Lorg/abtollc/db/DBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 245
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 246
    .local v3, "count":I
    sget-object v14, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 247
    .local v7, "matched":I
    move-object/from16 v11, p1

    .line 249
    .local v11, "regUri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 251
    .local v10, "oldRegistrationsAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    packed-switch v7, :pswitch_data_0

    .line 314
    :pswitch_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown URI "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 253
    :pswitch_1
    const-string v14, "accounts"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v14, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 317
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/abtollc/db/DBProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v11, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 319
    const/4 v14, 0x2

    if-eq v7, v14, :cond_0

    const/4 v14, 0x4

    if-ne v7, v14, :cond_1

    .line 320
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 321
    .local v12, "rowId":J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-ltz v14, :cond_1

    .line 322
    const/4 v14, 0x2

    if-ne v7, v14, :cond_6

    .line 323
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/abtollc/db/DBProvider;->broadcastAccountChange(J)V

    .line 329
    .end local v12    # "rowId":J
    :cond_1
    :goto_1
    const/4 v14, 0x7

    if-eq v7, v14, :cond_2

    const/16 v14, 0x8

    if-ne v7, v14, :cond_3

    .line 330
    :cond_2
    invoke-static {}, Lorg/abtollc/models/Filter;->resetCache()V

    .line 333
    :cond_3
    return v3

    .line 256
    :pswitch_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-static {v14, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "finalWhere":Ljava/lang/String;
    const-string v14, "accounts"

    move-object/from16 v0, p3

    invoke-virtual {v4, v14, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 258
    goto :goto_0

    .line 260
    .end local v5    # "finalWhere":Ljava/lang/String;
    :pswitch_3
    const-string v14, "calllogs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v14, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 261
    goto :goto_0

    .line 263
    :pswitch_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-static {v14, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    .restart local v5    # "finalWhere":Ljava/lang/String;
    const-string v14, "calllogs"

    move-object/from16 v0, p3

    invoke-virtual {v4, v14, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 265
    goto/16 :goto_0

    .line 267
    .end local v5    # "finalWhere":Ljava/lang/String;
    :pswitch_5
    const-string v14, "outgoing_filters"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v14, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 268
    goto/16 :goto_0

    .line 270
    :pswitch_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-static {v14, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 271
    .restart local v5    # "finalWhere":Ljava/lang/String;
    const-string v14, "outgoing_filters"

    move-object/from16 v0, p3

    invoke-virtual {v4, v14, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 272
    goto/16 :goto_0

    .line 274
    .end local v5    # "finalWhere":Ljava/lang/String;
    :pswitch_7
    const-string v14, "messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v14, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 275
    goto/16 :goto_0

    .line 277
    :pswitch_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-static {v14, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 278
    .restart local v5    # "finalWhere":Ljava/lang/String;
    const-string v14, "messages"

    move-object/from16 v0, p3

    invoke-virtual {v4, v14, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 279
    goto/16 :goto_0

    .line 281
    .end local v5    # "finalWhere":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 282
    .local v6, "from":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 283
    const-string v14, "messages"

    sget-object v15, Lorg/abtollc/db/DBProvider;->MESSAGES_THREAD_SELECTION:Ljava/lang/String;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v6, v16, v17

    const/16 v17, 0x1

    aput-object v6, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 289
    :goto_2
    sget-object v11, Lorg/abtollc/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    .line 290
    goto/16 :goto_0

    .line 287
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 292
    .end local v6    # "from":Ljava/lang/String;
    :pswitch_a
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "oldRegistrationsAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .restart local v10    # "oldRegistrationsAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    monitor-enter v15

    .line 294
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 295
    .local v2, "accId":Ljava/lang/Long;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 298
    .end local v2    # "accId":Ljava/lang/Long;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 297
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->clear()V

    .line 298
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 301
    :pswitch_b
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 302
    .local v8, "id":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    monitor-enter v15

    .line 303
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    monitor-exit v15

    goto/16 :goto_0

    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v14

    .line 307
    .end local v8    # "id":J
    :pswitch_c
    const-string v14, "ptt_messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v14, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 308
    goto/16 :goto_0

    .line 310
    :pswitch_d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-static {v14, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 311
    .restart local v5    # "finalWhere":Ljava/lang/String;
    const-string v14, "ptt_messages"

    move-object/from16 v0, p3

    invoke-virtual {v4, v14, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 312
    goto/16 :goto_0

    .line 324
    .end local v5    # "finalWhere":Ljava/lang/String;
    .restart local v12    # "rowId":J
    :cond_6
    const/4 v14, 0x4

    if-ne v7, v14, :cond_1

    .line 325
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/abtollc/db/DBProvider;->broadcastRegistrationChange(J)V

    goto/16 :goto_1

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_a
        :pswitch_b
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 179
    sget-object v0, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.abtollc.account"

    .line 207
    :goto_0
    return-object v0

    .line 183
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.abtollc.account"

    goto :goto_0

    .line 185
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.abtollc.account_status"

    goto :goto_0

    .line 187
    :pswitch_3
    const-string v0, "vnd.android.cursor.item/vnd.abtollc.account_status"

    goto :goto_0

    .line 189
    :pswitch_4
    const-string v0, "vnd.android.cursor.dir/vnd.abtollc.calllog"

    goto :goto_0

    .line 191
    :pswitch_5
    const-string v0, "vnd.android.cursor.item/vnd.abtollc.calllog"

    goto :goto_0

    .line 193
    :pswitch_6
    const-string v0, "vnd.android.cursor.dir/vnd.abtollc.filter"

    goto :goto_0

    .line 195
    :pswitch_7
    const-string v0, "vnd.android.cursor.item/vnd.abtollc.filter"

    goto :goto_0

    .line 197
    :pswitch_8
    const-string v0, "vnd.android.cursor.dir/vnd.abtollc.message"

    goto :goto_0

    .line 199
    :pswitch_9
    const-string v0, "vnd.android.cursor.item/vnd.abtollc.message"

    goto :goto_0

    .line 201
    :pswitch_a
    const-string v0, "vnd.android.cursor.dir/vnd.abtollc.message"

    goto :goto_0

    .line 203
    :pswitch_b
    const-string v0, "vnd.android.cursor.item/vnd.abtollc.message"

    goto :goto_0

    .line 205
    :pswitch_c
    const-string v0, "vnd.android.cursor.dir/vnd.abtollc.ptt_message"

    goto :goto_0

    .line 207
    :pswitch_d
    const-string v0, "vnd.android.cursor.item/vnd.abtollc.ptt_message"

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 339
    sget-object v15, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 340
    .local v8, "matched":I
    const/4 v9, 0x0

    .line 341
    .local v9, "matchedTable":Ljava/lang/String;
    const/4 v2, 0x0

    .line 342
    .local v2, "baseInsertedUri":Landroid/net/Uri;
    packed-switch v8, :pswitch_data_0

    .line 388
    :goto_0
    :pswitch_0
    if-nez v9, :cond_1

    .line 389
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown URI "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 345
    :pswitch_1
    const-string v9, "accounts"

    .line 346
    sget-object v2, Lorg/abtollc/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    .line 347
    goto :goto_0

    .line 350
    :pswitch_2
    const-string v9, "calllogs"

    .line 351
    sget-object v2, Lorg/abtollc/api/SipManager;->CALLLOG_ID_URI_BASE:Landroid/net/Uri;

    .line 352
    goto :goto_0

    .line 355
    :pswitch_3
    const-string v9, "outgoing_filters"

    .line 356
    sget-object v2, Lorg/abtollc/api/SipManager;->FILTER_ID_URI_BASE:Landroid/net/Uri;

    .line 357
    goto :goto_0

    .line 360
    :pswitch_4
    const-string v9, "messages"

    .line 361
    sget-object v2, Lorg/abtollc/api/SipMessage;->MESSAGE_ID_URI_BASE:Landroid/net/Uri;

    .line 362
    goto :goto_0

    .line 364
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 365
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 366
    :try_start_0
    new-instance v10, Lorg/abtollc/api/SipProfileState;

    invoke-direct {v10}, Lorg/abtollc/api/SipProfileState;-><init>()V

    .line 367
    .local v10, "ps":Lorg/abtollc/api/SipProfileState;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 368
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 369
    .local v3, "currentValues":Landroid/content/ContentValues;
    invoke-virtual {v10, v3}, Lorg/abtollc/api/SipProfileState;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 371
    .end local v3    # "currentValues":Landroid/content/ContentValues;
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/abtollc/api/SipProfileState;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 372
    invoke-virtual {v10}, Lorg/abtollc/api/SipProfileState;->getAsContentValue()Landroid/content/ContentValues;

    move-result-object v4

    .line 373
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v15, "account_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v15, "DBProvider"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Added "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/abtollc/db/DBProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 428
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "id":J
    .end local v10    # "ps":Lorg/abtollc/api/SipProfileState;
    .end local p1    # "uri":Landroid/net/Uri;
    :goto_1
    return-object p1

    .line 376
    .restart local v6    # "id":J
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v15

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 381
    .end local v6    # "id":J
    :pswitch_6
    const-string v9, "ptt_messages"

    .line 382
    sget-object v2, Lorg/abtollc/db/DBProvider;->PTT_MESSAGE_ID_URI_BASE:Landroid/net/Uri;

    .line 383
    goto/16 :goto_0

    .line 394
    :cond_1
    if-eqz p2, :cond_a

    .line 395
    new-instance v14, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 400
    .local v14, "values":Landroid/content/ContentValues;
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/abtollc/db/DBProvider;->mOpenHelper:Lorg/abtollc/db/DBAdapter$DatabaseHelper;

    invoke-virtual {v15}, Lorg/abtollc/db/DBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 402
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v15, 0x0

    invoke-virtual {v5, v9, v15, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 405
    .local v12, "rowId":J
    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-ltz v15, :cond_b

    .line 408
    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 409
    .local v11, "retUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/abtollc/db/DBProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 411
    const/4 v15, 0x1

    if-eq v8, v15, :cond_2

    const/4 v15, 0x2

    if-ne v8, v15, :cond_3

    .line 412
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/abtollc/db/DBProvider;->broadcastAccountChange(J)V

    .line 414
    :cond_3
    const/4 v15, 0x5

    if-eq v8, v15, :cond_4

    const/4 v15, 0x6

    if-ne v8, v15, :cond_5

    .line 415
    :cond_4
    const-string v15, "calllogs"

    const-string v16, "_id IN (SELECT _id FROM calllogs ORDER BY date DESC LIMIT -1 OFFSET 500)"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 419
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/abtollc/db/DBProvider;->broadcastcallLogAdded(J)V

    .line 421
    :cond_5
    const/4 v15, 0x3

    if-eq v8, v15, :cond_6

    const/4 v15, 0x4

    if-ne v8, v15, :cond_7

    .line 422
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/abtollc/db/DBProvider;->broadcastRegistrationChange(J)V

    .line 424
    :cond_7
    const/4 v15, 0x7

    if-eq v8, v15, :cond_8

    const/16 v15, 0x8

    if-ne v8, v15, :cond_9

    .line 425
    :cond_8
    invoke-static {}, Lorg/abtollc/models/Filter;->resetCache()V

    :cond_9
    move-object/from16 p1, v11

    .line 428
    goto :goto_1

    .line 397
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "retUri":Landroid/net/Uri;
    .end local v12    # "rowId":J
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_a
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .restart local v14    # "values":Landroid/content/ContentValues;
    goto :goto_2

    .line 431
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "rowId":J
    :cond_b
    new-instance v15, Landroid/database/SQLException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to insert row into "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 222
    new-instance v0, Lorg/abtollc/db/DBAdapter$DatabaseHelper;

    iget-object v1, p0, Lorg/abtollc/db/DBProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/abtollc/db/DBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/abtollc/db/DBProvider;->mOpenHelper:Lorg/abtollc/db/DBAdapter$DatabaseHelper;

    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 25
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 440
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 441
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v9, p5

    .line 442
    .local v9, "finalSortOrder":Ljava/lang/String;
    move-object/from16 v6, p4

    .line 443
    .local v6, "finalSelectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 444
    .local v7, "finalGrouping":Ljava/lang/String;
    const/4 v8, 0x0

    .line 445
    .local v8, "finalHaving":Ljava/lang/String;
    sget-object v4, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v22

    .line 447
    .local v22, "type":I
    move-object/from16 v19, p1

    .line 449
    .local v19, "regUri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    .line 450
    .local v20, "remoteUid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    .line 451
    .local v21, "selfUid":I
    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 452
    const/4 v4, 0x1

    move/from16 v0, v22

    if-eq v0, v4, :cond_0

    const/4 v4, 0x2

    move/from16 v0, v22

    if-ne v0, v4, :cond_3

    .line 453
    :cond_0
    move-object/from16 v0, p2

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v15, p2, v4

    .line 454
    .local v15, "proj":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    const-string v24, "data"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    const-string v24, "*"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 455
    :cond_1
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Password not readable from external apps"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 453
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 463
    .end local v15    # "proj":Ljava/lang/String;
    :cond_3
    packed-switch v22, :pswitch_data_0

    .line 594
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown URI "

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 465
    :pswitch_0
    const-string v4, "accounts"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 466
    if-nez p5, :cond_4

    .line 467
    const-string v9, "priority ASC"

    .line 597
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/abtollc/db/DBProvider;->mOpenHelper:Lorg/abtollc/db/DBAdapter$DatabaseHelper;

    invoke-virtual {v4}, Lorg/abtollc/db/DBAdapter$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 599
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 602
    .local v10, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/abtollc/db/DBProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v10, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 603
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_5
    :goto_2
    return-object v10

    .line 471
    :pswitch_1
    const-string v4, "accounts"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 472
    const-string v4, "id=?"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 473
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Landroid/support/v4/database/DatabaseUtilsCompat;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 474
    goto :goto_1

    .line 476
    :pswitch_2
    const-string v4, "calllogs"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 477
    if-nez p5, :cond_4

    .line 478
    const-string v9, "date DESC"

    goto :goto_1

    .line 482
    :pswitch_3
    const-string v4, "calllogs"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 483
    const-string v4, "_id=?"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 484
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Landroid/support/v4/database/DatabaseUtilsCompat;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 485
    goto :goto_1

    .line 487
    :pswitch_4
    const-string v4, "outgoing_filters"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 488
    if-nez p5, :cond_4

    .line 489
    const-string v9, "priority asc"

    goto :goto_1

    .line 493
    :pswitch_5
    const-string v4, "outgoing_filters"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 494
    const-string v4, "_id=?"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 495
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Landroid/support/v4/database/DatabaseUtilsCompat;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 496
    goto/16 :goto_1

    .line 498
    :pswitch_6
    const-string v4, "messages"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 499
    if-nez p5, :cond_4

    .line 500
    const-string v9, "date DESC"

    goto/16 :goto_1

    .line 504
    :pswitch_7
    const-string v4, "messages"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 505
    const-string v4, "id=?"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 506
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Landroid/support/v4/database/DatabaseUtilsCompat;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 507
    goto/16 :goto_1

    .line 509
    :pswitch_8
    const-string v4, "messages"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 510
    if-nez p5, :cond_6

    .line 511
    const-string v9, "date DESC"

    .line 513
    :cond_6
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 p2, v0

    .end local p2    # "projection":[Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "ROWID AS _id"

    aput-object v5, p2, v4

    const/4 v4, 0x1

    const-string v5, "sender"

    aput-object v5, p2, v4

    const/4 v4, 0x2

    const-string v5, "full_sender"

    aput-object v5, p2, v4

    const/4 v4, 0x3

    const-string v5, "receiver"

    aput-object v5, p2, v4

    const/4 v4, 0x4

    const-string v5, "CASE WHEN sender=\'SELF\' THEN receiver WHEN sender!=\'SELF\' THEN sender END AS message_ordering"

    aput-object v5, p2, v4

    const/4 v4, 0x5

    const-string v5, "body"

    aput-object v5, p2, v4

    const/4 v4, 0x6

    const-string v5, "MAX(date) AS date"

    aput-object v5, p2, v4

    const/4 v4, 0x7

    const-string v5, "MIN(read) AS read"

    aput-object v5, p2, v4

    const/16 v4, 0x8

    const-string v5, "COUNT(date) AS counter"

    aput-object v5, p2, v4

    .line 532
    .restart local p2    # "projection":[Ljava/lang/String;
    const-string v7, "message_ordering"

    .line 533
    sget-object v19, Lorg/abtollc/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    .line 534
    goto/16 :goto_1

    .line 536
    :pswitch_9
    const-string v4, "messages"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 537
    if-nez p5, :cond_7

    .line 538
    const-string v9, "date DESC"

    .line 540
    :cond_7
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 p2, v0

    .end local p2    # "projection":[Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "ROWID AS _id"

    aput-object v5, p2, v4

    const/4 v4, 0x1

    const-string v5, "sender"

    aput-object v5, p2, v4

    const/4 v4, 0x2

    const-string v5, "receiver"

    aput-object v5, p2, v4

    const/4 v4, 0x3

    const-string v5, "body"

    aput-object v5, p2, v4

    const/4 v4, 0x4

    const-string v5, "date"

    aput-object v5, p2, v4

    const/4 v4, 0x5

    const-string v5, "mime_type"

    aput-object v5, p2, v4

    const/4 v4, 0x6

    const-string v5, "type"

    aput-object v5, p2, v4

    const/4 v4, 0x7

    const-string v5, "status"

    aput-object v5, p2, v4

    const/16 v4, 0x8

    const-string v5, "full_sender"

    aput-object v5, p2, v4

    .line 551
    .restart local p2    # "projection":[Ljava/lang/String;
    sget-object v4, Lorg/abtollc/db/DBProvider;->MESSAGES_THREAD_SELECTION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 552
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    .line 553
    .local v13, "from":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    const/4 v5, 0x1

    aput-object v13, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Landroid/support/v4/database/DatabaseUtilsCompat;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 554
    sget-object v19, Lorg/abtollc/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    .line 555
    goto/16 :goto_1

    .line 557
    .end local v13    # "from":Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    monitor-enter v5

    .line 558
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v12, v4, [Landroid/content/ContentValues;

    .line 559
    .local v12, "cvs":[Landroid/content/ContentValues;
    const/4 v14, 0x0

    .line 560
    .local v14, "i":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/ContentValues;

    .line 561
    .local v18, "ps":Landroid/content/ContentValues;
    aput-object v18, v12, v14

    .line 562
    add-int/lit8 v14, v14, 0x1

    .line 563
    goto :goto_3

    .line 564
    .end local v18    # "ps":Landroid/content/ContentValues;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/abtollc/db/DBProvider;->getCursor([Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v10

    .line 565
    .restart local v10    # "c":Landroid/database/Cursor;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    if-eqz v10, :cond_5

    .line 567
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/abtollc/db/DBProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v10, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 565
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v12    # "cvs":[Landroid/content/ContentValues;
    .end local v14    # "i":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 571
    :pswitch_b
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 572
    .local v16, "id":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    monitor-enter v5

    .line 573
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    .line 574
    .local v11, "cv":Landroid/content/ContentValues;
    if-nez v11, :cond_9

    .line 575
    const/4 v10, 0x0

    monitor-exit v5

    goto/16 :goto_2

    .line 578
    .end local v11    # "cv":Landroid/content/ContentValues;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 577
    .restart local v11    # "cv":Landroid/content/ContentValues;
    :cond_9
    const/4 v4, 0x1

    :try_start_3
    new-array v4, v4, [Landroid/content/ContentValues;

    const/16 v23, 0x0

    aput-object v11, v4, v23

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/abtollc/db/DBProvider;->getCursor([Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v10

    .line 578
    .restart local v10    # "c":Landroid/database/Cursor;
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/abtollc/db/DBProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v10, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 583
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v16    # "id":J
    :pswitch_c
    const-string v4, "ptt_messages"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 584
    if-nez p5, :cond_4

    .line 585
    const-string v9, "date DESC"

    goto/16 :goto_1

    .line 589
    :pswitch_d
    const-string v4, "ptt_messages"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 590
    const-string v4, "id=?"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 591
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Landroid/support/v4/database/DatabaseUtilsCompat;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 592
    goto/16 :goto_1

    .line 463
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/db/DBProvider;->mOpenHelper:Lorg/abtollc/db/DBAdapter$DatabaseHelper;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/abtollc/db/DBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 611
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v16, Lorg/abtollc/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 613
    .local v12, "matched":I
    packed-switch v12, :pswitch_data_0

    .line 667
    :pswitch_0
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unknown URI "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 615
    :pswitch_1
    const-string v16, "accounts"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 670
    .local v4, "count":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/db/DBProvider;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 672
    const-wide/16 v14, -0x1

    .line 673
    .local v14, "rowId":J
    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v12, v0, :cond_0

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v12, v0, :cond_1

    .line 674
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 676
    :cond_1
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-ltz v16, :cond_3

    .line 677
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v12, v0, :cond_8

    .line 679
    const/4 v8, 0x1

    .line 680
    .local v8, "doBroadcast":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 681
    const-string v16, "wizard"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 682
    const/4 v8, 0x0

    .line 687
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 688
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/abtollc/db/DBProvider;->broadcastAccountChange(J)V

    .line 694
    .end local v8    # "doBroadcast":Z
    :cond_3
    :goto_2
    const/16 v16, 0x7

    move/from16 v0, v16

    if-eq v12, v0, :cond_4

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v12, v0, :cond_5

    .line 695
    :cond_4
    invoke-static {}, Lorg/abtollc/models/Filter;->resetCache()V

    .line 698
    :cond_5
    return v4

    .line 618
    .end local v4    # "count":I
    .end local v14    # "rowId":J
    :pswitch_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "id = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 619
    .local v9, "finalWhere":Ljava/lang/String;
    const-string v16, "accounts"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v7, v0, v1, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 620
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 622
    .end local v4    # "count":I
    .end local v9    # "finalWhere":Ljava/lang/String;
    :pswitch_3
    const-string v16, "calllogs"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 623
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 625
    .end local v4    # "count":I
    :pswitch_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "_id = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 626
    .restart local v9    # "finalWhere":Ljava/lang/String;
    const-string v16, "calllogs"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v7, v0, v1, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 627
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 629
    .end local v4    # "count":I
    .end local v9    # "finalWhere":Ljava/lang/String;
    :pswitch_5
    const-string v16, "outgoing_filters"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 630
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 632
    .end local v4    # "count":I
    :pswitch_6
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "_id = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 633
    .restart local v9    # "finalWhere":Ljava/lang/String;
    const-string v16, "outgoing_filters"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v7, v0, v1, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 634
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 636
    .end local v4    # "count":I
    .end local v9    # "finalWhere":Ljava/lang/String;
    :pswitch_7
    const-string v16, "messages"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 637
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 639
    .end local v4    # "count":I
    :pswitch_8
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "id = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 640
    .restart local v9    # "finalWhere":Ljava/lang/String;
    const-string v16, "messages"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 641
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 643
    .end local v4    # "count":I
    .end local v9    # "finalWhere":Ljava/lang/String;
    :pswitch_9
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 644
    .local v10, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 645
    :try_start_0
    new-instance v13, Lorg/abtollc/api/SipProfileState;

    invoke-direct {v13}, Lorg/abtollc/api/SipProfileState;-><init>()V

    .line 646
    .local v13, "ps":Lorg/abtollc/api/SipProfileState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 648
    .local v5, "currentValues":Landroid/content/ContentValues;
    invoke-virtual {v13, v5}, Lorg/abtollc/api/SipProfileState;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 650
    .end local v5    # "currentValues":Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lorg/abtollc/api/SipProfileState;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 651
    invoke-virtual {v13}, Lorg/abtollc/api/SipProfileState;->getAsContentValue()Landroid/content/ContentValues;

    move-result-object v6

    .line 652
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v16, "account_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/db/DBProvider;->profilesStatus:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string v16, "DBProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Updated "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    monitor-exit v17

    .line 656
    const/4 v4, 0x1

    .line 657
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 655
    .end local v4    # "count":I
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v13    # "ps":Lorg/abtollc/api/SipProfileState;
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .line 660
    .end local v10    # "id":J
    :pswitch_a
    const-string v16, "ptt_messages"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 661
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 663
    .end local v4    # "count":I
    :pswitch_b
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "id = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 664
    .restart local v9    # "finalWhere":Ljava/lang/String;
    const-string v16, "ptt_messages"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 665
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 683
    .end local v9    # "finalWhere":Ljava/lang/String;
    .restart local v8    # "doBroadcast":Z
    .restart local v14    # "rowId":J
    :cond_7
    const-string v16, "priority"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 684
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 690
    .end local v8    # "doBroadcast":Z
    :cond_8
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v12, v0, :cond_3

    .line 691
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/abtollc/db/DBProvider;->broadcastRegistrationChange(J)V

    goto/16 :goto_2

    .line 613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.class public Lcom/weirdvoice/db/DBProvider;
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

.field private static final CALL_LOG_FULL_PROJECTION:[Ljava/lang/String;

.field private static final FILTERS:I = 0x7

.field private static final FILTERS_FULL_PROJECTION:[Ljava/lang/String;

.field private static final FILTERS_ID:I = 0x8

.field private static final MESSAGES:I = 0x9

.field private static final MESSAGES_FULL_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGES_ID:I = 0xa

.field private static final MESSAGES_THREAD_SELECTION:Ljava/lang/String;

.field private static final THIS_FILE:Ljava/lang/String; = "DBProvider"

.field private static final THREADS:I = 0xb

.field private static final THREADS_ID:I = 0xc

.field private static final UNKNOWN_URI_LOG:Ljava/lang/String; = "Unknown URI "

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/weirdvoice/db/DBAdapter$DatabaseHelper;

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

    .line 75
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 77
    sget-object v0, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.weirdvoice.db"

    const-string v2, "accounts"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.weirdvoice.db"

    const-string v2, "accounts/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.weirdvoice.db"

    const-string v2, "accounts_status"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.weirdvoice.db"

    const-string v2, "accounts_status/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.weirdvoice.db"

    const-string v2, "calllogs"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.weirdvoice.db"

    const-string v2, "calllogs/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.weirdvoice.db"

    const-string v2, "outgoing_filters"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.weirdvoice.db"

    const-string v2, "outgoing_filters/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.weirdvoice.db"

    const-string v2, "messages"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    sget-object v0, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.weirdvoice.db"

    const-string v2, "messages/#"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v0, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.weirdvoice.db"

    const-string v2, "thread"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.weirdvoice.db"

    const-string v2, "thread/*"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    const/16 v0, 0x3a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 93
    const-string v2, "id"

    aput-object v2, v0, v1

    .line 95
    const-string v1, "active"

    aput-object v1, v0, v4

    const-string v1, "wizard"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    .line 97
    const-string v2, "wizard_data"

    aput-object v2, v0, v1

    .line 100
    const-string v1, "priority"

    aput-object v1, v0, v6

    const-string v1, "acc_id"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "reg_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 101
    const-string v2, "mwi_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "publish_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "reg_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ka_interval"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 102
    const-string v2, "pidf_tuple_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 103
    const-string v2, "force_contact"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "allow_contact_rewrite"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "contact_rewrite_method"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 104
    const-string v2, "allow_via_rewrite"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "allow_sdp_nat_rewrite"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 105
    const-string v2, "contact_params"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "contact_uri_params"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 106
    const-string v2, "transport"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "default_uri_scheme"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "use_srtp"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "use_zrtp"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 107
    const-string v2, "reg_dbr"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 110
    const-string v2, "rtp_port"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "rtp_public_addr"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "rtp_bound_addr"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 111
    const-string v2, "rtp_enable_qos"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "rtp_qos_dscp"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 114
    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "reg_use_proxy"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 118
    const-string v2, "realm"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "scheme"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "username"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "datatype"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 119
    const-string v2, "data"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 121
    const-string v2, "initial_auth"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "auth_algo"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 124
    const-string v2, "sip_stack"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "vm_nbr"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 125
    const-string v2, "try_clean_reg"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "android_group"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 128
    const-string v2, "use_rfc5626"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "rfc5626_instance_id"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "rfc5626_reg_id"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 131
    const-string v2, "vid_in_auto_show"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "vid_out_auto_transmit"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 134
    const-string v2, "sip_stun_use"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "media_stun_use"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 135
    const-string v2, "ice_cfg_use"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "ice_cfg_enable"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 136
    const-string v2, "turn_cfg_use"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "turn_cfg_enable"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "turn_cfg_server"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "turn_cfg_user"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "turn_cfg_pwd"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 138
    const-string v2, "ipv6_media_use"

    aput-object v2, v0, v1

    .line 92
    sput-object v0, Lcom/weirdvoice/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    .line 140
    const/16 v0, 0x3a

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 141
    const-class v2, Ljava/lang/Long;

    aput-object v2, v0, v1

    .line 143
    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v4

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    .line 145
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 147
    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 148
    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 149
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 150
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 151
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 152
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 153
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 154
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 158
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 159
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 162
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 165
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 166
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 168
    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 171
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 172
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 175
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 178
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 181
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 182
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 183
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 186
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    .line 140
    sput-object v0, Lcom/weirdvoice/db/DBProvider;->ACCOUNT_FULL_PROJECTION_TYPES:[Ljava/lang/Class;

    .line 189
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 190
    const-string v2, "_id"

    aput-object v2, v0, v1

    .line 191
    const-string v1, "name"

    aput-object v1, v0, v4

    .line 192
    const-string v1, "numberlabel"

    aput-object v1, v0, v5

    .line 193
    const-string v1, "numbertype"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    .line 194
    const-string v2, "date"

    aput-object v2, v0, v1

    .line 195
    const-string v1, "duration"

    aput-object v1, v0, v6

    .line 196
    const-string v1, "new"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    .line 197
    const-string v2, "number"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 198
    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 199
    const-string v2, "account_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 200
    const-string v2, "status_code"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 201
    const-string v2, "status_text"

    aput-object v2, v0, v1

    .line 189
    sput-object v0, Lcom/weirdvoice/db/DBProvider;->CALL_LOG_FULL_PROJECTION:[Ljava/lang/String;

    .line 204
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 205
    const-string v2, "id"

    aput-object v2, v0, v1

    .line 206
    const-string v1, "sender"

    aput-object v1, v0, v4

    .line 207
    const-string v1, "receiver"

    aput-object v1, v0, v5

    .line 208
    const-string v1, "contact"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    .line 209
    const-string v2, "body"

    aput-object v2, v0, v1

    .line 210
    const-string v1, "mime_type"

    aput-object v1, v0, v6

    .line 211
    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    .line 212
    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 213
    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 214
    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 215
    const-string v2, "full_sender"

    aput-object v2, v0, v1

    .line 204
    sput-object v0, Lcom/weirdvoice/db/DBProvider;->MESSAGES_FULL_PROJECTION:[Ljava/lang/String;

    .line 218
    new-array v0, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 219
    const-string v2, "_id"

    aput-object v2, v0, v1

    .line 220
    const-string v1, "priority"

    aput-object v1, v0, v4

    .line 221
    const-string v1, "account"

    aput-object v1, v0, v5

    .line 222
    const-string v1, "matches"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    .line 223
    const-string v2, "replace"

    aput-object v2, v0, v1

    .line 224
    const-string v1, "action"

    aput-object v1, v0, v6

    .line 218
    sput-object v0, Lcom/weirdvoice/db/DBProvider;->FILTERS_FULL_PROJECTION:[Ljava/lang/String;

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(sender=? AND type IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 276
    const-string v1, ") )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 278
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "receiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 281
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 283
    const-string v1, ") )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/db/DBProvider;->MESSAGES_THREAD_SELECTION:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    .line 56
    return-void
.end method

.method private broadcastAccountChange(J)V
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 773
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.weirdvoice.service.ACCOUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    .local v0, "publishIntent":Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 775
    invoke-virtual {p0}, Lcom/weirdvoice/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 776
    invoke-virtual {p0}, Lcom/weirdvoice/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/weirdvoice/utils/backup/BackupWrapper;->getInstance(Landroid/content/Context;)Lcom/weirdvoice/utils/backup/BackupWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/weirdvoice/utils/backup/BackupWrapper;->dataChanged()V

    .line 777
    return-void
.end method

.method private broadcastAccountDelete(J)V
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 784
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.weirdvoice.service.ACCOUNT_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 785
    .local v0, "publishIntent":Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 786
    invoke-virtual {p0}, Lcom/weirdvoice/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 787
    invoke-virtual {p0}, Lcom/weirdvoice/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/weirdvoice/utils/backup/BackupWrapper;->getInstance(Landroid/content/Context;)Lcom/weirdvoice/utils/backup/BackupWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/weirdvoice/utils/backup/BackupWrapper;->dataChanged()V

    .line 788
    return-void
.end method

.method private broadcastRegistrationChange(J)V
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 795
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.weirdvoice.service.REGISTRATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 796
    .local v0, "publishIntent":Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 797
    invoke-virtual {p0}, Lcom/weirdvoice/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.USE_SIP"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method private static checkProjection(Ljava/util/List;[Ljava/lang/String;)V
    .locals 5
    .param p1, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 850
    .local p0, "possibles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 852
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 859
    :cond_0
    return-void

    .line 852
    :cond_1
    aget-object v0, p1, v1

    .line 853
    .local v0, "proj":Ljava/lang/String;
    const-string v3, " AS [a-zA-Z0-9_]+$"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 855
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "You are asking wrong values "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 852
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static checkSelection(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p1, "selection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 833
    .local p0, "possibles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 834
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "cleanSelection":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 838
    const-string v2, " in \\([0-9 ,]+\\)"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 839
    const-string v2, " and "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 840
    const-string v2, " or "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    const-string v2, "[0-9]+"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 842
    const-string v2, "[=? ]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 844
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "You are selecting wrong thing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 835
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 836
    .local v1, "field":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 847
    .end local v0    # "cleanSelection":Ljava/lang/String;
    .end local v1    # "field":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getCursor([Landroid/content/ContentValues;)Landroid/database/Cursor;
    .locals 12
    .param p1, "contentValues"    # [Landroid/content/ContentValues;

    .prologue
    const/4 v9, 0x0

    .line 742
    array-length v8, p1

    if-lez v8, :cond_3

    .line 743
    aget-object v8, p1, v9

    invoke-virtual {v8}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    .line 744
    .local v6, "valueSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v0

    .line 745
    .local v0, "colSize":I
    new-array v5, v0, [Ljava/lang/String;

    .line 747
    .local v5, "keys":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 748
    .local v4, "i":I
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 753
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 754
    .local v1, "cursor":Landroid/database/MatrixCursor;
    array-length v10, p1

    move v8, v9

    :goto_1
    if-lt v8, v10, :cond_1

    .line 765
    .end local v0    # "colSize":I
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v4    # "i":I
    .end local v5    # "keys":[Ljava/lang/String;
    .end local v6    # "valueSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_2
    return-object v1

    .line 748
    .restart local v0    # "colSize":I
    .restart local v4    # "i":I
    .restart local v5    # "keys":[Ljava/lang/String;
    .restart local v6    # "valueSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 749
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v5, v4

    .line 750
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 754
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "cursor":Landroid/database/MatrixCursor;
    :cond_1
    aget-object v2, p1, v8

    .line 755
    .local v2, "cv":Landroid/content/ContentValues;
    new-array v7, v0, [Ljava/lang/Object;

    .line 756
    .local v7, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 757
    invoke-virtual {v2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 761
    invoke-virtual {v1, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 754
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 757
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 758
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v7, v4

    .line 759
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 765
    .end local v0    # "colSize":I
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "i":I
    .end local v5    # "keys":[Ljava/lang/String;
    .end local v6    # "valueSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7    # "values":[Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private static getPossibleFieldsForType(I)Ljava/util/List;
    .locals 2
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, "possibles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    packed-switch p0, :pswitch_data_0

    .line 829
    :goto_0
    return-object v0

    .line 806
    :pswitch_0
    sget-object v1, Lcom/weirdvoice/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 807
    goto :goto_0

    .line 810
    :pswitch_1
    sget-object v1, Lcom/weirdvoice/db/DBProvider;->CALL_LOG_FULL_PROJECTION:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 811
    goto :goto_0

    .line 814
    :pswitch_2
    sget-object v1, Lcom/weirdvoice/db/DBProvider;->FILTERS_FULL_PROJECTION:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 815
    goto :goto_0

    .line 818
    :pswitch_3
    sget-object v1, Lcom/weirdvoice/db/DBProvider;->MESSAGES_FULL_PROJECTION:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 819
    goto :goto_0

    .line 822
    :pswitch_4
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "possibles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 823
    .restart local v0    # "possibles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 826
    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "possibles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "possibles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 803
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 288
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/db/DBProvider;->mOpenHelper:Lcom/weirdvoice/db/DBAdapter$DatabaseHelper;

    invoke-virtual {v15}, Lcom/weirdvoice/db/DBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 290
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .line 291
    .local v5, "count":I
    sget-object v15, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 292
    .local v9, "matched":I
    move-object/from16 v14, p1

    .line 294
    .local v14, "regUri":Landroid/net/Uri;
    invoke-static {v9}, Lcom/weirdvoice/db/DBProvider;->getPossibleFieldsForType(I)Ljava/util/List;

    move-result-object v13

    .line 295
    .local v13, "possibles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/weirdvoice/db/DBProvider;->checkSelection(Ljava/util/List;Ljava/lang/String;)V

    .line 297
    const/4 v12, 0x0

    .line 299
    .local v12, "oldRegistrationsAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    packed-switch v9, :pswitch_data_0

    .line 355
    :pswitch_0
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Unknown URI "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 301
    :pswitch_1
    const-string v15, "accounts"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v6, v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 358
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v15, v14, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 360
    const/4 v15, 0x2

    if-eq v9, v15, :cond_0

    const/4 v15, 0x4

    if-ne v9, v15, :cond_1

    .line 361
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 362
    .local v16, "rowId":J
    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-ltz v15, :cond_1

    .line 363
    const/4 v15, 0x2

    if-ne v9, v15, :cond_8

    .line 364
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/db/DBProvider;->broadcastAccountDelete(J)V

    .line 370
    .end local v16    # "rowId":J
    :cond_1
    :goto_1
    const/4 v15, 0x7

    if-eq v9, v15, :cond_2

    const/16 v15, 0x8

    if-ne v9, v15, :cond_3

    .line 371
    :cond_2
    invoke-static {}, Lcom/weirdvoice/models/Filter;->resetCache()V

    .line 373
    :cond_3
    const/4 v15, 0x3

    if-ne v9, v15, :cond_5

    if-eqz v12, :cond_5

    .line 374
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_9

    .line 381
    :cond_5
    return v5

    .line 304
    :pswitch_2
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v18, "id = "

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-static {v15, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, "finalWhere":Ljava/lang/String;
    const-string v15, "accounts"

    move-object/from16 v0, p3

    invoke-virtual {v6, v15, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 306
    goto :goto_0

    .line 308
    .end local v7    # "finalWhere":Ljava/lang/String;
    :pswitch_3
    const-string v15, "calllogs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v6, v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 309
    goto :goto_0

    .line 311
    :pswitch_4
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v18, "_id = "

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-static {v15, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 312
    .restart local v7    # "finalWhere":Ljava/lang/String;
    const-string v15, "calllogs"

    move-object/from16 v0, p3

    invoke-virtual {v6, v15, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 313
    goto/16 :goto_0

    .line 315
    .end local v7    # "finalWhere":Ljava/lang/String;
    :pswitch_5
    const-string v15, "outgoing_filters"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v6, v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 316
    goto/16 :goto_0

    .line 318
    :pswitch_6
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v18, "_id = "

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-static {v15, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 319
    .restart local v7    # "finalWhere":Ljava/lang/String;
    const-string v15, "outgoing_filters"

    move-object/from16 v0, p3

    invoke-virtual {v6, v15, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 320
    goto/16 :goto_0

    .line 322
    .end local v7    # "finalWhere":Ljava/lang/String;
    :pswitch_7
    const-string v15, "messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v6, v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 323
    goto/16 :goto_0

    .line 325
    :pswitch_8
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v18, "id = "

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-static {v15, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 326
    .restart local v7    # "finalWhere":Ljava/lang/String;
    const-string v15, "messages"

    move-object/from16 v0, p3

    invoke-virtual {v6, v15, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 327
    goto/16 :goto_0

    .line 329
    .end local v7    # "finalWhere":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    .line 330
    .local v8, "from":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 331
    const-string v15, "messages"

    sget-object v18, Lcom/weirdvoice/db/DBProvider;->MESSAGES_THREAD_SELECTION:Ljava/lang/String;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 332
    aput-object v8, v19, v20

    const/16 v20, 0x1

    aput-object v8, v19, v20

    .line 331
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 337
    :goto_3
    sget-object v14, Lcom/weirdvoice/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    .line 338
    goto/16 :goto_0

    .line 335
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 340
    .end local v8    # "from":Ljava/lang/String;
    :pswitch_a
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "oldRegistrationsAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .restart local v12    # "oldRegistrationsAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 342
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_7

    .line 345
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->clear()V

    .line 341
    monitor-exit v18

    goto/16 :goto_0

    :catchall_0
    move-exception v15

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 342
    :cond_7
    :try_start_1
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 343
    .local v4, "accId":Ljava/lang/Long;
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 349
    .end local v4    # "accId":Ljava/lang/Long;
    :pswitch_b
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 350
    .local v10, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 351
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    monitor-exit v18

    goto/16 :goto_0

    :catchall_1
    move-exception v15

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v15

    .line 365
    .end local v10    # "id":J
    .restart local v16    # "rowId":J
    :cond_8
    const/4 v15, 0x4

    if-ne v9, v15, :cond_1

    .line 366
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/db/DBProvider;->broadcastRegistrationChange(J)V

    goto/16 :goto_1

    .line 374
    .end local v16    # "rowId":J
    :cond_9
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 375
    .restart local v4    # "accId":Ljava/lang/Long;
    if-eqz v4, :cond_4

    .line 376
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/db/DBProvider;->broadcastRegistrationChange(J)V

    goto/16 :goto_2

    .line 299
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
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 235
    sget-object v0, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.csipsimple.account"

    .line 259
    :goto_0
    return-object v0

    .line 239
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.csipsimple.account"

    goto :goto_0

    .line 241
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.csipsimple.account_status"

    goto :goto_0

    .line 243
    :pswitch_3
    const-string v0, "vnd.android.cursor.item/vnd.csipsimple.account_status"

    goto :goto_0

    .line 245
    :pswitch_4
    const-string v0, "vnd.android.cursor.dir/vnd.csipsimple.calllog"

    goto :goto_0

    .line 247
    :pswitch_5
    const-string v0, "vnd.android.cursor.item/vnd.csipsimple.calllog"

    goto :goto_0

    .line 249
    :pswitch_6
    const-string v0, "vnd.android.cursor.dir/vnd.csipsimple.filter"

    goto :goto_0

    .line 251
    :pswitch_7
    const-string v0, "vnd.android.cursor.item/vnd.csipsimple.filter"

    goto :goto_0

    .line 253
    :pswitch_8
    const-string v0, "vnd.android.cursor.dir/vnd.csipsimple.message"

    goto :goto_0

    .line 255
    :pswitch_9
    const-string v0, "vnd.android.cursor.item/vnd.csipsimple.message"

    goto :goto_0

    .line 257
    :pswitch_a
    const-string v0, "vnd.android.cursor.dir/vnd.csipsimple.message"

    goto :goto_0

    .line 259
    :pswitch_b
    const-string v0, "vnd.android.cursor.item/vnd.csipsimple.message"

    goto :goto_0

    .line 235
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
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 387
    sget-object v15, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 388
    .local v8, "matched":I
    const/4 v9, 0x0

    .line 389
    .local v9, "matchedTable":Ljava/lang/String;
    const/4 v2, 0x0

    .line 391
    .local v2, "baseInsertedUri":Landroid/net/Uri;
    packed-switch v8, :pswitch_data_0

    .line 432
    :goto_0
    :pswitch_0
    if-nez v9, :cond_1

    .line 433
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Unknown URI "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 394
    :pswitch_1
    const-string v9, "accounts"

    .line 395
    sget-object v2, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    .line 396
    goto :goto_0

    .line 399
    :pswitch_2
    const-string v9, "calllogs"

    .line 400
    sget-object v2, Lcom/weirdvoice/api/SipManager;->CALLLOG_ID_URI_BASE:Landroid/net/Uri;

    .line 401
    goto :goto_0

    .line 404
    :pswitch_3
    const-string v9, "outgoing_filters"

    .line 405
    sget-object v2, Lcom/weirdvoice/api/SipManager;->FILTER_ID_URI_BASE:Landroid/net/Uri;

    .line 406
    goto :goto_0

    .line 409
    :pswitch_4
    const-string v9, "messages"

    .line 410
    sget-object v2, Lcom/weirdvoice/api/SipMessage;->MESSAGE_ID_URI_BASE:Landroid/net/Uri;

    .line 411
    goto :goto_0

    .line 413
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 414
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 415
    :try_start_0
    new-instance v10, Lcom/weirdvoice/api/SipProfileState;

    invoke-direct {v10}, Lcom/weirdvoice/api/SipProfileState;-><init>()V

    .line 416
    .local v10, "ps":Lcom/weirdvoice/api/SipProfileState;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 417
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 418
    .local v3, "currentValues":Landroid/content/ContentValues;
    invoke-virtual {v10, v3}, Lcom/weirdvoice/api/SipProfileState;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 420
    .end local v3    # "currentValues":Landroid/content/ContentValues;
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/weirdvoice/api/SipProfileState;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 421
    invoke-virtual {v10}, Lcom/weirdvoice/api/SipProfileState;->getAsContentValue()Landroid/content/ContentValues;

    move-result-object v4

    .line 422
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v15, "account_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v15, "DBProvider"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Added "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 470
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "id":J
    .end local v10    # "ps":Lcom/weirdvoice/api/SipProfileState;
    .end local p1    # "uri":Landroid/net/Uri;
    :goto_1
    return-object p1

    .line 414
    .restart local v6    # "id":J
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v15

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 438
    .end local v6    # "id":J
    :cond_1
    if-eqz p2, :cond_a

    .line 439
    new-instance v14, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 444
    .local v14, "values":Landroid/content/ContentValues;
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/db/DBProvider;->mOpenHelper:Lcom/weirdvoice/db/DBAdapter$DatabaseHelper;

    invoke-virtual {v15}, Lcom/weirdvoice/db/DBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 446
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v15, 0x0

    invoke-virtual {v5, v9, v15, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 449
    .local v12, "rowId":J
    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-ltz v15, :cond_b

    .line 452
    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 453
    .local v11, "retUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 455
    const/4 v15, 0x1

    if-eq v8, v15, :cond_2

    const/4 v15, 0x2

    if-ne v8, v15, :cond_3

    .line 456
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/weirdvoice/db/DBProvider;->broadcastAccountChange(J)V

    .line 458
    :cond_3
    const/4 v15, 0x5

    if-eq v8, v15, :cond_4

    const/4 v15, 0x6

    if-ne v8, v15, :cond_5

    .line 459
    :cond_4
    const-string v15, "calllogs"

    const-string v16, "_id IN (SELECT _id FROM calllogs ORDER BY date DESC LIMIT -1 OFFSET 500)"

    .line 461
    const/16 v17, 0x0

    .line 459
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 463
    :cond_5
    const/4 v15, 0x3

    if-eq v8, v15, :cond_6

    const/4 v15, 0x4

    if-ne v8, v15, :cond_7

    .line 464
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/weirdvoice/db/DBProvider;->broadcastRegistrationChange(J)V

    .line 466
    :cond_7
    const/4 v15, 0x7

    if-eq v8, v15, :cond_8

    const/16 v15, 0x8

    if-ne v8, v15, :cond_9

    .line 467
    :cond_8
    invoke-static {}, Lcom/weirdvoice/models/Filter;->resetCache()V

    :cond_9
    move-object/from16 p1, v11

    .line 470
    goto :goto_1

    .line 441
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "retUri":Landroid/net/Uri;
    .end local v12    # "rowId":J
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_a
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .restart local v14    # "values":Landroid/content/ContentValues;
    goto :goto_2

    .line 473
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "rowId":J
    :cond_b
    new-instance v15, Landroid/database/SQLException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Failed to insert row into "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 391
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
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 267
    new-instance v0, Lcom/weirdvoice/db/DBAdapter$DatabaseHelper;

    invoke-virtual {p0}, Lcom/weirdvoice/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/weirdvoice/db/DBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weirdvoice/db/DBProvider;->mOpenHelper:Lcom/weirdvoice/db/DBAdapter$DatabaseHelper;

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 26
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 482
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 483
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v9, p5

    .line 484
    .local v9, "finalSortOrder":Ljava/lang/String;
    move-object/from16 v6, p4

    .line 485
    .local v6, "finalSelectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 486
    .local v7, "finalGrouping":Ljava/lang/String;
    const/4 v8, 0x0

    .line 487
    .local v8, "finalHaving":Ljava/lang/String;
    sget-object v4, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v23

    .line 489
    .local v23, "type":I
    move-object/from16 v20, p1

    .line 492
    .local v20, "regUri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    .line 493
    .local v21, "remoteUid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v22

    .line 494
    .local v22, "selfUid":I
    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 495
    const/4 v4, 0x1

    move/from16 v0, v23

    if-eq v0, v4, :cond_0

    const/4 v4, 0x2

    move/from16 v0, v23

    if-ne v0, v4, :cond_1

    .line 496
    :cond_0
    move-object/from16 v0, p2

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_2

    .line 504
    :cond_1
    invoke-static/range {v23 .. v23}, Lcom/weirdvoice/db/DBProvider;->getPossibleFieldsForType(I)Ljava/util/List;

    move-result-object v15

    .line 505
    .local v15, "possibles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v15, :cond_5

    .line 506
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v24, "You are asking wrong values "

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 496
    .end local v15    # "possibles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    aget-object v18, p2, v4

    .line 497
    .local v18, "proj":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    const-string v25, "data"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    const-string v25, "*"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 498
    :cond_3
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Password not readable from external apps"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 496
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 508
    .end local v18    # "proj":Ljava/lang/String;
    .restart local v15    # "possibles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Lcom/weirdvoice/db/DBProvider;->checkProjection(Ljava/util/List;[Ljava/lang/String;)V

    .line 509
    move-object/from16 v0, p3

    invoke-static {v15, v0}, Lcom/weirdvoice/db/DBProvider;->checkSelection(Ljava/util/List;Ljava/lang/String;)V

    .line 513
    packed-switch v23, :pswitch_data_0

    .line 632
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v24, "Unknown URI "

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 515
    :pswitch_0
    const-string v4, "accounts"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 516
    if-nez p5, :cond_6

    .line 517
    const-string v9, "priority ASC"

    .line 635
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/db/DBProvider;->mOpenHelper:Lcom/weirdvoice/db/DBAdapter$DatabaseHelper;

    invoke-virtual {v4}, Lcom/weirdvoice/db/DBAdapter$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 637
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 640
    .local v10, "c":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v10, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 641
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_7
    :goto_2
    return-object v10

    .line 521
    :pswitch_1
    const-string v4, "accounts"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 522
    const-string v4, "id=?"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 523
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Landroid/support/v4/database/DatabaseUtilsCompat;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 524
    goto :goto_1

    .line 526
    :pswitch_2
    const-string v4, "calllogs"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 527
    if-nez p5, :cond_6

    .line 528
    const-string v9, "date DESC"

    .line 530
    goto :goto_1

    .line 532
    :pswitch_3
    const-string v4, "calllogs"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 533
    const-string v4, "_id=?"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 534
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Landroid/support/v4/database/DatabaseUtilsCompat;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 535
    goto :goto_1

    .line 537
    :pswitch_4
    const-string v4, "outgoing_filters"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 538
    if-nez p5, :cond_6

    .line 539
    const-string v9, "priority asc"

    .line 541
    goto :goto_1

    .line 543
    :pswitch_5
    const-string v4, "outgoing_filters"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 544
    const-string v4, "_id=?"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 545
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Landroid/support/v4/database/DatabaseUtilsCompat;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 546
    goto/16 :goto_1

    .line 548
    :pswitch_6
    const-string v4, "messages"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 549
    if-nez p5, :cond_6

    .line 550
    const-string v9, "date DESC"

    .line 552
    goto/16 :goto_1

    .line 554
    :pswitch_7
    const-string v4, "messages"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 555
    const-string v4, "id=?"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 556
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Landroid/support/v4/database/DatabaseUtilsCompat;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 557
    goto/16 :goto_1

    .line 559
    :pswitch_8
    const-string v4, "messages"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 560
    if-nez p5, :cond_8

    .line 561
    const-string v9, "date DESC"

    .line 563
    :cond_8
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 p2, v0

    .end local p2    # "projection":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 564
    const-string v5, "ROWID AS _id"

    aput-object v5, p2, v4

    const/4 v4, 0x1

    .line 565
    const-string v5, "sender"

    aput-object v5, p2, v4

    const/4 v4, 0x2

    .line 566
    const-string v5, "full_sender"

    aput-object v5, p2, v4

    const/4 v4, 0x3

    .line 567
    const-string v5, "receiver"

    aput-object v5, p2, v4

    const/4 v4, 0x4

    .line 568
    const-string v5, "CASE WHEN sender=\'SELF\' THEN receiver WHEN sender!=\'SELF\' THEN sender END AS message_ordering"

    aput-object v5, p2, v4

    const/4 v4, 0x5

    .line 574
    const-string v5, "body"

    aput-object v5, p2, v4

    const/4 v4, 0x6

    .line 575
    const-string v5, "MAX(date) AS date"

    aput-object v5, p2, v4

    const/4 v4, 0x7

    .line 576
    const-string v5, "MIN(read) AS read"

    aput-object v5, p2, v4

    const/16 v4, 0x8

    .line 578
    const-string v5, "COUNT(date) AS counter"

    aput-object v5, p2, v4

    .line 582
    .restart local p2    # "projection":[Ljava/lang/String;
    const-string v7, "message_ordering"

    .line 583
    sget-object v20, Lcom/weirdvoice/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    .line 584
    goto/16 :goto_1

    .line 586
    :pswitch_9
    const-string v4, "messages"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 587
    if-nez p5, :cond_9

    .line 588
    const-string v9, "date DESC"

    .line 590
    :cond_9
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 p2, v0

    .end local p2    # "projection":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 591
    const-string v5, "ROWID AS _id"

    aput-object v5, p2, v4

    const/4 v4, 0x1

    .line 592
    const-string v5, "sender"

    aput-object v5, p2, v4

    const/4 v4, 0x2

    .line 593
    const-string v5, "receiver"

    aput-object v5, p2, v4

    const/4 v4, 0x3

    .line 594
    const-string v5, "body"

    aput-object v5, p2, v4

    const/4 v4, 0x4

    .line 595
    const-string v5, "date"

    aput-object v5, p2, v4

    const/4 v4, 0x5

    .line 596
    const-string v5, "mime_type"

    aput-object v5, p2, v4

    const/4 v4, 0x6

    .line 597
    const-string v5, "type"

    aput-object v5, p2, v4

    const/4 v4, 0x7

    .line 598
    const-string v5, "status"

    aput-object v5, p2, v4

    const/16 v4, 0x8

    .line 599
    const-string v5, "full_sender"

    aput-object v5, p2, v4

    .line 601
    .restart local p2    # "projection":[Ljava/lang/String;
    sget-object v4, Lcom/weirdvoice/db/DBProvider;->MESSAGES_THREAD_SELECTION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 602
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    .line 603
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

    .line 604
    sget-object v20, Lcom/weirdvoice/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    .line 605
    goto/16 :goto_1

    .line 607
    .end local v13    # "from":Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    monitor-enter v5

    .line 608
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v12, v4, [Landroid/content/ContentValues;

    .line 609
    .local v12, "cvs":[Landroid/content/ContentValues;
    const/4 v14, 0x0

    .line 610
    .local v14, "i":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_a

    .line 614
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/weirdvoice/db/DBProvider;->getCursor([Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v10

    .line 607
    .restart local v10    # "c":Landroid/database/Cursor;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    if-eqz v10, :cond_7

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v10, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 610
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_a
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ContentValues;

    .line 611
    .local v19, "ps":Landroid/content/ContentValues;
    aput-object v19, v12, v14

    .line 612
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 607
    .end local v12    # "cvs":[Landroid/content/ContentValues;
    .end local v14    # "i":I
    .end local v19    # "ps":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 621
    :pswitch_b
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 622
    .local v16, "id":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    monitor-enter v5

    .line 623
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    .line 624
    .local v11, "cv":Landroid/content/ContentValues;
    if-nez v11, :cond_b

    .line 625
    monitor-exit v5

    const/4 v10, 0x0

    goto/16 :goto_2

    .line 627
    :cond_b
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/ContentValues;

    const/16 v24, 0x0

    aput-object v11, v4, v24

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/weirdvoice/db/DBProvider;->getCursor([Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v10

    .line 622
    .restart local v10    # "c":Landroid/database/Cursor;
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v10, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 622
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "cv":Landroid/content/ContentValues;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 513
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
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 646
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/db/DBProvider;->mOpenHelper:Lcom/weirdvoice/db/DBAdapter$DatabaseHelper;

    invoke-virtual {v15}, Lcom/weirdvoice/db/DBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 649
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v15, Lcom/weirdvoice/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 651
    .local v12, "matched":I
    invoke-static {v12}, Lcom/weirdvoice/db/DBProvider;->getPossibleFieldsForType(I)Ljava/util/List;

    move-result-object v13

    .line 652
    .local v13, "possibles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    invoke-static {v13, v0}, Lcom/weirdvoice/db/DBProvider;->checkSelection(Ljava/util/List;Ljava/lang/String;)V

    .line 654
    packed-switch v12, :pswitch_data_0

    .line 700
    :pswitch_0
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Unknown URI "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 656
    :pswitch_1
    const-string v15, "accounts"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v7, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 703
    .local v4, "count":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 705
    const-wide/16 v16, -0x1

    .line 706
    .local v16, "rowId":J
    const/4 v15, 0x2

    if-eq v12, v15, :cond_0

    const/4 v15, 0x4

    if-ne v12, v15, :cond_1

    .line 707
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 709
    :cond_1
    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-ltz v15, :cond_3

    .line 710
    const/4 v15, 0x2

    if-ne v12, v15, :cond_8

    .line 712
    const/4 v8, 0x1

    .line 713
    .local v8, "doBroadcast":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v15

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_2

    .line 714
    const-string v15, "wizard"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 715
    const/4 v8, 0x0

    .line 720
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 721
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/db/DBProvider;->broadcastAccountChange(J)V

    .line 727
    .end local v8    # "doBroadcast":Z
    :cond_3
    :goto_2
    const/4 v15, 0x7

    if-eq v12, v15, :cond_4

    const/16 v15, 0x8

    if-ne v12, v15, :cond_5

    .line 728
    :cond_4
    invoke-static {}, Lcom/weirdvoice/models/Filter;->resetCache()V

    .line 731
    :cond_5
    return v4

    .line 659
    .end local v4    # "count":I
    .end local v16    # "rowId":J
    :pswitch_2
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v18, "id = "

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-static {v15, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 660
    .local v9, "finalWhere":Ljava/lang/String;
    const-string v15, "accounts"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v7, v15, v0, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 661
    .restart local v4    # "count":I
    goto :goto_0

    .line 663
    .end local v4    # "count":I
    .end local v9    # "finalWhere":Ljava/lang/String;
    :pswitch_3
    const-string v15, "calllogs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v7, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 664
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 666
    .end local v4    # "count":I
    :pswitch_4
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v18, "_id = "

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-static {v15, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 667
    .restart local v9    # "finalWhere":Ljava/lang/String;
    const-string v15, "calllogs"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v7, v15, v0, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 668
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 670
    .end local v4    # "count":I
    .end local v9    # "finalWhere":Ljava/lang/String;
    :pswitch_5
    const-string v15, "outgoing_filters"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v7, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 671
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 673
    .end local v4    # "count":I
    :pswitch_6
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v18, "_id = "

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-static {v15, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 674
    .restart local v9    # "finalWhere":Ljava/lang/String;
    const-string v15, "outgoing_filters"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v7, v15, v0, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 675
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 677
    .end local v4    # "count":I
    .end local v9    # "finalWhere":Ljava/lang/String;
    :pswitch_7
    const-string v15, "messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v7, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 678
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 680
    .end local v4    # "count":I
    :pswitch_8
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v18, "id = "

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-static {v15, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 681
    .restart local v9    # "finalWhere":Ljava/lang/String;
    const-string v15, "messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v7, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 682
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 684
    .end local v4    # "count":I
    .end local v9    # "finalWhere":Ljava/lang/String;
    :pswitch_9
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 685
    .local v10, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 686
    :try_start_0
    new-instance v14, Lcom/weirdvoice/api/SipProfileState;

    invoke-direct {v14}, Lcom/weirdvoice/api/SipProfileState;-><init>()V

    .line 687
    .local v14, "ps":Lcom/weirdvoice/api/SipProfileState;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 688
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 689
    .local v5, "currentValues":Landroid/content/ContentValues;
    invoke-virtual {v14, v5}, Lcom/weirdvoice/api/SipProfileState;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 691
    .end local v5    # "currentValues":Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/weirdvoice/api/SipProfileState;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 692
    invoke-virtual {v14}, Lcom/weirdvoice/api/SipProfileState;->getAsContentValue()Landroid/content/ContentValues;

    move-result-object v6

    .line 693
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v15, "account_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string v15, "DBProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Updated "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    monitor-exit v18

    .line 697
    const/4 v4, 0x1

    .line 698
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 685
    .end local v4    # "count":I
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v14    # "ps":Lcom/weirdvoice/api/SipProfileState;
    :catchall_0
    move-exception v15

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 716
    .end local v10    # "id":J
    .restart local v4    # "count":I
    .restart local v8    # "doBroadcast":Z
    .restart local v16    # "rowId":J
    :cond_7
    const-string v15, "priority"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 717
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 723
    .end local v8    # "doBroadcast":Z
    :cond_8
    const/4 v15, 0x4

    if-ne v12, v15, :cond_3

    .line 724
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/db/DBProvider;->broadcastRegistrationChange(J)V

    goto/16 :goto_2

    .line 654
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
    .end packed-switch
.end method

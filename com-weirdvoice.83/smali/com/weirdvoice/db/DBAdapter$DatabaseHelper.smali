.class public Lcom/weirdvoice/db/DBAdapter$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/db/DBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x28

.field private static final TABLE_ACCOUNT_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS accounts (id INTEGER PRIMARY KEY AUTOINCREMENT,active INTEGER,wizard TEXT,display_name TEXT,priority INTEGER,acc_id TEXT NOT NULL,reg_uri TEXT,mwi_enabled BOOLEAN,publish_enabled INTEGER,reg_timeout INTEGER,ka_interval INTEGER,pidf_tuple_id TEXT,force_contact TEXT,allow_contact_rewrite INTEGER,contact_rewrite_method INTEGER,contact_params TEXT,contact_uri_params TEXT,transport INTEGER,default_uri_scheme TEXT,use_srtp INTEGER,use_zrtp INTEGER,proxy TEXT,reg_use_proxy INTEGER,realm TEXT,scheme TEXT,username TEXT,datatype INTEGER,data TEXT,initial_auth INTEGER,auth_algo TEXT,sip_stack INTEGER,vm_nbr TEXT,reg_dbr INTEGER,try_clean_reg INTEGER,use_rfc5626 INTEGER DEFAULT 1,rfc5626_instance_id TEXT,rfc5626_reg_id TEXT,vid_in_auto_show INTEGER DEFAULT -1,vid_out_auto_transmit INTEGER DEFAULT -1,rtp_port INTEGER DEFAULT -1,rtp_enable_qos INTEGER DEFAULT -1,rtp_qos_dscp INTEGER DEFAULT -1,rtp_bound_addr TEXT,rtp_public_addr TEXT,android_group TEXT,allow_via_rewrite INTEGER DEFAULT 0,allow_sdp_nat_rewrite INTEGER  DEFAULT 0,sip_stun_use INTEGER DEFAULT -1,media_stun_use INTEGER DEFAULT -1,ice_cfg_use INTEGER DEFAULT -1,ice_cfg_enable INTEGER DEFAULT 0,turn_cfg_use INTEGER DEFAULT -1,turn_cfg_enable INTEGER DEFAULT 0,turn_cfg_server TEXT,turn_cfg_user TEXT,turn_cfg_pwd TEXT,ipv6_media_use INTEGER DEFAULT 0,wizard_data TEXT);"

.field private static final TABLE_CALLLOGS_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS calllogs (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,numberlabel TEXT,numbertype INTEGER,date INTEGER,duration INTEGER,new INTEGER,number TEXT,type INTEGER,account_id INTEGER,status_code INTEGER,status_text TEXT);"

.field private static final TABLE_FILTERS_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS outgoing_filters (_id INTEGER PRIMARY KEY AUTOINCREMENT,priority INTEGER,account INTEGER,matches TEXT,replace TEXT,action INTEGER);"

.field private static final TABLE_MESSAGES_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS messages (id INTEGER PRIMARY KEY AUTOINCREMENT,sender TEXT,receiver TEXT,contact TEXT,body TEXT,mime_type TEXT,type INTEGER,date INTEGER,status INTEGER,read BOOLEAN,full_sender TEXT);"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const-string v0, "com.weirdvoice.db"

    const/4 v1, 0x0

    const/16 v2, 0x28

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 181
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 185
    const-string v0, "CREATE TABLE IF NOT EXISTS accounts (id INTEGER PRIMARY KEY AUTOINCREMENT,active INTEGER,wizard TEXT,display_name TEXT,priority INTEGER,acc_id TEXT NOT NULL,reg_uri TEXT,mwi_enabled BOOLEAN,publish_enabled INTEGER,reg_timeout INTEGER,ka_interval INTEGER,pidf_tuple_id TEXT,force_contact TEXT,allow_contact_rewrite INTEGER,contact_rewrite_method INTEGER,contact_params TEXT,contact_uri_params TEXT,transport INTEGER,default_uri_scheme TEXT,use_srtp INTEGER,use_zrtp INTEGER,proxy TEXT,reg_use_proxy INTEGER,realm TEXT,scheme TEXT,username TEXT,datatype INTEGER,data TEXT,initial_auth INTEGER,auth_algo TEXT,sip_stack INTEGER,vm_nbr TEXT,reg_dbr INTEGER,try_clean_reg INTEGER,use_rfc5626 INTEGER DEFAULT 1,rfc5626_instance_id TEXT,rfc5626_reg_id TEXT,vid_in_auto_show INTEGER DEFAULT -1,vid_out_auto_transmit INTEGER DEFAULT -1,rtp_port INTEGER DEFAULT -1,rtp_enable_qos INTEGER DEFAULT -1,rtp_qos_dscp INTEGER DEFAULT -1,rtp_bound_addr TEXT,rtp_public_addr TEXT,android_group TEXT,allow_via_rewrite INTEGER DEFAULT 0,allow_sdp_nat_rewrite INTEGER  DEFAULT 0,sip_stun_use INTEGER DEFAULT -1,media_stun_use INTEGER DEFAULT -1,ice_cfg_use INTEGER DEFAULT -1,ice_cfg_enable INTEGER DEFAULT 0,turn_cfg_use INTEGER DEFAULT -1,turn_cfg_enable INTEGER DEFAULT 0,turn_cfg_server TEXT,turn_cfg_user TEXT,turn_cfg_pwd TEXT,ipv6_media_use INTEGER DEFAULT 0,wizard_data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    const-string v0, "CREATE TABLE IF NOT EXISTS calllogs (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,numberlabel TEXT,numbertype INTEGER,date INTEGER,duration INTEGER,new INTEGER,number TEXT,type INTEGER,account_id INTEGER,status_code INTEGER,status_text TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    const-string v0, "CREATE TABLE IF NOT EXISTS outgoing_filters (_id INTEGER PRIMARY KEY AUTOINCREMENT,priority INTEGER,account INTEGER,matches TEXT,replace TEXT,action INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    const-string v0, "CREATE TABLE IF NOT EXISTS messages (id INTEGER PRIMARY KEY AUTOINCREMENT,sender TEXT,receiver TEXT,contact TEXT,body TEXT,mime_type TEXT,type INTEGER,date INTEGER,status INTEGER,read BOOLEAN,full_sender TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/16 v4, 0x1e

    .line 193
    const-string v1, "SIP ACC_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Upgrading database from version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 196
    const-string v1, "DROP TABLE IF EXISTS accounts"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    :cond_0
    const/4 v1, 0x5

    if-ge p2, v1, :cond_1

    .line 200
    :try_start_0
    const-string v1, "ALTER TABLE accounts ADD ka_interval INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_1
    :goto_0
    const/4 v1, 0x6

    if-ge p2, v1, :cond_2

    .line 206
    const-string v1, "DROP TABLE IF EXISTS outgoing_filters"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 208
    :cond_2
    const/16 v1, 0xa

    if-ge p2, v1, :cond_3

    .line 210
    :try_start_1
    const-string v1, "ALTER TABLE accounts ADD allow_contact_rewrite INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    const-string v1, "ALTER TABLE accounts ADD contact_rewrite_method INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    :cond_3
    :goto_1
    const/16 v1, 0xd

    if-ge p2, v1, :cond_4

    .line 220
    :try_start_2
    const-string v1, "ALTER TABLE accounts ADD transport INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    const-string v1, "UPDATE accounts SET transport=1 WHERE prevent_tcp=1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 222
    const-string v1, "UPDATE accounts SET transport=2 WHERE use_tcp=1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    const-string v1, "UPDATE accounts SET transport=0 WHERE use_tcp=0 AND prevent_tcp=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 229
    :cond_4
    :goto_2
    const/16 v1, 0x11

    if-ge p2, v1, :cond_5

    .line 231
    :try_start_3
    const-string v1, "UPDATE accounts SET ka_interval=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 236
    :cond_5
    :goto_3
    const/16 v1, 0x12

    if-ge p2, v1, :cond_6

    .line 239
    :try_start_4
    const-string v1, "UPDATE accounts SET transport=1 WHERE transport=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 244
    :cond_6
    :goto_4
    const/16 v1, 0x16

    if-ge p2, v1, :cond_7

    .line 247
    :try_start_5
    const-string v1, "ALTER TABLE accounts ADD reg_use_proxy INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    const-string v1, "UPDATE accounts SET reg_use_proxy=3"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    const-string v1, "ALTER TABLE accounts ADD sip_stack INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 253
    const-string v1, "UPDATE accounts SET sip_stack=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 254
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 259
    :cond_7
    :goto_5
    const/16 v1, 0x17

    if-ge p2, v1, :cond_8

    .line 262
    :try_start_6
    const-string v1, "ALTER TABLE accounts ADD use_zrtp INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 264
    const-string v1, "UPDATE accounts SET use_zrtp=-1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 269
    :cond_8
    :goto_6
    const/16 v1, 0x18

    if-ge p2, v1, :cond_9

    .line 272
    :try_start_7
    const-string v1, "ALTER TABLE accounts ADD vm_nbr TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 274
    const-string v1, "UPDATE accounts SET vm_nbr=\'\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 275
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 280
    :cond_9
    :goto_7
    const/16 v1, 0x19

    if-ge p2, v1, :cond_a

    .line 283
    :try_start_8
    const-string v1, "ALTER TABLE messages ADD full_sender TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 285
    const-string v1, "UPDATE messages SET full_sender=sender"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 286
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_8

    .line 291
    :cond_a
    :goto_8
    const/16 v1, 0x1a

    if-ge p2, v1, :cond_b

    .line 294
    :try_start_9
    const-string v1, "accounts"

    const-string v2, "reg_dbr"

    const-string v3, "INTEGER DEFAULT -1"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v1, "UPDATE accounts SET reg_dbr=-1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 296
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_9

    .line 301
    :cond_b
    :goto_9
    const/16 v1, 0x1b

    if-ge p2, v1, :cond_c

    .line 304
    :try_start_a
    const-string v1, "accounts"

    const-string v2, "try_clean_reg"

    const-string v3, "INTEGER DEFAULT 0"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "UPDATE accounts SET try_clean_reg=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 306
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_a

    .line 311
    :cond_c
    :goto_a
    const/16 v1, 0x1c

    if-ge p2, v1, :cond_d

    .line 314
    :try_start_b
    const-string v1, "calllogs"

    const-string v2, "account_id"

    const-string v3, "INTEGER"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v1, "calllogs"

    const-string v2, "status_code"

    const-string v3, "INTEGER"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "UPDATE calllogs SET status_code=200"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 319
    const-string v1, "calllogs"

    const-string v2, "status_text"

    const-string v3, "TEXT"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_b

    .line 325
    :cond_d
    :goto_b
    if-ge p2, v4, :cond_e

    .line 328
    :try_start_c
    const-string v1, "accounts"

    const-string v2, "use_rfc5626"

    const-string v3, "INTEGER DEFAULT 1"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v1, "accounts"

    const-string v2, "rfc5626_instance_id"

    const-string v3, "TEXT"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v1, "accounts"

    const-string v2, "rfc5626_reg_id"

    const-string v3, "TEXT"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v1, "accounts"

    const-string v2, "vid_in_auto_show"

    const-string v3, "INTEGER DEFAULT -1"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v1, "accounts"

    const-string v2, "vid_out_auto_transmit"

    const-string v3, "INTEGER DEFAULT -1"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v1, "accounts"

    const-string v2, "rtp_port"

    const-string v3, "INTEGER DEFAULT -1"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v1, "accounts"

    const-string v2, "rtp_enable_qos"

    const-string v3, "INTEGER DEFAULT -1"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v1, "accounts"

    const-string v2, "rtp_qos_dscp"

    const-string v3, "INTEGER DEFAULT -1"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v1, "accounts"

    const-string v2, "rtp_public_addr"

    const-string v3, "TEXT"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v1, "accounts"

    const-string v2, "rtp_bound_addr"

    const-string v3, "TEXT"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_c

    .line 348
    :cond_e
    :goto_c
    if-ne p2, v4, :cond_f

    .line 350
    :try_start_d
    const-string v1, "messages"

    const-string v2, "mime_type"

    const-string v3, "TEXT"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v1, "UPDATE messages SET mime_type=\'text/plain\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_d

    .line 357
    :cond_f
    :goto_d
    const/16 v1, 0x20

    if-ge p2, v1, :cond_10

    .line 360
    :try_start_e
    const-string v1, "accounts"

    const-string v2, "android_group"

    const-string v3, "TEXT"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_e

    .line 366
    :cond_10
    :goto_e
    const/16 v1, 0x21

    if-ge p2, v1, :cond_11

    .line 368
    :try_start_f
    const-string v1, "accounts"

    const-string v2, "allow_via_rewrite"

    const-string v3, "INTEGER DEFAULT 0"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v1, "UPDATE accounts SET allow_via_rewrite=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 370
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_f

    .line 375
    :cond_11
    :goto_f
    const/16 v1, 0x22

    if-ge p2, v1, :cond_12

    .line 377
    :try_start_10
    const-string v1, "accounts"

    const-string v2, "sip_stun_use"

    const-string v3, "INTEGER DEFAULT -1"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v1, "accounts"

    const-string v2, "media_stun_use"

    const-string v3, "INTEGER DEFAULT -1"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v1, "accounts"

    const-string v2, "ice_cfg_use"

    const-string v3, "INTEGER DEFAULT -1"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v1, "accounts"

    const-string v2, "ice_cfg_enable"

    const-string v3, "INTEGER DEFAULT 0"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v1, "accounts"

    const-string v2, "turn_cfg_use"

    const-string v3, "INTEGER DEFAULT -1"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v1, "accounts"

    const-string v2, "turn_cfg_enable"

    const-string v3, "INTEGER DEFAULT 0"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v1, "accounts"

    const-string v2, "turn_cfg_server"

    const-string v3, "TEXT"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v1, "accounts"

    const-string v2, "turn_cfg_user"

    const-string v3, "TEXT"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v1, "accounts"

    const-string v2, "turn_cfg_pwd"

    const-string v3, "TEXT"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v1, "UPDATE accounts SET sip_stun_use=-1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 388
    const-string v1, "UPDATE accounts SET media_stun_use=-1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 389
    const-string v1, "UPDATE accounts SET ice_cfg_use=-1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 390
    const-string v1, "UPDATE accounts SET ice_cfg_enable=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 391
    const-string v1, "UPDATE accounts SET turn_cfg_use=-1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 392
    const-string v1, "UPDATE accounts SET turn_cfg_enable=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 394
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_10

    .line 399
    :cond_12
    :goto_10
    const/16 v1, 0x23

    if-ge p2, v1, :cond_13

    .line 401
    :try_start_11
    const-string v1, "accounts"

    const-string v2, "ipv6_media_use"

    const-string v3, "INTEGER DEFAULT 0"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v1, "UPDATE accounts SET ipv6_media_use=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 403
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_11

    .line 408
    :cond_13
    :goto_11
    const/16 v1, 0x24

    if-ge p2, v1, :cond_14

    .line 411
    :try_start_12
    const-string v1, "UPDATE accounts SET try_clean_reg=1 WHERE 1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 412
    const-string v1, "UPDATE accounts SET try_clean_reg=0 WHERE contact_rewrite_method=1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_12

    .line 417
    :cond_14
    :goto_12
    const/16 v1, 0x25

    if-ge p2, v1, :cond_15

    .line 419
    :try_start_13
    const-string v1, "accounts"

    const-string v2, "initial_auth"

    const-string v3, "INTEGER DEFAULT 0"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v1, "accounts"

    const-string v2, "auth_algo"

    const-string v3, "TEXT"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_13

    .line 425
    :cond_15
    :goto_13
    const/16 v1, 0x26

    if-ge p2, v1, :cond_16

    .line 427
    :try_start_14
    const-string v1, "accounts"

    const-string v2, "wizard_data"

    const-string v3, "TEXT"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_14

    .line 432
    :cond_16
    :goto_14
    const/16 v1, 0x27

    if-ge p2, v1, :cond_17

    .line 434
    :try_start_15
    const-string v1, "ALTER TABLE accounts ADD default_uri_scheme TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_15

    .line 440
    :cond_17
    :goto_15
    const/16 v1, 0x28

    if-ge p2, v1, :cond_18

    .line 442
    :try_start_16
    const-string v1, "accounts"

    const-string v2, "allow_sdp_nat_rewrite"

    const-string v3, "INTEGER DEFAULT 0"

    # invokes: Lcom/weirdvoice/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3}, Lcom/weirdvoice/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v1, "UPDATE accounts SET allow_sdp_nat_rewrite=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 444
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_16

    .line 449
    :cond_18
    :goto_16
    invoke-virtual {p0, p1}, Lcom/weirdvoice/db/DBAdapter$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 450
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 214
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v0

    .line 215
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 224
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v0

    .line 225
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 232
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v0

    .line 233
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 240
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_4
    move-exception v0

    .line 241
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 255
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_5
    move-exception v0

    .line 256
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 265
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_6
    move-exception v0

    .line 266
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 276
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_7
    move-exception v0

    .line 277
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 287
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_8
    move-exception v0

    .line 288
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 297
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_9
    move-exception v0

    .line 298
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 307
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_a
    move-exception v0

    .line 308
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 321
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_b
    move-exception v0

    .line 322
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 343
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_c
    move-exception v0

    .line 344
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 352
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_d
    move-exception v0

    .line 353
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 362
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_e
    move-exception v0

    .line 363
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 371
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_f
    move-exception v0

    .line 372
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 395
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_10
    move-exception v0

    .line 396
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 404
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_11
    move-exception v0

    .line 405
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 413
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_12
    move-exception v0

    .line 414
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 421
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_13
    move-exception v0

    .line 422
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 428
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_14
    move-exception v0

    .line 429
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 435
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_15
    move-exception v0

    .line 436
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 445
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_16
    move-exception v0

    .line 446
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16
.end method

.class public Lorg/abtollc/utils/contacts/ContactsUtils14;
.super Lorg/abtollc/utils/contacts/ContactsUtils5;
.source "ContactsUtils14.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "ContactsUtils14"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/abtollc/utils/contacts/ContactsUtils5;-><init>()V

    return-void
.end method


# virtual methods
.method public findSelfInfo(Landroid/content/Context;)Lorg/abtollc/models/CallerInfo;
    .locals 10
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v6, Lorg/abtollc/models/CallerInfo;

    invoke-direct {v6}, Lorg/abtollc/models/CallerInfo;-><init>()V

    .line 28
    .local v6, "callerInfo":Lorg/abtollc/models/CallerInfo;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "display_name"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v1, "photo_id"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "photo_uri"

    aput-object v1, v2, v0

    .line 34
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 35
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 37
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 38
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 40
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v8, "cv":Landroid/content/ContentValues;
    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, v6, Lorg/abtollc/models/CallerInfo;->contactExists:Z

    .line 43
    const-string v0, "display_name"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "display_name"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->name:Ljava/lang/String;

    .line 48
    :cond_0
    const-string v0, "_id"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    const-string v0, "_id"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v6, Lorg/abtollc/models/CallerInfo;->personId:J

    .line 50
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v6, Lorg/abtollc/models/CallerInfo;->personId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 53
    :cond_1
    const-string v0, "photo_id"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    const-string v0, "photo_id"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v6, Lorg/abtollc/models/CallerInfo;->photoId:J

    .line 57
    :cond_2
    const-string v0, "photo_uri"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    const-string v0, "photo_uri"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->photoUri:Landroid/net/Uri;

    .line 61
    :cond_3
    iget-object v0, v6, Lorg/abtollc/models/CallerInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v6, Lorg/abtollc/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 62
    const/4 v0, 0x0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v8    # "cv":Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_5
    :goto_0
    return-object v6

    .line 66
    :catch_0
    move-exception v9

    .line 67
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ContactsUtils14"

    const-string v1, "Exception while retrieving cursor infos"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

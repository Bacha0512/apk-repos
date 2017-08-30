.class public Lcom/ironsource/eventsmodule/DataBaseEventsStorage;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataBaseEventsStorage.java"

# interfaces
.implements Lcom/ironsource/eventsmodule/IEventsStorageHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/eventsmodule/DataBaseEventsStorage$EventEntry;
    }
.end annotation


# static fields
.field private static final COMMA_SEP:Ljava/lang/String; = ","

.field private static final TYPE_INTEGER:Ljava/lang/String; = " INTEGER"

.field private static final TYPE_TEXT:Ljava/lang/String; = " TEXT"

.field private static mInstance:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;


# instance fields
.field private final DB_OPEN_BACKOFF_TIME:I

.field private final DB_RETRY_NUM:I

.field private final SQL_CREATE_ENTRIES:Ljava/lang/String;

.field private final SQL_DELETE_TABLE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "databaseVersion"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 30
    const/4 v0, 0x4

    iput v0, p0, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->DB_RETRY_NUM:I

    .line 31
    const/16 v0, 0x190

    iput v0, p0, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->DB_OPEN_BACKOFF_TIME:I

    .line 33
    const-string v0, "DROP TABLE IF EXISTS events"

    iput-object v0, p0, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->SQL_DELETE_TABLE:Ljava/lang/String;

    .line 35
    const-string v0, "CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,timestamp INTEGER,type TEXT,data TEXT )"

    iput-object v0, p0, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->SQL_CREATE_ENTRIES:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private getContentValuesForEvent(Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 151
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "values":Landroid/content/ContentValues;
    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 154
    .restart local v0    # "values":Landroid/content/ContentValues;
    const-string v1, "eventid"

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v1, "timestamp"

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "data"

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    return-object v0
.end method

.method private declared-synchronized getDataBaseWithRetries(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4
    .param p1, "writable"    # Z

    .prologue
    .line 183
    monitor-enter p0

    const/4 v0, 0x0

    .line 186
    .local v0, "count":I
    :goto_0
    if-eqz p1, :cond_0

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 190
    :goto_1
    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 192
    :catch_0
    move-exception v1

    .line 194
    .local v1, "t":Ljava/lang/Throwable;
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 195
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 196
    .restart local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    mul-int/lit16 v2, v0, 0x190

    int-to-long v2, v2

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/ironsource/eventsmodule/DataBaseEventsStorage;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "databaseVersion"    # I

    .prologue
    .line 47
    const-class v1, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->mInstance:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->mInstance:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    .line 50
    :cond_0
    sget-object v0, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->mInstance:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized clearEvents(Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 130
    monitor-enter p0

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v3}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->getDataBaseWithRetries(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 133
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "type = ?"

    .line 134
    .local v2, "whereClause":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .local v1, "whereArgs":[Ljava/lang/String;
    :try_start_1
    const-string v3, "events"

    invoke-virtual {v0, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 139
    :catch_0
    move-exception v3

    .line 142
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 130
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "whereArgs":[Ljava/lang/String;
    .end local v2    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 142
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "whereArgs":[Ljava/lang/String;
    .restart local v2    # "whereClause":Ljava/lang/String;
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized loadEvents(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 18
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->getDataBaseWithRetries(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 85
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 86
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .local v14, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    :try_start_1
    const-string v5, "type = ?"

    .line 91
    .local v5, "whereClause":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v6, v3

    .line 92
    .local v6, "whereArgs":[Ljava/lang/String;
    const-string v9, "timestamp ASC"

    .line 95
    .local v9, "orderByClause":Ljava/lang/String;
    const-string v3, "events"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 98
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 100
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 103
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 104
    const-string v3, "eventid"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 105
    .local v13, "eventId":I
    const-string v3, "timestamp"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 106
    .local v16, "timeStamp":J
    const-string v3, "data"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 108
    .local v11, "data":Ljava/lang/String;
    new-instance v12, Lcom/ironsource/eventsmodule/EventData;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v16

    invoke-direct {v12, v13, v0, v1, v3}, Lcom/ironsource/eventsmodule/EventData;-><init>(IJLorg/json/JSONObject;)V

    .line 109
    .local v12, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 116
    .end local v5    # "whereClause":Ljava/lang/String;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v9    # "orderByClause":Ljava/lang/String;
    .end local v11    # "data":Ljava/lang/String;
    .end local v12    # "event":Lcom/ironsource/eventsmodule/EventData;
    .end local v13    # "eventId":I
    .end local v16    # "timeStamp":J
    :catch_0
    move-exception v3

    .line 119
    if-eqz v10, :cond_0

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v14

    .line 114
    .restart local v5    # "whereClause":Ljava/lang/String;
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    .restart local v9    # "orderByClause":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    :cond_3
    if-eqz v10, :cond_4

    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 120
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_4
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 84
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "whereClause":Ljava/lang/String;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v9    # "orderByClause":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v14    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 119
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    :catchall_1
    move-exception v3

    if-eqz v10, :cond_5

    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 120
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 122
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 168
    const-string v0, "CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,timestamp INTEGER,type TEXT,data TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 173
    const-string v0, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 175
    return-void
.end method

.method public declared-synchronized saveEvents(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/eventsmodule/EventData;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 61
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, v3}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->getDataBaseWithRetries(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 64
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/eventsmodule/EventData;

    .line 66
    .local v1, "toInsert":Lcom/ironsource/eventsmodule/EventData;
    invoke-direct {p0, v1, p2}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->getContentValuesForEvent(Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 69
    .local v2, "values":Landroid/content/ContentValues;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 70
    const-string v4, "events"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 74
    .end local v1    # "toInsert":Lcom/ironsource/eventsmodule/EventData;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 77
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 58
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 77
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 77
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 78
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

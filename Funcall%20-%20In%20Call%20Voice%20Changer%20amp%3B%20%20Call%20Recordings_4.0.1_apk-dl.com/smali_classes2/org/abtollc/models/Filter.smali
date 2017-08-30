.class public Lorg/abtollc/models/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/models/Filter$RegExpRepresentation;
    }
.end annotation


# static fields
.field public static final ACTION_AUTO_ANSWER:I = 0x4

.field public static final ACTION_CANT_CALL:I = 0x1

.field public static final ACTION_CAN_CALL:I = 0x0

.field public static final ACTION_DIRECTLY_CALL:I = 0x3

.field public static final ACTION_REPLACE:I = 0x2

.field public static final DEFAULT_ORDER:Ljava/lang/String; = "priority asc"

.field public static final FIELD_ACCOUNT:Ljava/lang/String; = "account"

.field public static final FIELD_ACTION:Ljava/lang/String; = "action"

.field public static final FIELD_MATCHES:Ljava/lang/String; = "matches"

.field public static final FIELD_PRIORITY:Ljava/lang/String; = "priority"

.field public static final FIELD_REPLACE:Ljava/lang/String; = "replace"

.field private static FILTERS_PER_ACCOUNT:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lorg/abtollc/models/Filter;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final FILTER_ACTION_POS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FULL_PROJ:[Ljava/lang/String;

.field public static final FULL_PROJ_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final MATCHER_ALL:I = 0x6

.field public static final MATCHER_CONTAINS:I = 0x7

.field public static final MATCHER_ENDS:I = 0x5

.field public static final MATCHER_HAS_MORE_N_DIGIT:I = 0x2

.field public static final MATCHER_HAS_N_DIGIT:I = 0x1

.field public static final MATCHER_IS_EXACTLY:I = 0x3

.field public static final MATCHER_REGEXP:I = 0x4

.field public static final MATCHER_STARTS:I = 0x0

.field private static final MATCHER_TYPE_POS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final REPLACE_ALL_BY:I = 0x2

.field public static final REPLACE_MATCH_BY:I = 0x1

.field public static final REPLACE_PREFIX:I = 0x0

.field public static final REPLACE_REGEXP:I = 0x3

.field public static final REPLACE_SUFFIX:I = 0x4

.field private static final REPLACE_TYPE_POS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final THIS_FILE:Ljava/lang/String; = "Filter"

.field public static final _ID:Ljava/lang/String; = "_id"


# instance fields
.field public account:Ljava/lang/Integer;

.field public action:Ljava/lang/Integer;

.field public id:Ljava/lang/Integer;

.field public matchPattern:Ljava/lang/String;

.field public matchType:Ljava/lang/Integer;

.field public priority:Ljava/lang/Integer;

.field public replacePattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "priority"

    aput-object v1, v0, v4

    const-string v1, "matches"

    aput-object v1, v0, v5

    const-string v1, "replace"

    aput-object v1, v0, v6

    const-string v1, "action"

    aput-object v1, v0, v7

    sput-object v0, Lorg/abtollc/models/Filter;->FULL_PROJ:[Ljava/lang/String;

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v4

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v7

    sput-object v0, Lorg/abtollc/models/Filter;->FULL_PROJ_TYPES:[Ljava/lang/Class;

    .line 254
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/abtollc/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseArray;

    .line 257
    sget-object v0, Lorg/abtollc/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    sget-object v0, Lorg/abtollc/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    sget-object v0, Lorg/abtollc/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    sget-object v0, Lorg/abtollc/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    sget-object v0, Lorg/abtollc/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseArray;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/abtollc/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    .line 280
    sget-object v0, Lorg/abtollc/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    sget-object v0, Lorg/abtollc/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    sget-object v0, Lorg/abtollc/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    sget-object v0, Lorg/abtollc/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    sget-object v0, Lorg/abtollc/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    sget-object v0, Lorg/abtollc/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    sget-object v0, Lorg/abtollc/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    sget-object v0, Lorg/abtollc/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/abtollc/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseArray;

    .line 303
    sget-object v0, Lorg/abtollc/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    sget-object v0, Lorg/abtollc/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    sget-object v0, Lorg/abtollc/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    sget-object v0, Lorg/abtollc/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 307
    sget-object v0, Lorg/abtollc/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 649
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/abtollc/models/Filter;->FILTERS_PER_ACCOUNT:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p0, p1}, Lorg/abtollc/models/Filter;->createFromDb(Landroid/database/Cursor;)V

    .line 88
    return-void
.end method

.method public static getActionForPosition(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "selectedItemPosition"    # Ljava/lang/Integer;

    .prologue
    .line 267
    sget-object v0, Lorg/abtollc/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lorg/abtollc/models/Filter;->getForPosition(Landroid/util/SparseArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public static getFilterFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lorg/abtollc/models/Filter;
    .locals 11
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "filterId"    # J
    .param p3, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 628
    new-instance v8, Lorg/abtollc/models/Filter;

    invoke-direct {v8}, Lorg/abtollc/models/Filter;-><init>()V

    .line 629
    .local v8, "filter":Lorg/abtollc/models/Filter;
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 630
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipManager;->FILTER_ID_URI_BASE:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 633
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 635
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 636
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 637
    new-instance v9, Lorg/abtollc/models/Filter;

    invoke-direct {v9, v6}, Lorg/abtollc/models/Filter;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "filter":Lorg/abtollc/models/Filter;
    .local v9, "filter":Lorg/abtollc/models/Filter;
    move-object v8, v9

    .line 642
    .end local v9    # "filter":Lorg/abtollc/models/Filter;
    .restart local v8    # "filter":Lorg/abtollc/models/Filter;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 646
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v8

    .line 639
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 640
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Filter"

    const-string v1, "Something went wrong while retrieving the account"

    invoke-static {v0, v1, v7}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getFiltersCursorForAccount(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 7
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 678
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipManager;->FILTER_URI:Landroid/net/Uri;

    sget-object v2, Lorg/abtollc/models/Filter;->FULL_PROJ:[Ljava/lang/String;

    const-string v3, "account=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "priority asc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getFiltersForAccount(Landroid/content/Context;J)Ljava/util/List;
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lorg/abtollc/models/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 652
    sget-object v3, Lorg/abtollc/models/Filter;->FILTERS_PER_ACCOUNT:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 654
    .local v0, "aList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/abtollc/models/Filter;>;"
    invoke-static {p0, p1, p2}, Lorg/abtollc/models/Filter;->getFiltersCursorForAccount(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v1

    .line 655
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 657
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 659
    :cond_0
    new-instance v3, Lorg/abtollc/models/Filter;

    invoke-direct {v3, v1}, Lorg/abtollc/models/Filter;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 665
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 668
    :cond_2
    :goto_0
    sget-object v3, Lorg/abtollc/models/Filter;->FILTERS_PER_ACCOUNT:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    .end local v0    # "aList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/abtollc/models/Filter;>;"
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_3
    sget-object v3, Lorg/abtollc/models/Filter;->FILTERS_PER_ACCOUNT:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    return-object v3

    .line 662
    .restart local v0    # "aList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/abtollc/models/Filter;>;"
    .restart local v1    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    .line 663
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "Filter"

    const-string v4, "Error on looping over sip profiles"

    invoke-static {v3, v4, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private static getForPosition(Landroid/util/SparseArray;Ljava/lang/Integer;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "positions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getMatcherForPosition(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "selectedItemPosition"    # Ljava/lang/Integer;

    .prologue
    .line 293
    sget-object v0, Lorg/abtollc/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lorg/abtollc/models/Filter;->getForPosition(Landroid/util/SparseArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private static getPositionFor(Landroid/util/SparseArray;Ljava/lang/Integer;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "positions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 243
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 247
    .end local v0    # "pos":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPositionForAction(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "selectedAction"    # Ljava/lang/Integer;

    .prologue
    .line 271
    sget-object v0, Lorg/abtollc/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lorg/abtollc/models/Filter;->getPositionFor(Landroid/util/SparseArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public static getPositionForMatcher(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "selectedAction"    # Ljava/lang/Integer;

    .prologue
    .line 297
    sget-object v0, Lorg/abtollc/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lorg/abtollc/models/Filter;->getPositionFor(Landroid/util/SparseArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public static getPositionForReplace(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "selectedAction"    # Ljava/lang/Integer;

    .prologue
    .line 317
    sget-object v0, Lorg/abtollc/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lorg/abtollc/models/Filter;->getPositionFor(Landroid/util/SparseArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public static getReplaceForPosition(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "selectedItemPosition"    # Ljava/lang/Integer;

    .prologue
    .line 313
    sget-object v0, Lorg/abtollc/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lorg/abtollc/models/Filter;->getForPosition(Landroid/util/SparseArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public static isAutoAnswerNumber(Landroid/content/Context;JLjava/lang/String;)I
    .locals 7
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xc8

    const/4 v4, 0x0

    .line 603
    invoke-static {p0, p1, p2}, Lorg/abtollc/models/Filter;->getFiltersForAccount(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v2

    .line 604
    .local v2, "filterList":Ljava/util/List;, "Ljava/util/List<Lorg/abtollc/models/Filter;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/abtollc/models/Filter;

    .line 605
    .local v1, "f":Lorg/abtollc/models/Filter;
    invoke-virtual {v1, p3}, Lorg/abtollc/models/Filter;->autoAnswer(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 606
    iget-object v4, v1, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 622
    .end local v1    # "f":Lorg/abtollc/models/Filter;
    :goto_1
    return v3

    .line 610
    .restart local v1    # "f":Lorg/abtollc/models/Filter;
    :cond_0
    :try_start_0
    iget-object v4, v1, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Filter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid autoanswer code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 617
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-virtual {v1, p3}, Lorg/abtollc/models/Filter;->stopProcessing(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v4

    .line 618
    goto :goto_1

    .line 620
    :cond_2
    invoke-virtual {v1, p3}, Lorg/abtollc/models/Filter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 621
    goto :goto_0

    .end local v1    # "f":Lorg/abtollc/models/Filter;
    :cond_3
    move v3, v4

    .line 622
    goto :goto_1
.end method

.method public static isCallableNumber(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 9
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 552
    const/4 v0, 0x1

    .line 553
    .local v0, "canCall":Z
    invoke-static {p0, p1, p2}, Lorg/abtollc/models/Filter;->getFiltersForAccount(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v3

    .line 554
    .local v3, "filterList":Ljava/util/List;, "Ljava/util/List<Lorg/abtollc/models/Filter;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/abtollc/models/Filter;

    .line 555
    .local v2, "f":Lorg/abtollc/models/Filter;
    const-string v5, "Filter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Test filter "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v2, p3}, Lorg/abtollc/models/Filter;->canCall(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 559
    invoke-virtual {v2, p3}, Lorg/abtollc/models/Filter;->stopProcessing(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v0

    .line 564
    .end local v0    # "canCall":Z
    .end local v2    # "f":Lorg/abtollc/models/Filter;
    .local v1, "canCall":I
    :goto_1
    return v1

    .line 562
    .end local v1    # "canCall":I
    .restart local v0    # "canCall":Z
    .restart local v2    # "f":Lorg/abtollc/models/Filter;
    :cond_0
    invoke-virtual {v2, p3}, Lorg/abtollc/models/Filter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 563
    goto :goto_0

    .end local v2    # "f":Lorg/abtollc/models/Filter;
    :cond_1
    move v1, v0

    .line 564
    .restart local v1    # "canCall":I
    goto :goto_1
.end method

.method public static isMustCallNumber(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 568
    invoke-static {p0, p1, p2}, Lorg/abtollc/models/Filter;->getFiltersForAccount(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v1

    .line 569
    .local v1, "filterList":Ljava/util/List;, "Ljava/util/List<Lorg/abtollc/models/Filter;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/abtollc/models/Filter;

    .line 570
    .local v0, "f":Lorg/abtollc/models/Filter;
    invoke-virtual {v0, p3}, Lorg/abtollc/models/Filter;->mustCall(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 571
    const/4 v2, 0x1

    .line 579
    .end local v0    # "f":Lorg/abtollc/models/Filter;
    :cond_0
    return v2

    .line 574
    .restart local v0    # "f":Lorg/abtollc/models/Filter;
    :cond_1
    invoke-virtual {v0, p3}, Lorg/abtollc/models/Filter;->stopProcessing(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 577
    invoke-virtual {v0, p3}, Lorg/abtollc/models/Filter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 578
    goto :goto_0
.end method

.method private logInvalidPattern(Ljava/util/regex/PatternSyntaxException;)V
    .locals 2
    .param p1, "e"    # Ljava/util/regex/PatternSyntaxException;

    .prologue
    .line 166
    const-string v0, "Filter"

    const-string v1, "Invalid pattern "

    invoke-static {v0, v1, p1}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    return-void
.end method

.method public static resetCache()V
    .locals 1

    .prologue
    .line 674
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/abtollc/models/Filter;->FILTERS_PER_ACCOUNT:Ljava/util/Map;

    .line 675
    return-void
.end method

.method public static rewritePhoneNumber(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 591
    invoke-static {p0, p1, p2}, Lorg/abtollc/models/Filter;->getFiltersForAccount(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v1

    .line 592
    .local v1, "filterList":Ljava/util/List;, "Ljava/util/List<Lorg/abtollc/models/Filter;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/abtollc/models/Filter;

    .line 594
    .local v0, "f":Lorg/abtollc/models/Filter;
    invoke-virtual {v0, p3}, Lorg/abtollc/models/Filter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 595
    invoke-virtual {v0, p3}, Lorg/abtollc/models/Filter;->stopProcessing(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, p3

    .line 599
    .end local v0    # "f":Lorg/abtollc/models/Filter;
    .end local p3    # "number":Ljava/lang/String;
    .local v2, "number":Ljava/lang/String;
    :goto_0
    return-object v2

    .end local v2    # "number":Ljava/lang/String;
    .restart local p3    # "number":Ljava/lang/String;
    :cond_1
    move-object v2, p3

    .end local p3    # "number":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public autoAnswer(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v1, p0, Lorg/abtollc/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 226
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 231
    :goto_0
    return v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-direct {p0, v0}, Lorg/abtollc/models/Filter;->logInvalidPattern(Ljava/util/regex/PatternSyntaxException;)V

    .line 231
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canCall(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 171
    iget-object v2, p0, Lorg/abtollc/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 173
    :try_start_0
    iget-object v2, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-direct {p0, v0}, Lorg/abtollc/models/Filter;->logInvalidPattern(Ljava/util/regex/PatternSyntaxException;)V

    goto :goto_0
.end method

.method public createFromContentValue(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "args"    # Landroid/content/ContentValues;

    .prologue
    .line 101
    const-string v2, "_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 102
    .local v0, "tmp_i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 103
    iput-object v0, p0, Lorg/abtollc/models/Filter;->id:Ljava/lang/Integer;

    .line 105
    :cond_0
    const-string v2, "priority"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    iput-object v0, p0, Lorg/abtollc/models/Filter;->priority:Ljava/lang/Integer;

    .line 109
    :cond_1
    const-string v2, "action"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_2

    .line 111
    iput-object v0, p0, Lorg/abtollc/models/Filter;->action:Ljava/lang/Integer;

    .line 115
    :cond_2
    const-string v2, "matches"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "tmp_s":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 117
    iput-object v1, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    .line 119
    :cond_3
    const-string v2, "replace"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_4

    .line 121
    iput-object v1, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    .line 124
    :cond_4
    const-string v2, "account"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_5

    .line 126
    iput-object v0, p0, Lorg/abtollc/models/Filter;->account:Ljava/lang/Integer;

    .line 128
    :cond_5
    return-void
.end method

.method public createFromDb(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 91
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v0, "args":Landroid/content/ContentValues;
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 94
    invoke-virtual {p0, v0}, Lorg/abtollc/models/Filter;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 95
    return-void
.end method

.method public getDbContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v0, "args":Landroid/content/ContentValues;
    iget-object v1, p0, Lorg/abtollc/models/Filter;->id:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "_id"

    iget-object v2, p0, Lorg/abtollc/models/Filter;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    :cond_0
    const-string v1, "account"

    iget-object v2, p0, Lorg/abtollc/models/Filter;->account:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    const-string v1, "matches"

    iget-object v2, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "replace"

    iget-object v2, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "action"

    iget-object v2, p0, Lorg/abtollc/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string v1, "priority"

    iget-object v2, p0, Lorg/abtollc/models/Filter;->priority:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    return-object v0
.end method

.method public getRepresentation(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 146
    const/4 v4, 0x7

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "@string/starts_with"

    aput-object v4, v1, v7

    const-string v4, "@string/ends_with"

    aput-object v4, v1, v8

    const-string v4, "@string/contains"

    aput-object v4, v1, v6

    const-string v4, "@string/has_exactly_n_digits"

    aput-object v4, v1, v9

    const-string v4, "@string/has_more_than_n_digits"

    aput-object v4, v1, v10

    const/4 v4, 0x5

    const-string v5, "@string/is_exactly"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "@string/custom_regexp"

    aput-object v5, v1, v4

    .line 148
    .local v1, "matches_array":[Ljava/lang/String;
    const/4 v4, 0x5

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "@string/prefix_by"

    aput-object v4, v2, v7

    const-string v4, "@string/suffix_with"

    aput-object v4, v2, v8

    const-string v4, "@string/replace_match_by"

    aput-object v4, v2, v6

    const-string v4, "@string/replace_all_by"

    aput-object v4, v2, v9

    const-string v4, "@string/custom_regexp"

    aput-object v4, v2, v10

    .line 150
    .local v2, "replace_array":[Ljava/lang/String;
    invoke-virtual {p0}, Lorg/abtollc/models/Filter;->getRepresentationForMatcher()Lorg/abtollc/models/Filter$RegExpRepresentation;

    move-result-object v0

    .line 151
    .local v0, "m":Lorg/abtollc/models/Filter$RegExpRepresentation;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 152
    .local v3, "reprBuf":Ljava/lang/StringBuffer;
    iget-object v4, v0, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-static {v4}, Lorg/abtollc/models/Filter;->getPositionForMatcher(Ljava/lang/Integer;)I

    move-result v4

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    iget-object v4, v0, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    iget-object v4, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/abtollc/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 156
    invoke-virtual {p0}, Lorg/abtollc/models/Filter;->getRepresentationForReplace()Lorg/abtollc/models/Filter$RegExpRepresentation;

    move-result-object v0

    .line 157
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 158
    iget-object v4, v0, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-static {v4}, Lorg/abtollc/models/Filter;->getPositionForReplace(Ljava/lang/Integer;)I

    move-result v4

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 160
    iget-object v4, v0, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getRepresentationForMatcher()Lorg/abtollc/models/Filter$RegExpRepresentation;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 378
    new-instance v1, Lorg/abtollc/models/Filter$RegExpRepresentation;

    invoke-direct {v1}, Lorg/abtollc/models/Filter$RegExpRepresentation;-><init>()V

    .line 379
    .local v1, "repr":Lorg/abtollc/models/Filter$RegExpRepresentation;
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/abtollc/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 380
    iget-object v2, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 381
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 382
    const-string v2, ""

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    .line 441
    :cond_0
    :goto_0
    return-object v1

    .line 385
    :cond_1
    iget-object v2, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    .line 386
    iget-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/abtollc/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    goto :goto_0

    .line 392
    :cond_2
    const/4 v0, 0x0

    .line 395
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const-string v2, "^\\^\\\\Q(.+)\\\\E\\(\\.\\*\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 397
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/abtollc/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 398
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto :goto_0

    .line 401
    :cond_3
    const-string v2, "^\\^\\(\\.\\*\\)\\\\Q(.+)\\\\E\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 403
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/abtollc/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 404
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto :goto_0

    .line 407
    :cond_4
    const-string v2, "^\\^\\(\\.\\*\\)\\\\Q(.+)\\\\E\\(\\.\\*\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 409
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/abtollc/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 410
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto :goto_0

    .line 414
    :cond_5
    const-string v2, "^\\^\\(\\.\\*\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 416
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/abtollc/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 417
    const-string v2, ""

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 421
    :cond_6
    const-string v2, "^\\^\\(\\\\d\\{([0-9]+)\\}\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 423
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/abtollc/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 424
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 427
    :cond_7
    const-string v2, "^\\^\\(\\\\d\\{([0-9]+),\\}\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 429
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/abtollc/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 430
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 433
    :cond_8
    const-string v2, "^\\^\\(\\\\Q(.+)\\\\E\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/abtollc/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 436
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getRepresentationForReplace()Lorg/abtollc/models/Filter$RegExpRepresentation;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 483
    new-instance v1, Lorg/abtollc/models/Filter$RegExpRepresentation;

    invoke-direct {v1}, Lorg/abtollc/models/Filter$RegExpRepresentation;-><init>()V

    .line 484
    .local v1, "repr":Lorg/abtollc/models/Filter$RegExpRepresentation;
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 485
    iget-object v2, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 486
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 487
    const-string v2, ""

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    .line 488
    iget-object v2, p0, Lorg/abtollc/models/Filter;->action:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/abtollc/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 489
    iget-object v2, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    .line 545
    :cond_0
    :goto_0
    return-object v1

    .line 493
    :cond_1
    iget-object v2, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    .line 494
    iget-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 495
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    goto :goto_0

    .line 500
    :cond_2
    const/4 v0, 0x0

    .line 503
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const-string v2, "^(.+)\\$0$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 505
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 506
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto :goto_0

    .line 510
    :cond_3
    const-string v2, "^\\$0(.+)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 512
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 513
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto :goto_0

    .line 517
    :cond_4
    iget-object v2, p0, Lorg/abtollc/models/Filter;->matchType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 529
    const-string v2, "^(.*)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 532
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 533
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 534
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto :goto_0

    .line 519
    :sswitch_0
    const-string v2, "^(.*)\\$1$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 520
    goto :goto_1

    .line 522
    :sswitch_1
    const-string v2, "^\\$1(.*)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 523
    goto :goto_1

    .line 525
    :sswitch_2
    const-string v2, "^\\$1(.*)\\$2$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 526
    goto :goto_1

    .line 538
    :cond_5
    const-string v2, "^([^\\$]+)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 541
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 517
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public mustCall(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v1, p0, Lorg/abtollc/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 185
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 191
    :goto_0
    return v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-direct {p0, v0}, Lorg/abtollc/models/Filter;->logInvalidPattern(Ljava/util/regex/PatternSyntaxException;)V

    .line 191
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rewrite(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v3, p0, Lorg/abtollc/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 210
    :try_start_0
    iget-object v3, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 211
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 212
    .local v1, "matcher":Ljava/util/regex/Matcher;
    iget-object v3, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 219
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    .end local p1    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 213
    .restart local p1    # "number":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-direct {p0, v0}, Lorg/abtollc/models/Filter;->logInvalidPattern(Ljava/util/regex/PatternSyntaxException;)V

    goto :goto_0

    .line 215
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :catch_1
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "Filter"

    const-string v4, "Out of bounds "

    invoke-static {v3, v4, v0}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMatcherRepresentation(Lorg/abtollc/models/Filter$RegExpRepresentation;)V
    .locals 2
    .param p1, "representation"    # Lorg/abtollc/models/Filter$RegExpRepresentation;

    .prologue
    .line 338
    iget-object v0, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/abtollc/models/Filter;->matchType:Ljava/lang/Integer;

    .line 339
    iget-object v0, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 365
    :pswitch_0
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/models/Filter;->matchType:Ljava/lang/Integer;

    .line 366
    iget-object v0, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    iput-object v0, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    .line 369
    :goto_0
    return-void

    .line 341
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(.*)$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    goto :goto_0

    .line 344
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^(.*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    goto :goto_0

    .line 347
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^(.*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(.*)$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    goto :goto_0

    .line 350
    :pswitch_4
    const-string v0, "^(.*)$"

    iput-object v0, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    goto :goto_0

    .line 354
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^(\\d{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    goto/16 :goto_0

    .line 358
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^(\\d{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",})$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    goto/16 :goto_0

    .line 361
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    goto/16 :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public setReplaceRepresentation(Lorg/abtollc/models/Filter$RegExpRepresentation;)V
    .locals 2
    .param p1, "representation"    # Lorg/abtollc/models/Filter$RegExpRepresentation;

    .prologue
    .line 446
    iget-object v0, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 476
    :pswitch_0
    iget-object v0, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    iput-object v0, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    .line 479
    :goto_0
    return-void

    .line 448
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 451
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 454
    :pswitch_3
    iget-object v0, p0, Lorg/abtollc/models/Filter;->matchType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 466
    iget-object v0, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    iput-object v0, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 456
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 459
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 462
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    goto/16 :goto_0

    .line 472
    :pswitch_4
    iget-object v0, p1, Lorg/abtollc/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    iput-object v0, p0, Lorg/abtollc/models/Filter;->replacePattern:Ljava/lang/String;

    goto/16 :goto_0

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 454
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public stopProcessing(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v1, p0, Lorg/abtollc/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/abtollc/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 198
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 204
    :goto_0
    return v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-direct {p0, v0}, Lorg/abtollc/models/Filter;->logInvalidPattern(Ljava/util/regex/PatternSyntaxException;)V

    .line 204
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

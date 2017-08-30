.class public Lcom/weirdvoice/models/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/models/Filter$RegExpRepresentation;
    }
.end annotation


# static fields
.field public static final ACTION_AUTO_ANSWER:I = 0x4

.field public static final ACTION_CANT_CALL:I = 0x1

.field public static final ACTION_CAN_CALL:I = 0x0

.field public static final ACTION_DIRECTLY_CALL:I = 0x3

.field public static final ACTION_REPLACE:I = 0x2

.field private static final BLUETOOTH_MATCHER_KEY:Ljava/lang/String; = "###BLUETOOTH###"

.field private static final CALLINFO_AUTOREPLY_MATCHER_KEY:Ljava/lang/String; = "###CALLINFO_AUTOREPLY###"

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
            "Lcom/weirdvoice/models/Filter;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final FILTER_ACTION_POS:Landroid/util/SparseIntArray;

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

.field public static final MATCHER_BLUETOOTH:I = 0x8

.field public static final MATCHER_CALLINFO_AUTOREPLY:I = 0x9

.field public static final MATCHER_CONTAINS:I = 0x7

.field public static final MATCHER_ENDS:I = 0x5

.field public static final MATCHER_HAS_MORE_N_DIGIT:I = 0x2

.field public static final MATCHER_HAS_N_DIGIT:I = 0x1

.field public static final MATCHER_IS_EXACTLY:I = 0x3

.field public static final MATCHER_REGEXP:I = 0x4

.field public static final MATCHER_STARTS:I = 0x0

.field private static final MATCHER_TYPE_POS:Landroid/util/SparseIntArray;

.field public static final REPLACE_ALL_BY:I = 0x2

.field public static final REPLACE_MATCH_BY:I = 0x1

.field public static final REPLACE_PREFIX:I = 0x0

.field public static final REPLACE_REGEXP:I = 0x3

.field public static final REPLACE_SUFFIX:I = 0x4

.field private static final REPLACE_TYPE_POS:Landroid/util/SparseIntArray;

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

    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 78
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 79
    const-string v1, "priority"

    aput-object v1, v0, v4

    .line 80
    const-string v1, "matches"

    aput-object v1, v0, v5

    .line 81
    const-string v1, "replace"

    aput-object v1, v0, v6

    .line 82
    const-string v1, "action"

    aput-object v1, v0, v7

    .line 77
    sput-object v0, Lcom/weirdvoice/models/Filter;->FULL_PROJ:[Ljava/lang/String;

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    .line 86
    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v3

    .line 87
    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v4

    .line 88
    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    .line 89
    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v6

    .line 90
    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v7

    .line 85
    sput-object v0, Lcom/weirdvoice/models/Filter;->FULL_PROJ_TYPES:[Ljava/lang/Class;

    .line 320
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/weirdvoice/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseIntArray;

    .line 322
    sget-object v0, Lcom/weirdvoice/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 323
    sget-object v0, Lcom/weirdvoice/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 324
    sget-object v0, Lcom/weirdvoice/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 325
    sget-object v0, Lcom/weirdvoice/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 326
    sget-object v0, Lcom/weirdvoice/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 340
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/weirdvoice/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseIntArray;

    .line 343
    sget-object v0, Lcom/weirdvoice/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 344
    sget-object v0, Lcom/weirdvoice/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 345
    sget-object v0, Lcom/weirdvoice/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 346
    sget-object v0, Lcom/weirdvoice/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 347
    sget-object v0, Lcom/weirdvoice/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 348
    sget-object v0, Lcom/weirdvoice/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 349
    sget-object v0, Lcom/weirdvoice/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 350
    sget-object v0, Lcom/weirdvoice/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 351
    sget-object v0, Lcom/weirdvoice/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 352
    sget-object v0, Lcom/weirdvoice/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 363
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/weirdvoice/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseIntArray;

    .line 365
    sget-object v0, Lcom/weirdvoice/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 366
    sget-object v0, Lcom/weirdvoice/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 367
    sget-object v0, Lcom/weirdvoice/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 368
    sget-object v0, Lcom/weirdvoice/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 369
    sget-object v0, Lcom/weirdvoice/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 722
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/models/Filter;->FILTERS_PER_ACCOUNT:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p0, p1}, Lcom/weirdvoice/models/Filter;->createFromDb(Landroid/database/Cursor;)V

    .line 117
    return-void
.end method

.method public static getActionForPosition(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "selectedItemPosition"    # Ljava/lang/Integer;

    .prologue
    .line 330
    sget-object v0, Lcom/weirdvoice/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseIntArray;

    invoke-static {v0, p0}, Lcom/weirdvoice/models/Filter;->getForPosition(Landroid/util/SparseIntArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public static getFilterFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lcom/weirdvoice/models/Filter;
    .locals 11
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "filterId"    # J
    .param p3, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 701
    new-instance v8, Lcom/weirdvoice/models/Filter;

    invoke-direct {v8}, Lcom/weirdvoice/models/Filter;-><init>()V

    .line 702
    .local v8, "filter":Lcom/weirdvoice/models/Filter;
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 703
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/api/SipManager;->FILTER_ID_URI_BASE:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 706
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 708
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 709
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 710
    new-instance v9, Lcom/weirdvoice/models/Filter;

    invoke-direct {v9, v6}, Lcom/weirdvoice/models/Filter;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "filter":Lcom/weirdvoice/models/Filter;
    .local v9, "filter":Lcom/weirdvoice/models/Filter;
    move-object v8, v9

    .line 715
    .end local v9    # "filter":Lcom/weirdvoice/models/Filter;
    .restart local v8    # "filter":Lcom/weirdvoice/models/Filter;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 719
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v8

    .line 712
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 713
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Filter"

    const-string v1, "Something went wrong while retrieving the account"

    invoke-static {v0, v1, v7}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 714
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 715
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 716
    throw v0
.end method

.method public static getFiltersCursorForAccount(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 7
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 751
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/api/SipManager;->FILTER_URI:Landroid/net/Uri;

    sget-object v2, Lcom/weirdvoice/models/Filter;->FULL_PROJ:[Ljava/lang/String;

    const-string v3, "account=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "priority asc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

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
            "Lcom/weirdvoice/models/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 725
    sget-object v3, Lcom/weirdvoice/models/Filter;->FILTERS_PER_ACCOUNT:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 726
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v0, "aList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/weirdvoice/models/Filter;>;"
    invoke-static {p0, p1, p2}, Lcom/weirdvoice/models/Filter;->getFiltersCursorForAccount(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v1

    .line 728
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 730
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 732
    :cond_0
    new-instance v3, Lcom/weirdvoice/models/Filter;

    invoke-direct {v3, v1}, Lcom/weirdvoice/models/Filter;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 738
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 741
    :cond_2
    :goto_0
    sget-object v3, Lcom/weirdvoice/models/Filter;->FILTERS_PER_ACCOUNT:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    .end local v0    # "aList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/weirdvoice/models/Filter;>;"
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_3
    sget-object v3, Lcom/weirdvoice/models/Filter;->FILTERS_PER_ACCOUNT:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    return-object v3

    .line 735
    .restart local v0    # "aList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/weirdvoice/models/Filter;>;"
    .restart local v1    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    .line 736
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "Filter"

    const-string v4, "Error on looping over sip profiles"

    invoke-static {v3, v4, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 738
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 737
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 738
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 739
    throw v3
.end method

.method private static getForPosition(Landroid/util/SparseIntArray;Ljava/lang/Integer;)I
    .locals 1
    .param p0, "positions"    # Landroid/util/SparseIntArray;
    .param p1, "key"    # Ljava/lang/Integer;

    .prologue
    .line 303
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public static getMatcherForPosition(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "selectedItemPosition"    # Ljava/lang/Integer;

    .prologue
    .line 356
    sget-object v0, Lcom/weirdvoice/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseIntArray;

    invoke-static {v0, p0}, Lcom/weirdvoice/models/Filter;->getForPosition(Landroid/util/SparseIntArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private static getPositionFor(Landroid/util/SparseIntArray;Ljava/lang/Integer;)I
    .locals 2
    .param p0, "positions"    # Landroid/util/SparseIntArray;
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 307
    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .line 309
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 313
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
    .line 334
    sget-object v0, Lcom/weirdvoice/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseIntArray;

    invoke-static {v0, p0}, Lcom/weirdvoice/models/Filter;->getPositionFor(Landroid/util/SparseIntArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public static getPositionForMatcher(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "selectedAction"    # Ljava/lang/Integer;

    .prologue
    .line 360
    sget-object v0, Lcom/weirdvoice/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseIntArray;

    invoke-static {v0, p0}, Lcom/weirdvoice/models/Filter;->getPositionFor(Landroid/util/SparseIntArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public static getPositionForReplace(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "selectedAction"    # Ljava/lang/Integer;

    .prologue
    .line 377
    sget-object v0, Lcom/weirdvoice/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseIntArray;

    invoke-static {v0, p0}, Lcom/weirdvoice/models/Filter;->getPositionFor(Landroid/util/SparseIntArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public static getReplaceForPosition(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "selectedItemPosition"    # Ljava/lang/Integer;

    .prologue
    .line 373
    sget-object v0, Lcom/weirdvoice/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseIntArray;

    invoke-static {v0, p0}, Lcom/weirdvoice/models/Filter;->getForPosition(Landroid/util/SparseIntArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public static isAutoAnswerNumber(Landroid/content/Context;JLjava/lang/String;Landroid/os/Bundle;)I
    .locals 7
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "extraHdr"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0xc8

    const/4 v4, 0x0

    .line 675
    invoke-static {p0, p1, p2}, Lcom/weirdvoice/models/Filter;->getFiltersForAccount(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v2

    .line 676
    .local v2, "filterList":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/models/Filter;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    move v3, v4

    .line 694
    :cond_0
    :goto_1
    return v3

    .line 676
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/weirdvoice/models/Filter;

    .line 677
    .local v1, "f":Lcom/weirdvoice/models/Filter;
    invoke-virtual {v1, p0, p3, p4}, Lcom/weirdvoice/models/Filter;->autoAnswer(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 678
    iget-object v4, v1, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 682
    :try_start_0
    iget-object v4, v1, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Filter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid autoanswer code : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 689
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual {v1, p0, p3}, Lcom/weirdvoice/models/Filter;->stopProcessing(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    .line 690
    goto :goto_1

    .line 692
    :cond_3
    invoke-virtual {v1, p3}, Lcom/weirdvoice/models/Filter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public static isCallableNumber(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 9
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 624
    const/4 v0, 0x1

    .line 625
    .local v0, "canCall":Z
    invoke-static {p0, p1, p2}, Lcom/weirdvoice/models/Filter;->getFiltersForAccount(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v3

    .line 626
    .local v3, "filterList":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/models/Filter;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v0

    .line 636
    .end local v0    # "canCall":Z
    .local v1, "canCall":I
    :goto_1
    return v1

    .line 626
    .end local v1    # "canCall":I
    .restart local v0    # "canCall":Z
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/weirdvoice/models/Filter;

    .line 627
    .local v2, "f":Lcom/weirdvoice/models/Filter;
    const-string v5, "Filter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Test filter "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-virtual {v2, p0, p3}, Lcom/weirdvoice/models/Filter;->canCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 631
    invoke-virtual {v2, p0, p3}, Lcom/weirdvoice/models/Filter;->stopProcessing(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v0

    .line 632
    .restart local v1    # "canCall":I
    goto :goto_1

    .line 634
    .end local v1    # "canCall":I
    :cond_1
    invoke-virtual {v2, p3}, Lcom/weirdvoice/models/Filter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public static isMustCallNumber(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 640
    invoke-static {p0, p1, p2}, Lcom/weirdvoice/models/Filter;->getFiltersForAccount(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v1

    .line 641
    .local v1, "filterList":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/models/Filter;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 651
    :cond_0
    :goto_1
    return v2

    .line 641
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/models/Filter;

    .line 642
    .local v0, "f":Lcom/weirdvoice/models/Filter;
    invoke-virtual {v0, p0, p3}, Lcom/weirdvoice/models/Filter;->mustCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 643
    const/4 v2, 0x1

    goto :goto_1

    .line 646
    :cond_2
    invoke-virtual {v0, p0, p3}, Lcom/weirdvoice/models/Filter;->stopProcessing(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 649
    invoke-virtual {v0, p3}, Lcom/weirdvoice/models/Filter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method private logInvalidPattern(Ljava/util/regex/PatternSyntaxException;)V
    .locals 2
    .param p1, "e"    # Ljava/util/regex/PatternSyntaxException;

    .prologue
    .line 198
    const-string v0, "Filter"

    const-string v1, "Invalid pattern "

    invoke-static {v0, v1, p1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    return-void
.end method

.method private patternMatches(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)Z
    .locals 4
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "extraHdr"    # Landroid/os/Bundle;
    .param p4, "defaultValue"    # Z

    .prologue
    .line 202
    const-string v2, "###CALLINFO_AUTOREPLY###"

    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    if-eqz p3, :cond_1

    .line 204
    const-string v2, "Call-Info"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    const-string v2, "Call-Info"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "hdrValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 209
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 210
    const-string v2, "answer-after=0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    const/4 p4, 0x1

    .line 223
    .end local v1    # "hdrValue":Ljava/lang/String;
    .end local p4    # "defaultValue":Z
    :cond_1
    :goto_0
    return p4

    .line 214
    .restart local p4    # "defaultValue":Z
    :cond_2
    const-string v2, "###BLUETOOTH###"

    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 215
    invoke-static {p1}, Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;->getInstance(Landroid/content/Context;)Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;->isBTHeadsetConnected()Z

    move-result p4

    goto :goto_0

    .line 218
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p4

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-direct {p0, v0}, Lcom/weirdvoice/models/Filter;->logInvalidPattern(Ljava/util/regex/PatternSyntaxException;)V

    goto :goto_0
.end method

.method public static resetCache()V
    .locals 1

    .prologue
    .line 747
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/models/Filter;->FILTERS_PER_ACCOUNT:Ljava/util/Map;

    .line 748
    return-void
.end method

.method public static rewritePhoneNumber(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 663
    invoke-static {p0, p1, p2}, Lcom/weirdvoice/models/Filter;->getFiltersForAccount(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v1

    .line 664
    .local v1, "filterList":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/models/Filter;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v2, p3

    .line 671
    .end local p3    # "number":Ljava/lang/String;
    .local v2, "number":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 664
    .end local v2    # "number":Ljava/lang/String;
    .restart local p3    # "number":Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/models/Filter;

    .line 666
    .local v0, "f":Lcom/weirdvoice/models/Filter;
    invoke-virtual {v0, p3}, Lcom/weirdvoice/models/Filter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 667
    invoke-virtual {v0, p0, p3}, Lcom/weirdvoice/models/Filter;->stopProcessing(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, p3

    .line 668
    .end local p3    # "number":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public autoAnswer(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "extraHdr"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 274
    iget-object v1, p0, Lcom/weirdvoice/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 275
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/weirdvoice/models/Filter;->patternMatches(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)Z

    move-result v0

    .line 277
    :cond_0
    return v0
.end method

.method public canCall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 233
    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 234
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/weirdvoice/models/Filter;->patternMatches(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 234
    goto :goto_0

    :cond_1
    move v0, v1

    .line 237
    goto :goto_0
.end method

.method public createFromContentValue(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "args"    # Landroid/content/ContentValues;

    .prologue
    .line 130
    const-string v2, "_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 131
    .local v0, "tmp_i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 132
    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->id:Ljava/lang/Integer;

    .line 134
    :cond_0
    const-string v2, "priority"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_1

    .line 136
    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->priority:Ljava/lang/Integer;

    .line 138
    :cond_1
    const-string v2, "action"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_2

    .line 140
    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->action:Ljava/lang/Integer;

    .line 144
    :cond_2
    const-string v2, "matches"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "tmp_s":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 146
    iput-object v1, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    .line 148
    :cond_3
    const-string v2, "replace"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_4

    .line 150
    iput-object v1, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    .line 153
    :cond_4
    const-string v2, "account"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_5

    .line 155
    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->account:Ljava/lang/Integer;

    .line 157
    :cond_5
    return-void
.end method

.method public createFromDb(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 120
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v0, "args":Landroid/content/ContentValues;
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/weirdvoice/models/Filter;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 124
    return-void
.end method

.method public getDbContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v0, "args":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/weirdvoice/models/Filter;->id:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 163
    const-string v1, "_id"

    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    :cond_0
    const-string v1, "account"

    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->account:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v1, "matches"

    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "replace"

    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "action"

    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v1, "priority"

    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->priority:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    return-object v0
.end method

.method public getRepresentation(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x20

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "matches_array":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "replace_array":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/weirdvoice/models/Filter;->getRepresentationForMatcher()Lcom/weirdvoice/models/Filter$RegExpRepresentation;

    move-result-object v0

    .line 179
    .local v0, "m":Lcom/weirdvoice/models/Filter$RegExpRepresentation;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 180
    .local v3, "reprBuf":Ljava/lang/StringBuffer;
    iget-object v4, v0, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-static {v4}, Lcom/weirdvoice/models/Filter;->getPositionForMatcher(Ljava/lang/Integer;)I

    move-result v4

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    iget-object v4, v0, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 182
    iget-object v4, v0, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    .line 183
    iget-object v4, v0, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    .line 184
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 185
    iget-object v4, v0, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    :cond_0
    iget-object v4, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/weirdvoice/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/weirdvoice/models/Filter;->getRepresentationForReplace()Lcom/weirdvoice/models/Filter$RegExpRepresentation;

    move-result-object v0

    .line 189
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 190
    iget-object v4, v0, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-static {v4}, Lcom/weirdvoice/models/Filter;->getPositionForReplace(Ljava/lang/Integer;)I

    move-result v4

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 192
    iget-object v4, v0, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getRepresentationForMatcher()Lcom/weirdvoice/models/Filter$RegExpRepresentation;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 442
    new-instance v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;

    invoke-direct {v1}, Lcom/weirdvoice/models/Filter$RegExpRepresentation;-><init>()V

    .line 443
    .local v1, "repr":Lcom/weirdvoice/models/Filter$RegExpRepresentation;
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 444
    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 445
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 446
    const-string v2, ""

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    .line 511
    :cond_0
    :goto_0
    return-object v1

    .line 449
    :cond_1
    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    .line 450
    iget-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 451
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    goto :goto_0

    .line 456
    :cond_2
    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    const-string v3, "###BLUETOOTH###"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 457
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 462
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 465
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const-string v2, "^\\^\\\\Q(.+)\\\\E\\(\\.\\*\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 467
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 468
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto :goto_0

    .line 458
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_4
    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    const-string v3, "###CALLINFO_AUTOREPLY###"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 459
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    goto :goto_1

    .line 471
    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_5
    const-string v2, "^\\^\\(\\.\\*\\)\\\\Q(.+)\\\\E\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 473
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 474
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 477
    :cond_6
    const-string v2, "^\\^\\(\\.\\*\\)\\\\Q(.+)\\\\E\\(\\.\\*\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 479
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 480
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 484
    :cond_7
    const-string v2, "^\\^\\(\\.\\*\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 486
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 487
    const-string v2, ""

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 491
    :cond_8
    const-string v2, "^\\^\\(\\\\d\\{([0-9]+)\\}\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 493
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 494
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 497
    :cond_9
    const-string v2, "^\\^\\(\\\\d\\{([0-9]+),\\}\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 499
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 500
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 503
    :cond_a
    const-string v2, "^\\^\\(\\\\Q(.+)\\\\E\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 506
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getRepresentationForReplace()Lcom/weirdvoice/models/Filter$RegExpRepresentation;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 554
    new-instance v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;

    invoke-direct {v1}, Lcom/weirdvoice/models/Filter$RegExpRepresentation;-><init>()V

    .line 555
    .local v1, "repr":Lcom/weirdvoice/models/Filter$RegExpRepresentation;
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 556
    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 557
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 558
    const-string v2, ""

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    .line 559
    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->action:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 560
    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    .line 617
    :cond_0
    :goto_0
    return-object v1

    .line 564
    :cond_1
    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    .line 565
    iget-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 566
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    goto :goto_0

    .line 571
    :cond_2
    const/4 v0, 0x0

    .line 574
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const-string v2, "^(.+)\\$0$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 576
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 577
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto :goto_0

    .line 581
    :cond_3
    const-string v2, "^\\$0(.+)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 583
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 584
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto :goto_0

    .line 588
    :cond_4
    iget-object v2, p0, Lcom/weirdvoice/models/Filter;->matchType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 601
    const-string v2, "^(.*)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 604
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 605
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 606
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto :goto_0

    .line 591
    :sswitch_0
    const-string v2, "^(.*)\\$1$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 592
    goto :goto_1

    .line 594
    :sswitch_1
    const-string v2, "^\\$1(.*)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 595
    goto :goto_1

    .line 597
    :sswitch_2
    const-string v2, "^\\$1(.*)\\$2$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 598
    goto :goto_1

    .line 610
    :cond_5
    const-string v2, "^([^\\$]+)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 612
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 613
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 588
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public mustCall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 247
    iget-object v1, p0, Lcom/weirdvoice/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 248
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/weirdvoice/models/Filter;->patternMatches(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)Z

    move-result v0

    .line 251
    :cond_0
    return v0
.end method

.method public rewrite(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 288
    :try_start_0
    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 289
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 290
    .local v1, "matcher":Ljava/util/regex/Matcher;
    iget-object v3, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 297
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    .end local p1    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 291
    .restart local p1    # "number":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-direct {p0, v0}, Lcom/weirdvoice/models/Filter;->logInvalidPattern(Ljava/util/regex/PatternSyntaxException;)V

    goto :goto_0

    .line 293
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :catch_1
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "Filter"

    const-string v4, "Out of bounds "

    invoke-static {v3, v4, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMatcherRepresentation(Lcom/weirdvoice/models/Filter$RegExpRepresentation;)V
    .locals 2
    .param p1, "representation"    # Lcom/weirdvoice/models/Filter$RegExpRepresentation;

    .prologue
    .line 397
    iget-object v0, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->matchType:Ljava/lang/Integer;

    .line 398
    iget-object v0, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 430
    :pswitch_0
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->matchType:Ljava/lang/Integer;

    .line 431
    iget-object v0, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    .line 434
    :goto_0
    return-void

    .line 400
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(.*)$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    goto :goto_0

    .line 403
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^(.*)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    goto :goto_0

    .line 406
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^(.*)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(.*)$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    goto :goto_0

    .line 409
    :pswitch_4
    const-string v0, "^(.*)$"

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    goto :goto_0

    .line 413
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^(\\d{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    goto :goto_0

    .line 417
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^(\\d{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",})$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    goto/16 :goto_0

    .line 420
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    goto/16 :goto_0

    .line 423
    :pswitch_8
    const-string v0, "###BLUETOOTH###"

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    goto/16 :goto_0

    .line 426
    :pswitch_9
    const-string v0, "###CALLINFO_AUTOREPLY###"

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->matchPattern:Ljava/lang/String;

    goto/16 :goto_0

    .line 398
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
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setReplaceRepresentation(Lcom/weirdvoice/models/Filter$RegExpRepresentation;)V
    .locals 2
    .param p1, "representation"    # Lcom/weirdvoice/models/Filter$RegExpRepresentation;

    .prologue
    .line 516
    iget-object v0, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 547
    :pswitch_0
    iget-object v0, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    .line 550
    :goto_0
    return-void

    .line 518
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "$0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 521
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 524
    :pswitch_3
    iget-object v0, p0, Lcom/weirdvoice/models/Filter;->matchType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 537
    iget-object v0, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 527
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 530
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 533
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 543
    :pswitch_4
    iget-object v0, p1, Lcom/weirdvoice/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/weirdvoice/models/Filter;->replacePattern:Ljava/lang/String;

    goto/16 :goto_0

    .line 516
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 524
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public stopProcessing(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 261
    iget-object v1, p0, Lcom/weirdvoice/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/weirdvoice/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 262
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/weirdvoice/models/Filter;->patternMatches(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)Z

    move-result v0

    .line 264
    :cond_1
    return v0
.end method

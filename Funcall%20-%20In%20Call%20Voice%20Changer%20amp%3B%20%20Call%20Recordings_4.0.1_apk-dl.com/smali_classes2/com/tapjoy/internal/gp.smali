.class public final Lcom/tapjoy/internal/gp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/gp;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/content/SharedPreferences;

.field public d:Landroid/content/SharedPreferences;

.field e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/tapjoy/internal/gp;

    invoke-direct {v0}, Lcom/tapjoy/internal/gp;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gp;->a:Lcom/tapjoy/internal/gp;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/tapjoy/internal/gp;->c:Landroid/content/SharedPreferences;

    .line 54
    iput-object v0, p0, Lcom/tapjoy/internal/gp;->d:Landroid/content/SharedPreferences;

    .line 60
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/tapjoy/internal/gp;->e:Ljava/util/concurrent/ExecutorService;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gp;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tapjoy/internal/gp;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 74
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 75
    sget-object v2, Lcom/tapjoy/internal/u;->a:Lcom/tapjoy/internal/u;

    invoke-static {v1}, Lcom/tapjoy/internal/u;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 79
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static a(J)Z
    .locals 2

    .prologue
    .line 84
    const-wide/16 v0, 0xe10

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tapjoy/internal/gp;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/tapjoy/internal/gp;->c()V

    return-void
.end method

.method static synthetic c(Lcom/tapjoy/internal/gp;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tapjoy/internal/gp;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private declared-synchronized c()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide v6

    .line 269
    invoke-virtual {p0}, Lcom/tapjoy/internal/gp;->b()Ljava/io/File;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 274
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 275
    if-eqz v1, :cond_0

    .line 276
    array-length v3, v1

    move v0, v4

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v8, v1, v0

    .line 277
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gp;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 282
    iget-object v0, p0, Lcom/tapjoy/internal/gp;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 283
    new-instance v10, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/tapjoy/internal/gp;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 284
    new-instance v3, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/tapjoy/internal/gp;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 287
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v1, v4

    .line 288
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 291
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 292
    invoke-interface {v8, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 293
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v1, v12

    move v0, v2

    :goto_2
    move v1, v0

    .line 296
    goto :goto_1

    .line 298
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 299
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 302
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 303
    invoke-interface {v9, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 304
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v1, v11

    move v0, v2

    :goto_4
    move v1, v0

    .line 307
    goto :goto_3

    .line 310
    :cond_2
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v3, v1

    .line 311
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 312
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 315
    cmp-long v0, v12, v6

    if-gez v0, :cond_3

    .line 316
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 317
    invoke-interface {v8, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    invoke-interface {v9, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v3, v2

    .line 319
    goto :goto_5

    .line 321
    :cond_3
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 326
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 328
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 330
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    goto :goto_6

    .line 334
    :cond_5
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_6

    .line 337
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1e

    .line 339
    new-instance v0, Ljava/util/LinkedList;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 341
    new-instance v1, Lcom/tapjoy/internal/gp$3;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/gp$3;-><init>(Lcom/tapjoy/internal/gp;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 351
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_7
    if-ge v3, v5, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 352
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 353
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 354
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 356
    invoke-interface {v8, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 357
    invoke-interface {v9, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 358
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/gp;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 359
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 360
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v4, v7

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 361
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 362
    goto :goto_7

    :cond_6
    move v2, v3

    .line 373
    :cond_7
    if-eqz v2, :cond_8

    .line 374
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 375
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    :cond_8
    monitor-exit p0

    return-void

    :cond_9
    move v0, v1

    goto/16 :goto_4

    :cond_a
    move v0, v1

    goto/16 :goto_2
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gp;->b()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/net/URL;)Ljava/io/File;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    .line 100
    iget-object v1, p0, Lcom/tapjoy/internal/gp;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 123
    :goto_0
    return-object v0

    .line 104
    :cond_0
    monitor-enter p0

    .line 105
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/gp;->b(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/gp;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    monitor-exit p0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 111
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide v4

    .line 112
    iget-object v3, p0, Lcom/tapjoy/internal/gp;->c:Landroid/content/SharedPreferences;

    const-wide/16 v6, 0x0

    invoke-interface {v3, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 113
    cmp-long v3, v6, v4

    if-ltz v3, :cond_2

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 115
    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    .line 117
    :cond_2
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v3, v8

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 118
    cmp-long v3, v6, v10

    if-eqz v3, :cond_3

    .line 119
    iget-object v3, p0, Lcom/tapjoy/internal/gp;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    iget-object v3, p0, Lcom/tapjoy/internal/gp;->d:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 123
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tapjoy/internal/gp;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tapjoy/internal/gp$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/gp$1;-><init>(Lcom/tapjoy/internal/gp;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 97
    return-void
.end method

.method final b()Ljava/io/File;
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/tapjoy/internal/gp;->f:Ljava/io/File;

    .line 209
    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tapjoy/internal/gp;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "tapjoy_mm_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    iput-object v0, p0, Lcom/tapjoy/internal/gp;->f:Ljava/io/File;

    .line 214
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 217
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 218
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 221
    :cond_2
    return-object v0
.end method

.method final declared-synchronized b(Ljava/net/URL;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/cl;->a([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/hi;->a([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 185
    iget-object v1, p0, Lcom/tapjoy/internal/gp;->d:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    if-nez v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/tapjoy/internal/gp;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 189
    :cond_1
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    const/4 v1, 0x0

    .line 196
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    iget-object v4, p0, Lcom/tapjoy/internal/gp;->d:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 199
    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/gp;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 202
    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.class public Lcom/tapjoy/TapjoyCache$CacheAssetThread;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheAssetThread"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TapjoyCache;

.field private b:Ljava/net/URL;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method public constructor <init>(Lcom/tapjoy/TapjoyCache;Ljava/net/URL;Ljava/lang/String;J)V
    .locals 4

    iput-object p1, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->a:Lcom/tapjoy/TapjoyCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->b:Ljava/net/URL;

    iput-object p3, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->d:J

    iget-wide v0, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->d:J

    :cond_0
    invoke-static {p1}, Lcom/tapjoy/TapjoyCache;->a(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->b:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 10

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->b:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->a:Lcom/tapjoy/TapjoyCache;

    invoke-static {v0}, Lcom/tapjoy/TapjoyCache;->b(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tapjoy/TapjoyCacheMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->a:Lcom/tapjoy/TapjoyCache;

    invoke-static {v0}, Lcom/tapjoy/TapjoyCache;->b(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TapjoyCachedAssetData;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->a:Lcom/tapjoy/TapjoyCache;

    invoke-static {v0}, Lcom/tapjoy/TapjoyCache;->b(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TapjoyCachedAssetData;

    iget-wide v2, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/TapjoyCachedAssetData;->resetTimeToLive(J)V

    :goto_0
    const-string v0, "TapjoyCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reseting time to live for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->b:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->a:Lcom/tapjoy/TapjoyCache;

    invoke-static {v0}, Lcom/tapjoy/TapjoyCache;->a(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->a:Lcom/tapjoy/TapjoyCache;

    invoke-static {v0}, Lcom/tapjoy/TapjoyCache;->b(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TapjoyCachedAssetData;

    const-wide/32 v2, 0x15180

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/TapjoyCachedAssetData;->resetTimeToLive(J)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tapjoy/TapjoyCache;->removeAssetFromCache(Ljava/lang/String;)Z

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->a:Lcom/tapjoy/TapjoyCache;

    invoke-static {v1}, Lcom/tapjoy/TapjoyCache;->c(Lcom/tapjoy/TapjoyCache;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "TapjoyCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Downloading and caching asset from: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->b:Ljava/net/URL;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->b:Ljava/net/URL;

    invoke-static {v0}, Lcom/tapjoy/internal/eh;->a(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v3, v1}, Lcom/tapjoy/TapjoyUtil;->writeFileToDevice(Ljava/io/BufferedInputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :goto_3
    new-instance v0, Lcom/tapjoy/TapjoyCachedAssetData;

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->b:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-wide v6, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->d:J

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/tapjoy/TapjoyCachedAssetData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->c:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyCachedAssetData;->setOfferID(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->a:Lcom/tapjoy/TapjoyCache;

    invoke-static {v1}, Lcom/tapjoy/TapjoyCache;->b(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/tapjoy/TapjoyCacheMap;->put(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;)Lcom/tapjoy/TapjoyCachedAssetData;

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->a:Lcom/tapjoy/TapjoyCache;

    invoke-static {v1}, Lcom/tapjoy/TapjoyCache;->a(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    const-string v1, "TapjoyCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "----- Download complete -----"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->a:Lcom/tapjoy/TapjoyCache;

    invoke-static {v0}, Lcom/tapjoy/TapjoyCache;->a(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_6
    const-string v3, "TapjoyCache"

    new-instance v6, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v7, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->NETWORK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Network timeout during caching: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v3, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->a:Lcom/tapjoy/TapjoyCache;

    invoke-static {v0}, Lcom/tapjoy/TapjoyCache;->a(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-static {v5}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v0

    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_5
    :goto_5
    if-eqz v1, :cond_0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v1

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object v3, v2

    :goto_6
    :try_start_9
    const-string v1, "TapjoyCache"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error caching asset: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->a:Lcom/tapjoy/TapjoyCache;

    invoke-static {v0}, Lcom/tapjoy/TapjoyCache;->a(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-static {v5}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v0

    if-eqz v3, :cond_6

    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_6
    :goto_7
    if-eqz v2, :cond_0

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_8
    if-eqz v3, :cond_7

    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_7
    :goto_9
    if-eqz v2, :cond_8

    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    :cond_8
    :goto_a
    throw v0

    :catch_5
    move-exception v0

    goto/16 :goto_2

    :catch_6
    move-exception v0

    goto/16 :goto_3

    :catch_7
    move-exception v2

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_9

    :catch_a
    move-exception v1

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_8

    :catch_b
    move-exception v0

    goto :goto_6

    :catch_c
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_d
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_4

    :catch_e
    move-exception v0

    move-object v2, v3

    goto/16 :goto_4
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

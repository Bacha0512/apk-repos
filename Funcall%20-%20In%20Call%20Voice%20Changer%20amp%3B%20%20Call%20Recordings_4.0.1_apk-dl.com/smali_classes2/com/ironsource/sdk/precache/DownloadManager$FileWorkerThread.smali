.class Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileWorkerThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/ironsource/sdk/precache/DownloadManager$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mConnectionRetries:J

.field private mDirectory:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFileUrl:Ljava/lang/String;

.field private mTmpFilesDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "connectionRetries"    # J
    .param p6, "tmpFilesDirectory"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileUrl:Ljava/lang/String;

    .line 340
    iput-object p2, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mDirectory:Ljava/lang/String;

    .line 341
    iput-object p3, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    .line 342
    iput-wide p4, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    .line 343
    iput-object p6, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mTmpFilesDirectory:Ljava/lang/String;

    .line 344
    return-void
.end method


# virtual methods
.method public call()Lcom/ironsource/sdk/precache/DownloadManager$Result;
    .locals 13

    .prologue
    const/16 v12, 0x3f1

    .line 361
    const/4 v4, 0x0

    .line 363
    .local v4, "results":Lcom/ironsource/sdk/precache/DownloadManager$Result;
    iget-wide v8, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 365
    const-wide/16 v8, 0x1

    iput-wide v8, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    .line 369
    :cond_0
    const/4 v7, 0x0

    .local v7, "tryIndex":I
    :goto_0
    int-to-long v8, v7

    iget-wide v10, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 371
    iget-object v8, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileUrl:Ljava/lang/String;

    invoke-virtual {p0, v8, v7}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->downloadContent(Ljava/lang/String;I)Lcom/ironsource/sdk/precache/DownloadManager$Result;

    move-result-object v4

    .line 372
    iget v3, v4, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    .line 374
    .local v3, "responseCode":I
    const/16 v8, 0x3f0

    if-eq v3, v8, :cond_3

    if-eq v3, v12, :cond_3

    .line 380
    .end local v3    # "responseCode":I
    :cond_1
    if-eqz v4, :cond_2

    iget-object v8, v4, Lcom/ironsource/sdk/precache/DownloadManager$Result;->body:[B

    if-eqz v8, :cond_2

    .line 381
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mDirectory:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "origFileName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mTmpFilesDirectory:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "tmp_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, "tmpFileName":Ljava/lang/String;
    :try_start_0
    iget-object v8, v4, Lcom/ironsource/sdk/precache/DownloadManager$Result;->body:[B

    invoke-virtual {p0, v8, v5}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->saveFile([BLjava/lang/String;)I

    move-result v6

    .line 386
    .local v6, "totalBytesRead":I
    if-nez v6, :cond_4

    .line 387
    const/16 v8, 0x3ee

    iput v8, v4, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    .line 406
    .end local v2    # "origFileName":Ljava/lang/String;
    .end local v5    # "tmpFileName":Ljava/lang/String;
    .end local v6    # "totalBytesRead":I
    :cond_2
    :goto_1
    return-object v4

    .line 369
    .restart local v3    # "responseCode":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 388
    .end local v3    # "responseCode":I
    .restart local v2    # "origFileName":Ljava/lang/String;
    .restart local v5    # "tmpFileName":Ljava/lang/String;
    .restart local v6    # "totalBytesRead":I
    :cond_4
    invoke-virtual {p0, v5, v2}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 389
    const/16 v8, 0x3fc

    iput v8, v4, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 391
    .end local v6    # "totalBytesRead":I
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/16 v8, 0x3fa

    iput v8, v4, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_1

    .line 393
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 395
    const-string v8, "DownloadManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_5
    iput v12, v4, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_1

    .line 398
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 399
    .local v1, "err":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 400
    const-string v8, "DownloadManager"

    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_6
    const/16 v8, 0x3fb

    iput v8, v4, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->call()Lcom/ironsource/sdk/precache/DownloadManager$Result;

    move-result-object v0

    return-object v0
.end method

.method downloadContent(Ljava/lang/String;I)Lcom/ironsource/sdk/precache/DownloadManager$Result;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tryNumber"    # I

    .prologue
    const/16 v9, 0xc8

    .line 412
    new-instance v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;

    invoke-direct {v7}, Lcom/ironsource/sdk/precache/DownloadManager$Result;-><init>()V

    .line 414
    .local v7, "results":Lcom/ironsource/sdk/precache/DownloadManager$Result;
    const/4 v1, 0x0

    .line 416
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 418
    .local v6, "responseCode":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 419
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 420
    const/16 v8, 0x3ef

    iput v8, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    .line 490
    :goto_0
    return-object v7

    .line 423
    :cond_0
    const/4 v4, 0x0

    .line 426
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 430
    .local v5, "mUrl":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 432
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 433
    const-string v8, "GET"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 435
    const/16 v8, 0x1388

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 436
    const/16 v8, 0x1388

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 438
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 439
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 440
    if-lt v6, v9, :cond_1

    const/16 v8, 0x190

    if-lt v6, v8, :cond_5

    .line 441
    :cond_1
    const/16 v6, 0x3f3

    .line 447
    :goto_1
    if-eq v6, v9, :cond_2

    .line 448
    const-string v8, "DownloadManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " RESPONSE CODE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ATTEMPT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :cond_2
    if-eqz v4, :cond_3

    .line 476
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 482
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 483
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_4
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v6, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_0

    .line 443
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 444
    invoke-virtual {p0, v4}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v8

    iput-object v8, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->body:[B
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 454
    .end local v5    # "mUrl":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 455
    .local v2, "e":Ljava/net/MalformedURLException;
    const/16 v6, 0x3ec

    .line 475
    if-eqz v4, :cond_6

    .line 476
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 482
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 483
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_7
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v6, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_0

    .line 478
    .restart local v5    # "mUrl":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 479
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 478
    .end local v5    # "mUrl":Ljava/net/URL;
    .local v2, "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v2

    .line 479
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 456
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 457
    .local v2, "e":Ljava/net/URISyntaxException;
    const/16 v6, 0x3f2

    .line 475
    if-eqz v4, :cond_8

    .line 476
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 482
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    .line 483
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_9
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v6, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_0

    .line 478
    .restart local v2    # "e":Ljava/net/URISyntaxException;
    :catch_4
    move-exception v2

    .line 479
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 458
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 459
    .local v2, "e":Ljava/net/SocketTimeoutException;
    const/16 v6, 0x3f0

    .line 475
    if-eqz v4, :cond_a

    .line 476
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 482
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 483
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_b
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v6, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_0

    .line 478
    .restart local v2    # "e":Ljava/net/SocketTimeoutException;
    :catch_6
    move-exception v2

    .line 479
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 460
    .end local v2    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 461
    .local v2, "e":Ljava/io/FileNotFoundException;
    const/16 v6, 0x3fa

    .line 475
    if-eqz v4, :cond_c

    .line 476
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 482
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_c
    :goto_6
    if-eqz v1, :cond_d

    .line 483
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_d
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v6, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_0

    .line 478
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v2

    .line 479
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 462
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 463
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 464
    const-string v8, "DownloadManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 466
    :cond_e
    const/16 v6, 0x3f1

    .line 475
    if-eqz v4, :cond_f

    .line 476
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 482
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_f
    :goto_7
    if-eqz v1, :cond_10

    .line 483
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_10
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v6, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_0

    .line 478
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v2

    .line 479
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 467
    .end local v2    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v3

    .line 468
    .local v3, "err":Ljava/lang/Error;
    const/16 v6, 0x3fb

    .line 469
    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 470
    const-string v8, "DownloadManager"

    invoke-virtual {v3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 475
    :cond_11
    if-eqz v4, :cond_12

    .line 476
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    .line 482
    :cond_12
    :goto_8
    if-eqz v1, :cond_13

    .line 483
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_13
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v6, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_0

    .line 478
    :catch_c
    move-exception v2

    .line 479
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 474
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "err":Ljava/lang/Error;
    :catchall_0
    move-exception v8

    .line 475
    if-eqz v4, :cond_14

    .line 476
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    .line 482
    :cond_14
    :goto_9
    if-eqz v1, :cond_15

    .line 483
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_15
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v6, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    throw v8

    .line 478
    :catch_d
    move-exception v2

    .line 479
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9
.end method

.method getBytes(Ljava/io/InputStream;)[B
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-static {p1}, Lcom/ironsource/sdk/precache/DownloadManager;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "fromName"    # Ljava/lang/String;
    .param p2, "toName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 351
    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method saveFile([BLjava/lang/String;)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "destFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 347
    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->saveFile([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

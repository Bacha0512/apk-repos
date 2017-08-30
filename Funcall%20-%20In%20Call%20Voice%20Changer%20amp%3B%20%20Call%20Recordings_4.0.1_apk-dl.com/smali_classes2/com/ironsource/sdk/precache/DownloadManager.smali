.class public Lcom/ironsource/sdk/precache/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/precache/DownloadManager$Result;,
        Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;,
        Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;,
        Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;,
        Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;
    }
.end annotation


# static fields
.field public static final CAMPAIGNS:Ljava/lang/String; = "campaigns"

.field public static final FILE_ALREADY_EXIST:Ljava/lang/String; = "file_already_exist"

.field protected static final FILE_NOT_FOUND_EXCEPTION:Ljava/lang/String; = "file not found exception"

.field public static final GLOBAL_ASSETS:Ljava/lang/String; = "globalAssets"

.field protected static final HTTP_EMPTY_RESPONSE:Ljava/lang/String; = "http empty response"

.field protected static final HTTP_ERROR_CODE:Ljava/lang/String; = "http error code"

.field protected static final HTTP_NOT_FOUND:Ljava/lang/String; = "http not found"

.field protected static final HTTP_OK:Ljava/lang/String; = "http ok"

.field protected static final IO_EXCEPTION:Ljava/lang/String; = "io exception"

.field protected static final MALFORMED_URL_EXCEPTION:Ljava/lang/String; = "malformed url exception"

.field static final MESSAGE_EMPTY_URL:I = 0x3ef

.field static final MESSAGE_FILE_DOWNLOAD_FAIL:I = 0x3f9

.field static final MESSAGE_FILE_DOWNLOAD_SUCCESS:I = 0x3f8

.field static final MESSAGE_FILE_NOT_FOUND_EXCEPTION:I = 0x3fa

.field static final MESSAGE_GENERAL_HTTP_ERROR_CODE:I = 0x3f3

.field static final MESSAGE_HTTP_EMPTY_RESPONSE:I = 0x3ee

.field static final MESSAGE_HTTP_NOT_FOUND:I = 0x3ed

.field static final MESSAGE_INIT_BC_FAIL:I = 0x3f6

.field static final MESSAGE_IO_EXCEPTION:I = 0x3f1

.field static final MESSAGE_MALFORMED_URL_EXCEPTION:I = 0x3ec

.field static final MESSAGE_NUM_OF_BANNERS_TO_CACHE:I = 0x3f5

.field static final MESSAGE_NUM_OF_BANNERS_TO_INIT_SUCCESS:I = 0x3f4

.field static final MESSAGE_OUT_OF_MEMORY_EXCEPTION:I = 0x3fb

.field static final MESSAGE_SOCKET_TIMEOUT_EXCEPTION:I = 0x3f0

.field static final MESSAGE_TMP_FILE_RENAME_FAILED:I = 0x3fc

.field static final MESSAGE_URI_SYNTAX_EXCEPTION:I = 0x3f2

.field static final MESSAGE_ZERO_CAMPAIGNS_TO_INIT_SUCCESS:I = 0x3f7

.field public static final NO_DISK_SPACE:Ljava/lang/String; = "no_disk_space"

.field public static final NO_NETWORK_CONNECTION:Ljava/lang/String; = "no_network_connection"

.field public static final OPERATION_TIMEOUT:I = 0x1388

.field protected static final OUT_OF_MEMORY_EXCEPTION:Ljava/lang/String; = "out of memory exception"

.field public static final SETTINGS:Ljava/lang/String; = "settings"

.field protected static final SOCKET_TIMEOUT_EXCEPTION:Ljava/lang/String; = "socket timeout exception"

.field public static final STORAGE_UNAVAILABLE:Ljava/lang/String; = "sotrage_unavailable"

.field private static final TAG:Ljava/lang/String; = "DownloadManager"

.field private static final TEMP_DIR_FOR_FILES:Ljava/lang/String; = "temp"

.field private static final TEMP_PREFIX_FOR_FILES:Ljava/lang/String; = "tmp_"

.field private static final UNABLE_TO_CREATE_FOLDER:Ljava/lang/String; = "unable_to_create_folder"

.field protected static final URI_SYNTAX_EXCEPTION:Ljava/lang/String; = "uri syntax exception"

.field public static final UTF8_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;


# instance fields
.field private mCacheRootDirectory:Ljava/lang/String;

.field private mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

.field private mMobileControllerThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "cacheRootDirectory"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/ironsource/sdk/precache/DownloadManager;->getDownloadHandler()Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

    .line 93
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    const-string v1, "temp"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    const-string v1, "temp"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    return-void
.end method

.method static getBytes(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 499
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 501
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x2000

    new-array v2, v3, [B

    .line 502
    .local v2, "data":[B
    :goto_0
    array-length v3, v2

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 503
    invoke-virtual {v0, v2, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 505
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 506
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/ironsource/sdk/precache/DownloadManager;
    .locals 2
    .param p0, "cacheRootDirectory"    # Ljava/lang/String;

    .prologue
    .line 98
    const-class v1, Lcom/ironsource/sdk/precache/DownloadManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/precache/DownloadManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    .line 101
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public downloadFile(Lcom/ironsource/sdk/data/SSAFile;)V
    .locals 4
    .param p1, "file"    # Lcom/ironsource/sdk/data/SSAFile;

    .prologue
    .line 159
    new-instance v0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;

    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

    iget-object v2, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ironsource/sdk/precache/DownloadManager;->getTempFilesDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;-><init>(Lcom/ironsource/sdk/data/SSAFile;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v0, "worker":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 161
    return-void
.end method

.method public downloadMobileControllerFile(Lcom/ironsource/sdk/data/SSAFile;)V
    .locals 4
    .param p1, "file"    # Lcom/ironsource/sdk/data/SSAFile;

    .prologue
    .line 164
    new-instance v0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;

    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

    iget-object v2, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ironsource/sdk/precache/DownloadManager;->getTempFilesDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;-><init>(Lcom/ironsource/sdk/data/SSAFile;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v0, "mobileControllerWorker":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    .line 166
    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 167
    return-void
.end method

.method getDownloadHandler()Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

    invoke-direct {v0}, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;-><init>()V

    return-object v0
.end method

.method getTempFilesDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMobileControllerThreadLive()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    sput-object v1, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    .line 154
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

    invoke-virtual {v0}, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->release()V

    .line 155
    iput-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

    .line 156
    return-void
.end method

.method public setOnPreCacheCompletion(Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;)V
    .locals 1
    .param p1, "listener"    # Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->setOnPreCacheCompletion(Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;)V

    .line 150
    return-void
.end method

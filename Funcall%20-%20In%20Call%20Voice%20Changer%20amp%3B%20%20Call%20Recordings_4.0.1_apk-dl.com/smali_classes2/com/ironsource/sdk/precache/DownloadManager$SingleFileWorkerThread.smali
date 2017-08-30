.class Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleFileWorkerThread"
.end annotation


# instance fields
.field private mCacheRootDirectory:Ljava/lang/String;

.field private mConnectionRetries:J

.field mDownloadHandler:Landroid/os/Handler;

.field private mFile:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private final mTempFilesDirectory:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/data/SSAFile;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Lcom/ironsource/sdk/data/SSAFile;
    .param p2, "downloadHandler"    # Landroid/os/Handler;
    .param p3, "cacheRootDir"    # Ljava/lang/String;
    .param p4, "tempFilesDirectory"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mPath:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->guessFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFileName:Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->getConnectionRetries()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mConnectionRetries:J

    .line 191
    iput-object p3, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mCacheRootDirectory:Ljava/lang/String;

    .line 192
    iput-object p2, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mDownloadHandler:Landroid/os/Handler;

    .line 193
    iput-object p4, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mTempFilesDirectory:Ljava/lang/String;

    .line 194
    return-void
.end method


# virtual methods
.method convertErrorCodeToMessage(I)Ljava/lang/String;
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not defined message for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "errMsg":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 308
    :goto_0
    return-object v0

    .line 280
    :sswitch_0
    const-string v0, "malformed url exception"

    .line 281
    goto :goto_0

    .line 284
    :sswitch_1
    const-string v0, "http not found"

    .line 285
    goto :goto_0

    .line 287
    :sswitch_2
    const-string v0, "http empty response"

    .line 288
    goto :goto_0

    .line 290
    :sswitch_3
    const-string v0, "uri syntax exception"

    .line 291
    goto :goto_0

    .line 293
    :sswitch_4
    const-string v0, "http error code"

    .line 294
    goto :goto_0

    .line 296
    :sswitch_5
    const-string v0, "file not found exception"

    .line 297
    goto :goto_0

    .line 299
    :sswitch_6
    const-string v0, "socket timeout exception"

    .line 300
    goto :goto_0

    .line 302
    :sswitch_7
    const-string v0, "io exception"

    .line 303
    goto :goto_0

    .line 305
    :sswitch_8
    const-string v0, "out of memory exception"

    goto :goto_0

    .line 278
    :sswitch_data_0
    .sparse-switch
        0x194 -> :sswitch_1
        0x3ec -> :sswitch_0
        0x3ed -> :sswitch_1
        0x3ee -> :sswitch_2
        0x3f0 -> :sswitch_6
        0x3f1 -> :sswitch_7
        0x3f2 -> :sswitch_3
        0x3f3 -> :sswitch_4
        0x3fa -> :sswitch_5
        0x3fb -> :sswitch_8
    .end sparse-switch
.end method

.method public getConnectionRetries()J
    .locals 2

    .prologue
    .line 311
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getConnectionRetries()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method getFileWorkerThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "connectionRetries"    # J
    .param p6, "tmpFilesDirectory"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method getMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 211
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    return-object v0
.end method

.method guessFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cacheRootDirectory"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x3f9

    .line 221
    new-instance v12, Lcom/ironsource/sdk/data/SSAFile;

    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mPath:Ljava/lang/String;

    invoke-direct {v12, v0, v1}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .local v12, "ssaFile":Lcom/ironsource/sdk/data/SSAFile;
    invoke-virtual {p0}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->getMessage()Landroid/os/Message;

    move-result-object v10

    .line 224
    .local v10, "msg":Landroid/os/Message;
    iput-object v12, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mCacheRootDirectory:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mPath:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "folderName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 229
    iput v13, v10, Landroid/os/Message;->what:I

    .line 230
    const-string v0, "unable_to_create_folder"

    invoke-virtual {v12, v0}, Lcom/ironsource/sdk/data/SSAFile;->setErrMsg(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 275
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    .line 238
    invoke-virtual {v12}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mConnectionRetries:J

    iget-object v6, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mTempFilesDirectory:Ljava/lang/String;

    move-object v0, p0

    .line 235
    invoke-virtual/range {v0 .. v6}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->getFileWorkerThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;

    move-result-object v9

    .line 242
    .local v9, "fileWorkerThread":Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;
    invoke-virtual {v9}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->call()Lcom/ironsource/sdk/precache/DownloadManager$Result;

    move-result-object v11

    .line 243
    .local v11, "results":Lcom/ironsource/sdk/precache/DownloadManager$Result;
    iget v7, v11, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    .line 247
    .local v7, "code":I
    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    .line 266
    :sswitch_0
    const/16 v0, 0x3f8

    iput v0, v10, Landroid/os/Message;->what:I

    .line 267
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 258
    :sswitch_1
    invoke-virtual {p0, v7}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->convertErrorCodeToMessage(I)Ljava/lang/String;

    move-result-object v8

    .line 260
    .local v8, "errMsg":Ljava/lang/String;
    iput v13, v10, Landroid/os/Message;->what:I

    .line 261
    invoke-virtual {v12, v8}, Lcom/ironsource/sdk/data/SSAFile;->setErrMsg(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 247
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x194 -> :sswitch_1
        0x3ec -> :sswitch_1
        0x3ed -> :sswitch_1
        0x3ee -> :sswitch_1
        0x3f0 -> :sswitch_1
        0x3f1 -> :sswitch_1
        0x3f2 -> :sswitch_1
        0x3f3 -> :sswitch_1
        0x3fa -> :sswitch_1
        0x3fb -> :sswitch_1
    .end sparse-switch
.end method

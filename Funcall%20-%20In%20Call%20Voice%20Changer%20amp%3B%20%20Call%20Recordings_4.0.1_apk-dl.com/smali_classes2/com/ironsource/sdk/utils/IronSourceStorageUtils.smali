.class public Lcom/ironsource/sdk/utils/IronSourceStorageUtils;
.super Ljava/lang/Object;
.source "IronSourceStorageUtils.java"


# static fields
.field private static final SSA_DIRECTORY_NAME:Ljava/lang/String; = "supersonicads"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildFilesMap(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 13
    .param p0, "cacheRootPath"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 291
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v0, "dir":Ljava/io/File;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 293
    .local v4, "jsnObj":Lorg/json/JSONObject;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 295
    .local v3, "fileList":[Ljava/io/File;
    if-eqz v3, :cond_2

    .line 296
    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v2, v3, v6

    .line 299
    .local v2, "entry":Ljava/io/File;
    :try_start_0
    invoke-static {v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v5

    .line 301
    .local v5, "obj":Ljava/lang/Object;
    instance-of v9, v5, Lorg/json/JSONArray;

    if-eqz v9, :cond_1

    .line 302
    const-string v9, "files"

    invoke-static {v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 303
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v9, v5, Lorg/json/JSONObject;

    if-eqz v9, :cond_0

    .line 304
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 308
    .end local v5    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 310
    new-instance v9, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v9}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v12

    aget-object v12, v12, v7

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {v9, v10}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 315
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "entry":Ljava/io/File;
    :cond_2
    return-object v4
.end method

.method private static createRootDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const-string v1, "supersonicads"

    invoke-static {p0, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 133
    .local v0, "rootDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 137
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static deleteAllFiles(Ljava/lang/String;)V
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, "root":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 81
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_1

    .line 92
    :cond_0
    return-void

    .line 84
    :cond_1
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 85
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteAllFiles(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 84
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static declared-synchronized deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "rootCacheDir"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 167
    const-class v5, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;

    monitor-enter v5

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 187
    :cond_0
    :goto_0
    monitor-exit v5

    return v3

    .line 173
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 175
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 179
    array-length v6, v2

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v1, v2, v4

    .line 180
    .local v1, "entry":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 181
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 182
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 179
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 167
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "entry":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3
.end method

.method public static declared-synchronized deleteFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "cacheRootDir"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 238
    const-class v2, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .local v0, "folder":Ljava/io/File;
    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolderContentRecursive(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 238
    .end local v0    # "folder":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static deleteFolderContentRecursive(Ljava/io/File;)Z
    .locals 6
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 248
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 249
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x1

    .line 250
    .local v2, "success":Z
    if-eqz v1, :cond_2

    .line 251
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 252
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolderContentRecursive(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 255
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 256
    const/4 v2, 0x0

    .line 251
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    return v2
.end method

.method public static getCachedFilesMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cacheRootPath"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-static {p0, p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->buildFilesMap(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 274
    .local v1, "jsnObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "path"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheDirName"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isExternalStorageAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 108
    .local v1, "externalCacheDir":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "cachePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .end local v1    # "externalCacheDir":Ljava/io/File;
    :goto_0
    return-object v2

    .line 112
    .end local v0    # "cachePath":Ljava/lang/String;
    .restart local v1    # "externalCacheDir":Ljava/io/File;
    :cond_0
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getInternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0    # "cachePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    .end local v0    # "cachePath":Ljava/lang/String;
    .end local v1    # "externalCacheDir":Ljava/io/File;
    :cond_1
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getInternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .restart local v0    # "cachePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->createRootDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 30
    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->refreshRootDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public static declared-synchronized isFileCached(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAFile;)Z
    .locals 9
    .param p0, "rootDirPath"    # Ljava/lang/String;
    .param p1, "ssaFile"    # Lcom/ironsource/sdk/data/SSAFile;

    .prologue
    const/4 v2, 0x0

    .line 199
    const-class v4, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;

    monitor-enter v4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v1, v5, v3

    .line 204
    .local v1, "entry":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 205
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ironsource/sdk/utils/SDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 206
    const/4 v2, 0x1

    .line 212
    .end local v1    # "entry":Ljava/io/File;
    :cond_0
    monitor-exit v4

    return v2

    .line 202
    .restart local v1    # "entry":Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "entry":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static isPathExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "cachRootPath"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 223
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private static looping(Ljava/io/File;)Ljava/lang/Object;
    .locals 13
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 328
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 329
    .local v0, "arr":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 332
    .local v5, "tempArr":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 333
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 385
    .end local v5    # "tempArr":Lorg/json/JSONArray;
    :goto_0
    return-object v5

    .line 337
    .restart local v5    # "tempArr":Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_1
    if-ge v7, v10, :cond_3

    aget-object v2, v9, v7

    .line 339
    .local v2, "fileEntry":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 340
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 342
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 343
    const-string v11, "files"

    invoke-virtual {v0, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 381
    .end local v2    # "fileEntry":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 383
    new-instance v7, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v7}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-virtual {v7, v9}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_3
    move-object v5, v0

    .line 385
    goto :goto_0

    .line 349
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 350
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getCampaignLastUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "lastUpdate":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 352
    const-string v7, "lastUpdateTime"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    .end local v3    # "lastUpdate":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, "product":Ljava/lang/String;
    const/4 v6, 0x0

    .line 359
    .local v6, "type":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    sget-object v7, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v7}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 360
    sget-object v6, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 367
    :cond_5
    :goto_4
    if-eqz v6, :cond_2

    .line 369
    const-string v7, "applicationUserId"

    invoke-static {v7}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 371
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getUniqueId(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/lang/String;

    move-result-object v9

    .line 370
    invoke-static {v9}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 369
    invoke-virtual {v0, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string v7, "applicationKey"

    invoke-static {v7}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 376
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getApplicationKey(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/lang/String;

    move-result-object v9

    .line 375
    invoke-static {v9}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 374
    invoke-virtual {v0, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 361
    :cond_6
    sget-object v7, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v7}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 362
    sget-object v6, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    goto :goto_4

    .line 363
    :cond_7
    sget-object v7, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v7}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 364
    sget-object v6, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cacheRootDirectory"    # Ljava/lang/String;
    .param p1, "directory"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 151
    .local v1, "isCreated":Z
    if-nez v1, :cond_0

    .line 152
    const/4 v2, 0x0

    .line 155
    .end local v1    # "isCreated":Z
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static refreshRootDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getCurrentSDKVersion()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "storedVerison":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "sdkVer":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 51
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setCurrentSDKVersion(Ljava/lang/String;)V

    .line 54
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 55
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "supersonicads"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteAllFiles(Ljava/lang/String;)V

    .line 59
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getInternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "supersonicads"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteAllFiles(Ljava/lang/String;)V

    .line 62
    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->createRootDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .end local v0    # "cacheDir":Ljava/io/File;
    .local v1, "cacheDirectoryPath":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 64
    .end local v1    # "cacheDirectoryPath":Ljava/lang/String;
    :cond_1
    const-string v4, "supersonicads"

    invoke-static {p0, v4}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "cacheDirectoryPath":Ljava/lang/String;
    goto :goto_0
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "fromName"    # Ljava/lang/String;
    .param p1, "toName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 396
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v1, "srcFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    return v2
.end method

.method public static saveFile([BLjava/lang/String;)I
    .locals 7
    .param p0, "data"    # [B
    .param p1, "destFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 409
    const/4 v5, 0x0

    .line 410
    .local v5, "totalBytesRead":I
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    .local v4, "tmpOutputFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 412
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 414
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const v6, 0x19000

    :try_start_0
    new-array v1, v6, [B

    .line 416
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v2

    .local v2, "bytesRead":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 417
    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    add-int/2addr v5, v2

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 422
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 425
    return v5

    .line 421
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 422
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    throw v6
.end method

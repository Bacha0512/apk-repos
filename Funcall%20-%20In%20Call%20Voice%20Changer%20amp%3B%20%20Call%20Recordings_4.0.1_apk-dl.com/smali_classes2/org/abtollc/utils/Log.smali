.class public Lorg/abtollc/utils/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final LOG_FILE_FOLDER:Ljava/lang/String; = "log_file_folder"

.field private static log:Ljava/io/File;

.field private static logLevel:I

.field private static mContext:Landroid/content/Context;

.field private static useFile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x4

    sput v0, Lorg/abtollc/utils/Log;->logLevel:I

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lorg/abtollc/utils/Log;->log:Ljava/io/File;

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lorg/abtollc/utils/Log;->useFile:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLogFile()V
    .locals 0

    .prologue
    .line 240
    invoke-static {}, Lorg/abtollc/utils/Log;->createlogFile()V

    .line 241
    return-void
.end method

.method private static declared-synchronized createlogFile()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 258
    const-class v3, Lorg/abtollc/utils/Log;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lorg/abtollc/utils/Log;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/abtollc/utils/PreferencesWrapper;->getLogsFile(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v4

    sput-object v4, Lorg/abtollc/utils/Log;->log:Ljava/io/File;

    .line 260
    sget-object v4, Lorg/abtollc/utils/Log;->log:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 282
    .local v1, "f":Ljava/io/File;
    :goto_0
    monitor-exit v3

    return-void

    .line 263
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    :try_start_1
    sget-object v4, Lorg/abtollc/utils/Log;->log:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 264
    sget-object v4, Lorg/abtollc/utils/Log;->log:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 265
    sget-object v4, Lorg/abtollc/utils/Log;->log:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 268
    :cond_1
    sget-object v4, Lorg/abtollc/utils/Log;->log:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    .restart local v1    # "f":Ljava/io/File;
    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v1, v4, v2

    .line 269
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 270
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 268
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 273
    :cond_3
    sget-object v2, Lorg/abtollc/utils/Log;->log:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 275
    :try_start_2
    sget-object v2, Lorg/abtollc/utils/Log;->log:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    :cond_4
    :try_start_3
    const-string v2, "AbtoSDK"

    const-string v4, "build: 20170427"

    invoke-static {v2, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string v2, "Log create"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/abtollc/utils/Log;->log:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 103
    sget v0, Lorg/abtollc/utils/Log;->logLevel:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 104
    const-string v0, "(?i)pj+"

    const-string v1, "ab"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-boolean v0, Lorg/abtollc/utils/Log;->useFile:Z

    if-eqz v0, :cond_0

    .line 107
    const/16 v0, 0x64

    invoke-static {v0, p0, p1}, Lorg/abtollc/utils/Log;->writeLog(CLjava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    sget v0, Lorg/abtollc/utils/Log;->logLevel:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 123
    const-string v0, "(?i)pj+"

    const-string v1, "ab"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    sget-boolean v0, Lorg/abtollc/utils/Log;->useFile:Z

    if-eqz v0, :cond_0

    .line 126
    const/16 v0, 0x64

    invoke-static {v0, p0, p1, p2}, Lorg/abtollc/utils/Log;->writeLog(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 211
    sget v0, Lorg/abtollc/utils/Log;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 212
    const-string v0, "(?i)pj+"

    const-string v1, "ab"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-boolean v0, Lorg/abtollc/utils/Log;->useFile:Z

    if-eqz v0, :cond_0

    .line 215
    const/16 v0, 0x65

    invoke-static {v0, p0, p1}, Lorg/abtollc/utils/Log;->writeLog(CLjava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 230
    sget v0, Lorg/abtollc/utils/Log;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 231
    const-string v0, "(?i)pj+"

    const-string v1, "ab"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    sget-boolean v0, Lorg/abtollc/utils/Log;->useFile:Z

    if-eqz v0, :cond_0

    .line 234
    const/16 v0, 0x65

    invoke-static {v0, p0, p1, p2}, Lorg/abtollc/utils/Log;->writeLog(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    :cond_0
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lorg/abtollc/utils/Log;->logLevel:I

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 139
    sget v0, Lorg/abtollc/utils/Log;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 140
    const-string v0, "(?i)pj+"

    const-string v1, "ab"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-boolean v0, Lorg/abtollc/utils/Log;->useFile:Z

    if-eqz v0, :cond_0

    .line 143
    const/16 v0, 0x69

    invoke-static {v0, p0, p1}, Lorg/abtollc/utils/Log;->writeLog(CLjava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 158
    sget v0, Lorg/abtollc/utils/Log;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 159
    const-string v0, "(?i)pj+"

    const-string v1, "ab"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    sget-boolean v0, Lorg/abtollc/utils/Log;->useFile:Z

    if-eqz v0, :cond_0

    .line 162
    const/16 v0, 0x69

    invoke-static {v0, p0, p1, p2}, Lorg/abtollc/utils/Log;->writeLog(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    sput-object p0, Lorg/abtollc/utils/Log;->mContext:Landroid/content/Context;

    .line 246
    new-instance v1, Lorg/abtollc/utils/PreferencesWrapper;

    sget-object v2, Lorg/abtollc/utils/Log;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    .line 248
    .local v1, "prefs":Lorg/abtollc/utils/PreferencesWrapper;
    const-string v2, "log_level"

    invoke-virtual {v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    .line 249
    .local v0, "loglevel":I
    const-string v2, "log_use_direct_file"

    invoke-virtual {v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lorg/abtollc/utils/Log;->useFile:Z

    .line 250
    sput v0, Lorg/abtollc/utils/Log;->logLevel:I

    .line 252
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 3
    .param p0, "level"    # I

    .prologue
    .line 35
    new-instance v0, Lorg/abtollc/utils/PreferencesWrapper;

    sget-object v1, Lorg/abtollc/utils/Log;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    const-string v1, "log_level"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sput p0, Lorg/abtollc/utils/Log;->logLevel:I

    .line 37
    return-void
.end method

.method public static setUseFile(Z)V
    .locals 2
    .param p0, "use"    # Z

    .prologue
    .line 45
    new-instance v0, Lorg/abtollc/utils/PreferencesWrapper;

    sget-object v1, Lorg/abtollc/utils/Log;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    const-string v1, "log_use_direct_file"

    invoke-virtual {v0, v1, p0}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 46
    sput-boolean p0, Lorg/abtollc/utils/Log;->useFile:Z

    .line 47
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 67
    sget v0, Lorg/abtollc/utils/Log;->logLevel:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 68
    const-string v0, "(?i)pj+"

    const-string v1, "ab"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-boolean v0, Lorg/abtollc/utils/Log;->useFile:Z

    if-eqz v0, :cond_0

    .line 71
    const/16 v0, 0x76

    invoke-static {v0, p0, p1}, Lorg/abtollc/utils/Log;->writeLog(CLjava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    sget v0, Lorg/abtollc/utils/Log;->logLevel:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 87
    const-string v0, "(?i)pj+"

    const-string v1, "ab"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    sget-boolean v0, Lorg/abtollc/utils/Log;->useFile:Z

    if-eqz v0, :cond_0

    .line 90
    const/16 v0, 0x76

    invoke-static {v0, p0, p1, p2}, Lorg/abtollc/utils/Log;->writeLog(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 175
    sget v0, Lorg/abtollc/utils/Log;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 176
    const-string v0, "(?i)pj+"

    const-string v1, "ab"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-boolean v0, Lorg/abtollc/utils/Log;->useFile:Z

    if-eqz v0, :cond_0

    .line 179
    const/16 v0, 0x77

    invoke-static {v0, p0, p1}, Lorg/abtollc/utils/Log;->writeLog(CLjava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 194
    sget v0, Lorg/abtollc/utils/Log;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 195
    const-string v0, "(?i)pj+"

    const-string v1, "ab"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    sget-boolean v0, Lorg/abtollc/utils/Log;->useFile:Z

    if-eqz v0, :cond_0

    .line 198
    const/16 v0, 0x77

    invoke-static {v0, p0, p1, p2}, Lorg/abtollc/utils/Log;->writeLog(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    :cond_0
    return-void
.end method

.method private static declared-synchronized writeLog(CLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "type"    # C
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 287
    const-class v6, Lorg/abtollc/utils/Log;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lorg/abtollc/utils/Log;->log:Ljava/io/File;

    if-nez v5, :cond_0

    .line 288
    invoke-static {}, Lorg/abtollc/utils/Log;->createlogFile()V

    .line 291
    :cond_0
    new-instance v4, Ljava/io/FileWriter;

    sget-object v5, Lorg/abtollc/utils/Log;->log:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v4, v5, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 292
    .local v4, "writer":Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 294
    .local v0, "bufWriter":Ljava/io/BufferedWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v3, "message":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-dd HH:mm:ss.SS"

    sget-object v7, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v2, v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 299
    .local v2, "format":Ljava/text/DateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\t|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 300
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    .end local v0    # "bufWriter":Ljava/io/BufferedWriter;
    .end local v2    # "format":Ljava/text/DateFormat;
    .end local v3    # "message":Ljava/lang/StringBuilder;
    .end local v4    # "writer":Ljava/io/FileWriter;
    :goto_0
    monitor-exit v6

    return-void

    .line 304
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v5, "Log write"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static writeLog(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p0, "type"    # C
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 313
    :try_start_0
    sget-object v5, Lorg/abtollc/utils/Log;->log:Ljava/io/File;

    if-nez v5, :cond_0

    .line 314
    invoke-static {}, Lorg/abtollc/utils/Log;->createlogFile()V

    .line 317
    :cond_0
    new-instance v4, Ljava/io/FileWriter;

    sget-object v5, Lorg/abtollc/utils/Log;->log:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 318
    .local v4, "writer":Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 320
    .local v0, "bufWriter":Ljava/io/BufferedWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v3, "message":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-dd HH:mm:ss.SS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 325
    .local v2, "format":Ljava/text/DateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 326
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v0    # "bufWriter":Ljava/io/BufferedWriter;
    .end local v2    # "format":Ljava/text/DateFormat;
    .end local v3    # "message":Ljava/lang/StringBuilder;
    .end local v4    # "writer":Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

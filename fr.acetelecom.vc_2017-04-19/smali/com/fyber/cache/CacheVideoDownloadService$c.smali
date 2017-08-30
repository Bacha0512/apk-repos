.class final Lcom/fyber/cache/CacheVideoDownloadService$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/cache/CacheVideoDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/cache/CacheVideoDownloadService;

.field private b:Lcom/fyber/utils/j$a;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/fyber/cache/CacheVideoDownloadService;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/fyber/cache/CacheVideoDownloadService$c;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$c;->c:Z

    return-void
.end method

.method private declared-synchronized a(Lcom/fyber/cache/internal/c;)I
    .locals 8

    const/4 v1, 0x4

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    const-string v0, "CacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Downloading video from URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fyber/cache/internal/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fyber/cache/internal/c;->a()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/fyber/cache/CacheVideoDownloadService$c;->a(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {p1}, Lcom/fyber/cache/internal/c;->c()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p1}, Lcom/fyber/cache/internal/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/fyber/utils/j;->a(Ljava/lang/String;Ljava/io/File;)Lcom/fyber/utils/j;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/fyber/utils/j;->a(Z)Lcom/fyber/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/utils/j;->e()Lcom/fyber/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/utils/j;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/j$a;

    iput-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$c;->b:Lcom/fyber/utils/j$a;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$c;->b:Lcom/fyber/utils/j$a;

    invoke-virtual {v0}, Lcom/fyber/utils/j$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$c;->b:Lcom/fyber/utils/j$a;

    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/CacheManager;->d()Lcom/fyber/cache/internal/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/internal/e;->b()V
    :try_end_3
    .catch Lcom/fyber/utils/j$a$a; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/fyber/utils/j$a$b; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$c;->b:Lcom/fyber/utils/j$a;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    const-string v1, "CacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Video downloading from URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fyber/cache/internal/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been interrupted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An error occurred while downloading the videos: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$c;->b:Lcom/fyber/utils/j$a;

    move v0, v2

    goto/16 :goto_0

    :cond_4
    const-string v0, "CacheVideoDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "No permission granted to write to: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private static a(Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CacheVideoDownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cache File with path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has not been created"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "CacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "impossible to create cache File with path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error creating cache File: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/fyber/cache/CacheVideoDownloadService$c;->removeMessages(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/fyber/cache/CacheVideoDownloadService$c;->removeMessages(I)V

    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$c;->b:Lcom/fyber/utils/j$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$c;->c:Z

    const-string v0, "CacheVideoDownloadService"

    const-string v1, "Download handler - canceling downloads"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$c;->b:Lcom/fyber/utils/j$a;

    invoke-virtual {v0}, Lcom/fyber/utils/j$a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$c;->b:Lcom/fyber/utils/j$a;

    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "CacheVideoDownloadService"

    const-string v1, "Download handler - Downloading config..."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "precaching"

    invoke-static {v0}, Lcom/fyber/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/a/a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Lcom/fyber/a/a;)Lcom/fyber/utils/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/utils/u;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Download handler - Config will be fetched from - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fyber/utils/i;->b(Ljava/lang/String;)Lcom/fyber/utils/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/utils/i;->a()Lcom/fyber/utils/b;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/i;

    invoke-virtual {v0}, Lcom/fyber/utils/i;->b()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_0

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/fyber/utils/i;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v1, p0, Lcom/fyber/cache/CacheVideoDownloadService$c;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-static {v1}, Lcom/fyber/cache/CacheVideoDownloadService;->d(Lcom/fyber/cache/CacheVideoDownloadService;)Lcom/fyber/cache/CacheVideoDownloadService$a;

    move-result-object v1

    const/16 v2, 0x44c

    invoke-virtual {v1, v2, v0}, Lcom/fyber/cache/CacheVideoDownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    const-string v2, "CacheVideoDownloadService"

    const-string v3, "An error occurred"

    invoke-static {v2, v3, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    move-object v0, v1

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$c;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-static {v0, v6}, Lcom/fyber/cache/CacheVideoDownloadService;->a(Lcom/fyber/cache/CacheVideoDownloadService;Z)Z

    const-string v0, "CacheVideoDownloadService"

    const-string v1, "Download handler - Downloading video..."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fyber/cache/internal/c;

    invoke-direct {p0, v0}, Lcom/fyber/cache/CacheVideoDownloadService$c;->a(Lcom/fyber/cache/internal/c;)I

    move-result v1

    const-string v2, "CacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Download handler - Video state = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fyber/cache/CacheVideoDownloadService$c;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-static {v2, v5}, Lcom/fyber/cache/CacheVideoDownloadService;->a(Lcom/fyber/cache/CacheVideoDownloadService;Z)Z

    iget-object v2, p0, Lcom/fyber/cache/CacheVideoDownloadService$c;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-static {v2}, Lcom/fyber/cache/CacheVideoDownloadService;->d(Lcom/fyber/cache/CacheVideoDownloadService;)Lcom/fyber/cache/CacheVideoDownloadService$a;

    move-result-object v2

    const/16 v3, 0x488

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/fyber/cache/CacheVideoDownloadService$a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fyber/cache/CacheVideoDownloadService$c;->c:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "canceled"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-boolean v5, p0, Lcom/fyber/cache/CacheVideoDownloadService$c;->c:Z

    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

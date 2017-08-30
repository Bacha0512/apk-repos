.class final Lcom/tapjoy/internal/gp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/URL;

.field final synthetic b:Ljava/io/InputStream;

.field final synthetic c:J

.field final synthetic d:Lcom/tapjoy/internal/gp;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gp;Ljava/net/URL;Ljava/io/InputStream;J)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/tapjoy/internal/gp$2;->d:Lcom/tapjoy/internal/gp;

    iput-object p2, p0, Lcom/tapjoy/internal/gp$2;->a:Ljava/net/URL;

    iput-object p3, p0, Lcom/tapjoy/internal/gp$2;->b:Ljava/io/InputStream;

    iput-wide p4, p0, Lcom/tapjoy/internal/gp$2;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const-wide/32 v0, 0x93a80

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/internal/gp$2;->d:Lcom/tapjoy/internal/gp;

    .line 1230
    const-string v3, "tj_"

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/tapjoy/internal/gp;->b()Ljava/io/File;

    move-result-object v2

    invoke-static {v3, v4, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 139
    if-nez v4, :cond_0

    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tapjoy/internal/gp$2;->a:Ljava/net/URL;

    aput-object v2, v0, v1

    .line 176
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    :try_start_1
    iget-object v3, p0, Lcom/tapjoy/internal/gp$2;->b:Ljava/io/InputStream;

    invoke-static {v3, v2}, Lcom/tapjoy/internal/cy;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 154
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 160
    iget-wide v2, p0, Lcom/tapjoy/internal/gp$2;->c:J

    .line 161
    cmp-long v5, v2, v0

    if-lez v5, :cond_2

    .line 165
    :goto_1
    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    add-long/2addr v0, v2

    .line 167
    iget-object v2, p0, Lcom/tapjoy/internal/gp$2;->d:Lcom/tapjoy/internal/gp;

    monitor-enter v2

    .line 168
    :try_start_2
    iget-object v3, p0, Lcom/tapjoy/internal/gp$2;->d:Lcom/tapjoy/internal/gp;

    iget-object v5, p0, Lcom/tapjoy/internal/gp$2;->a:Ljava/net/URL;

    invoke-virtual {v3, v5}, Lcom/tapjoy/internal/gp;->b(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    .line 169
    iget-object v5, p0, Lcom/tapjoy/internal/gp$2;->d:Lcom/tapjoy/internal/gp;

    invoke-virtual {v5, v3}, Lcom/tapjoy/internal/gp;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 170
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 171
    iget-object v5, p0, Lcom/tapjoy/internal/gp$2;->d:Lcom/tapjoy/internal/gp;

    invoke-static {v5}, Lcom/tapjoy/internal/gp;->c(Lcom/tapjoy/internal/gp;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/tapjoy/internal/gp$2;->a:Ljava/net/URL;

    aput-object v3, v0, v1

    .line 176
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 145
    :catch_0
    move-exception v0

    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tapjoy/internal/gp$2;->a:Ljava/net/URL;

    aput-object v1, v0, v5

    goto :goto_0

    .line 148
    :catch_1
    move-exception v0

    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tapjoy/internal/gp$2;->a:Ljava/net/URL;

    aput-object v1, v0, v5

    goto :goto_0

    .line 156
    :catch_2
    move-exception v0

    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tapjoy/internal/gp$2;->a:Ljava/net/URL;

    aput-object v1, v0, v5

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

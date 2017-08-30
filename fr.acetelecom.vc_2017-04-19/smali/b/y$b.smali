.class final Lb/y$b;
.super Lb/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lb/y;

.field private final c:Lb/f;

.field private final d:Z


# direct methods
.method private constructor <init>(Lb/y;Lb/f;Z)V
    .locals 4

    iput-object p1, p0, Lb/y$b;->a:Lb/y;

    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lb/y;->b:Lb/z;

    invoke-virtual {v3}, Lb/z;->a()Lb/s;

    move-result-object v3

    invoke-virtual {v3}, Lb/s;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lb/a/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lb/y$b;->c:Lb/f;

    iput-boolean p3, p0, Lb/y$b;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lb/y;Lb/f;ZLb/y$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lb/y$b;-><init>(Lb/y;Lb/f;Z)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/y$b;->a:Lb/y;

    iget-object v0, v0, Lb/y;->b:Lb/z;

    invoke-virtual {v0}, Lb/z;->a()Lb/s;

    move-result-object v0

    invoke-virtual {v0}, Lb/s;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lb/y$b;->a:Lb/y;

    iget-boolean v3, p0, Lb/y$b;->d:Z

    invoke-static {v0, v3}, Lb/y;->a(Lb/y;Z)Lb/ab;

    move-result-object v0

    iget-object v3, p0, Lb/y$b;->a:Lb/y;

    iget-boolean v2, v3, Lb/y;->a:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v0, p0, Lb/y$b;->c:Lb/f;

    iget-object v2, p0, Lb/y$b;->a:Lb/y;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lb/f;->a(Lb/e;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lb/y$b;->a:Lb/y;

    invoke-static {v0}, Lb/y;->b(Lb/y;)Lb/w;

    move-result-object v0

    invoke-virtual {v0}, Lb/w;->s()Lb/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb/n;->b(Lb/y$b;)V

    :goto_1
    return-void

    :cond_0
    :try_start_2
    iget-object v2, p0, Lb/y$b;->c:Lb/f;

    iget-object v3, p0, Lb/y$b;->a:Lb/y;

    invoke-interface {v2, v3, v0}, Lb/f;->a(Lb/e;Lb/ab;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    :try_start_3
    sget-object v1, Lb/a/c;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lb/y$b;->a:Lb/y;

    invoke-static {v4}, Lb/y;->a(Lb/y;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    iget-object v0, p0, Lb/y$b;->a:Lb/y;

    invoke-static {v0}, Lb/y;->b(Lb/y;)Lb/w;

    move-result-object v0

    invoke-virtual {v0}, Lb/w;->s()Lb/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb/n;->b(Lb/y$b;)V

    goto :goto_1

    :cond_1
    :try_start_4
    iget-object v1, p0, Lb/y$b;->c:Lb/f;

    iget-object v2, p0, Lb/y$b;->a:Lb/y;

    invoke-interface {v1, v2, v0}, Lb/f;->a(Lb/e;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/y$b;->a:Lb/y;

    invoke-static {v1}, Lb/y;->b(Lb/y;)Lb/w;

    move-result-object v1

    invoke-virtual {v1}, Lb/w;->s()Lb/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lb/n;->b(Lb/y$b;)V

    throw v0

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method

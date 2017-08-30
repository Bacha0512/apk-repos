.class final Lb/a/b/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Lc/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lb/a/b/d;

.field private final b:Lc/i;

.field private c:Z


# direct methods
.method private constructor <init>(Lb/a/b/d;)V
    .locals 2

    iput-object p1, p0, Lb/a/b/d$b;->a:Lb/a/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/i;

    iget-object v1, p0, Lb/a/b/d$b;->a:Lb/a/b/d;

    invoke-static {v1}, Lb/a/b/d;->a(Lb/a/b/d;)Lc/d;

    move-result-object v1

    invoke-interface {v1}, Lc/d;->a()Lc/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/i;-><init>(Lc/s;)V

    iput-object v0, p0, Lb/a/b/d$b;->b:Lc/i;

    return-void
.end method

.method synthetic constructor <init>(Lb/a/b/d;Lb/a/b/d$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/b/d$b;-><init>(Lb/a/b/d;)V

    return-void
.end method


# virtual methods
.method public a()Lc/s;
    .locals 1

    iget-object v0, p0, Lb/a/b/d$b;->b:Lc/i;

    return-object v0
.end method

.method public a_(Lc/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/b/d$b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lb/a/b/d$b;->a:Lb/a/b/d;

    invoke-static {v0}, Lb/a/b/d;->a(Lb/a/b/d;)Lc/d;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lc/d;->j(J)Lc/d;

    iget-object v0, p0, Lb/a/b/d$b;->a:Lb/a/b/d;

    invoke-static {v0}, Lb/a/b/d;->a(Lb/a/b/d;)Lc/d;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    iget-object v0, p0, Lb/a/b/d$b;->a:Lb/a/b/d;

    invoke-static {v0}, Lb/a/b/d;->a(Lb/a/b/d;)Lc/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lc/d;->a_(Lc/c;J)V

    iget-object v0, p0, Lb/a/b/d$b;->a:Lb/a/b/d;

    invoke-static {v0}, Lb/a/b/d;->a(Lb/a/b/d;)Lc/d;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lb/a/b/d$b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lb/a/b/d$b;->c:Z

    iget-object v0, p0, Lb/a/b/d$b;->a:Lb/a/b/d;

    invoke-static {v0}, Lb/a/b/d;->a(Lb/a/b/d;)Lc/d;

    move-result-object v0

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    iget-object v0, p0, Lb/a/b/d$b;->a:Lb/a/b/d;

    iget-object v1, p0, Lb/a/b/d$b;->b:Lc/i;

    invoke-static {v0, v1}, Lb/a/b/d;->a(Lb/a/b/d;Lc/i;)V

    iget-object v0, p0, Lb/a/b/d$b;->a:Lb/a/b/d;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lb/a/b/d;->a(Lb/a/b/d;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lb/a/b/d$b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lb/a/b/d$b;->a:Lb/a/b/d;

    invoke-static {v0}, Lb/a/b/d;->a(Lb/a/b/d;)Lc/d;

    move-result-object v0

    invoke-interface {v0}, Lc/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

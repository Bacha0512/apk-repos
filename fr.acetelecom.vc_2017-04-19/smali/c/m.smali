.class final Lc/m;
.super Ljava/lang/Object;

# interfaces
.implements Lc/d;


# instance fields
.field public final a:Lc/c;

.field public final b:Lc/q;

.field private c:Z


# direct methods
.method public constructor <init>(Lc/q;)V
    .locals 1

    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    invoke-direct {p0, p1, v0}, Lc/m;-><init>(Lc/q;Lc/c;)V

    return-void
.end method

.method public constructor <init>(Lc/q;Lc/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lc/m;->a:Lc/c;

    iput-object p1, p0, Lc/m;->b:Lc/q;

    return-void
.end method


# virtual methods
.method public a(Lc/r;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lc/m;->a:Lc/c;

    const-wide/16 v4, 0x800

    invoke-interface {p1, v2, v4, v5}, Lc/r;->a(Lc/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public a()Lc/s;
    .locals 1

    iget-object v0, p0, Lc/m;->b:Lc/q;

    invoke-interface {v0}, Lc/q;->a()Lc/s;

    move-result-object v0

    return-object v0
.end method

.method public a_(Lc/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/c;->a_(Lc/c;J)V

    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    return-void
.end method

.method public b(Lc/f;)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->a(Lc/f;)Lc/c;

    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->a(Ljava/lang/String;)Lc/c;

    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public c()Lc/c;
    .locals 1

    iget-object v0, p0, Lc/m;->a:Lc/c;

    return-object v0
.end method

.method public c([B)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->b([B)Lc/c;

    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public c([BII)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/c;->b([BII)Lc/c;

    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lc/m;->a:Lc/c;

    iget-wide v2, v1, Lc/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget-object v1, p0, Lc/m;->b:Lc/q;

    iget-object v2, p0, Lc/m;->a:Lc/c;

    iget-object v3, p0, Lc/m;->a:Lc/c;

    iget-wide v4, v3, Lc/c;->b:J

    invoke-interface {v1, v2, v4, v5}, Lc/q;->a_(Lc/c;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Lc/m;->b:Lc/q;

    invoke-interface {v1}, Lc/q;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/t;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public f()Lc/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0}, Lc/c;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lc/m;->b:Lc/q;

    iget-object v3, p0, Lc/m;->a:Lc/c;

    invoke-interface {v2, v3, v0, v1}, Lc/q;->a_(Lc/c;J)V

    :cond_1
    return-object p0
.end method

.method public f(I)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->d(I)Lc/c;

    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    iget-wide v0, v0, Lc/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lc/m;->b:Lc/q;

    iget-object v1, p0, Lc/m;->a:Lc/c;

    iget-object v2, p0, Lc/m;->a:Lc/c;

    iget-wide v2, v2, Lc/c;->b:J

    invoke-interface {v0, v1, v2, v3}, Lc/q;->a_(Lc/c;J)V

    :cond_1
    iget-object v0, p0, Lc/m;->b:Lc/q;

    invoke-interface {v0}, Lc/q;->flush()V

    return-void
.end method

.method public g(I)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->c(I)Lc/c;

    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->b(I)Lc/c;

    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public j(J)Lc/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1, p2}, Lc/c;->i(J)Lc/c;

    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public k(J)Lc/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1, p2}, Lc/c;->h(J)Lc/c;

    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc/m;->b:Lc/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Lc/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0}, Lc/c;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lc/m;->b:Lc/q;

    iget-object v3, p0, Lc/m;->a:Lc/c;

    invoke-interface {v2, v3, v0, v1}, Lc/q;->a_(Lc/c;J)V

    :cond_1
    return-object p0
.end method

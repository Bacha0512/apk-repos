.class public Lc/i;
.super Lc/s;


# instance fields
.field private a:Lc/s;


# direct methods
.method public constructor <init>(Lc/s;)V
    .locals 2

    invoke-direct {p0}, Lc/s;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lc/i;->a:Lc/s;

    return-void
.end method


# virtual methods
.method public final a(Lc/s;)Lc/i;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lc/i;->a:Lc/s;

    return-object p0
.end method

.method public final a()Lc/s;
    .locals 1

    iget-object v0, p0, Lc/i;->a:Lc/s;

    return-object v0
.end method

.method public a(J)Lc/s;
    .locals 1

    iget-object v0, p0, Lc/i;->a:Lc/s;

    invoke-virtual {v0, p1, p2}, Lc/s;->a(J)Lc/s;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lc/s;
    .locals 1

    iget-object v0, p0, Lc/i;->a:Lc/s;

    invoke-virtual {v0, p1, p2, p3}, Lc/s;->a(JLjava/util/concurrent/TimeUnit;)Lc/s;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Lc/i;->a:Lc/s;

    invoke-virtual {v0}, Lc/s;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Lc/s;
    .locals 1

    iget-object v0, p0, Lc/i;->a:Lc/s;

    invoke-virtual {v0}, Lc/s;->f()Lc/s;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/i;->a:Lc/s;

    invoke-virtual {v0}, Lc/s;->g()V

    return-void
.end method

.method public h_()J
    .locals 2

    iget-object v0, p0, Lc/i;->a:Lc/s;

    invoke-virtual {v0}, Lc/s;->h_()J

    move-result-wide v0

    return-wide v0
.end method

.method public i_()Z
    .locals 1

    iget-object v0, p0, Lc/i;->a:Lc/s;

    invoke-virtual {v0}, Lc/s;->i_()Z

    move-result v0

    return v0
.end method

.method public j_()Lc/s;
    .locals 1

    iget-object v0, p0, Lc/i;->a:Lc/s;

    invoke-virtual {v0}, Lc/s;->j_()Lc/s;

    move-result-object v0

    return-object v0
.end method

.class final Ld/h;
.super Ljava/lang/Object;

# interfaces
.implements Ld/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/h$a;,
        Ld/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ld/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/n",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:[Ljava/lang/Object;

.field private volatile c:Z

.field private d:Lb/e;

.field private e:Ljava/lang/Throwable;

.field private f:Z


# direct methods
.method constructor <init>(Ld/n;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/n",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/h;->a:Ld/n;

    iput-object p2, p0, Ld/h;->b:[Ljava/lang/Object;

    return-void
.end method

.method private e()Lb/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ld/h;->a:Ld/n;

    iget-object v1, p0, Ld/h;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ld/n;->a([Ljava/lang/Object;)Lb/z;

    move-result-object v0

    iget-object v1, p0, Ld/h;->a:Ld/n;

    iget-object v1, v1, Ld/n;->c:Lb/e$a;

    invoke-interface {v1, v0}, Lb/e$a;->a(Lb/z;)Lb/e;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Call.Factory returned null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Ld/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/l",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld/h;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ld/h;->f:Z

    iget-object v0, p0, Ld/h;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld/h;->e:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/h;->e:Ljava/lang/Throwable;

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_1
    iget-object v0, p0, Ld/h;->e:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_2
    iget-object v0, p0, Ld/h;->d:Lb/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    :try_start_2
    invoke-direct {p0}, Ld/h;->e()Lb/e;

    move-result-object v0

    iput-object v0, p0, Ld/h;->d:Lb/e;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-boolean v1, p0, Ld/h;->c:Z

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lb/e;->b()V

    :cond_4
    invoke-interface {v0}, Lb/e;->a()Lb/ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/h;->a(Lb/ab;)Ld/l;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_4
    iput-object v0, p0, Ld/h;->e:Ljava/lang/Throwable;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method a(Lb/ab;)Ld/l;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/ab;",
            ")",
            "Ld/l",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lb/ab;->f()Lb/ac;

    move-result-object v1

    invoke-virtual {p1}, Lb/ab;->g()Lb/ab$a;

    move-result-object v0

    new-instance v2, Ld/h$b;

    invoke-virtual {v1}, Lb/ac;->a()Lb/u;

    move-result-object v3

    invoke-virtual {v1}, Lb/ac;->b()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Ld/h$b;-><init>(Lb/u;J)V

    invoke-virtual {v0, v2}, Lb/ab$a;->a(Lb/ac;)Lb/ab$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/ab$a;->a()Lb/ab;

    move-result-object v0

    invoke-virtual {v0}, Lb/ab;->b()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_0

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    :cond_0
    :try_start_0
    invoke-static {v1}, Ld/o;->a(Lb/ac;)Lb/ac;

    move-result-object v2

    invoke-static {v2, v0}, Ld/l;->a(Lb/ac;Lb/ab;)Ld/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Lb/ac;->close()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lb/ac;->close()V

    throw v0

    :cond_1
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_2

    const/16 v3, 0xcd

    if-ne v2, v3, :cond_3

    :cond_2
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ld/l;->a(Ljava/lang/Object;Lb/ab;)Ld/l;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v2, Ld/h$a;

    invoke-direct {v2, v1}, Ld/h$a;-><init>(Lb/ac;)V

    :try_start_1
    iget-object v1, p0, Ld/h;->a:Ld/n;

    invoke-virtual {v1, v2}, Ld/n;->a(Lb/ac;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Ld/l;->a(Ljava/lang/Object;Lb/ab;)Ld/l;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v2}, Ld/h$a;->f()V

    throw v0
.end method

.method public a(Ld/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/d",
            "<TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld/h;->f:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ld/h;->f:Z

    iget-object v2, p0, Ld/h;->d:Lb/e;

    iget-object v0, p0, Ld/h;->e:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    :try_start_2
    invoke-direct {p0}, Ld/h;->e()Lb/e;

    move-result-object v1

    iput-object v1, p0, Ld/h;->d:Lb/e;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {p1, p0, v0}, Ld/d;->a(Ld/b;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_4
    iput-object v0, p0, Ld/h;->e:Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Ld/h;->c:Z

    if-eqz v0, :cond_3

    invoke-interface {v1}, Lb/e;->b()V

    :cond_3
    new-instance v0, Ld/h$1;

    invoke-direct {v0, p0, p1}, Ld/h$1;-><init>(Ld/h;Ld/d;)V

    invoke-interface {v1, v0}, Lb/e;->a(Lb/f;)V

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Ld/h;->c:Z

    return v0
.end method

.method public synthetic c()Ld/b;
    .locals 1

    invoke-virtual {p0}, Ld/h;->d()Ld/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ld/h;->d()Ld/h;

    move-result-object v0

    return-object v0
.end method

.method public d()Ld/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/h",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ld/h;

    iget-object v1, p0, Ld/h;->a:Ld/n;

    iget-object v2, p0, Ld/h;->b:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ld/h;-><init>(Ld/n;[Ljava/lang/Object;)V

    return-object v0
.end method

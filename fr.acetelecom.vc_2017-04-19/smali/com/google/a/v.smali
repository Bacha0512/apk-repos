.class final Lcom/google/a/v;
.super Lcom/google/a/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/w",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/s",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/k",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/a/f;

.field private final d:Lcom/google/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/a/x;

.field private f:Lcom/google/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/w",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/s;Lcom/google/a/k;Lcom/google/a/f;Lcom/google/a/c/a;Lcom/google/a/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/s",
            "<TT;>;",
            "Lcom/google/a/k",
            "<TT;>;",
            "Lcom/google/a/f;",
            "Lcom/google/a/c/a",
            "<TT;>;",
            "Lcom/google/a/x;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/a/w;-><init>()V

    iput-object p1, p0, Lcom/google/a/v;->a:Lcom/google/a/s;

    iput-object p2, p0, Lcom/google/a/v;->b:Lcom/google/a/k;

    iput-object p3, p0, Lcom/google/a/v;->c:Lcom/google/a/f;

    iput-object p4, p0, Lcom/google/a/v;->d:Lcom/google/a/c/a;

    iput-object p5, p0, Lcom/google/a/v;->e:Lcom/google/a/x;

    return-void
.end method

.method public static a(Lcom/google/a/c/a;Ljava/lang/Object;)Lcom/google/a/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/a",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/a/x;"
        }
    .end annotation

    new-instance v0, Lcom/google/a/v$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/google/a/v$a;-><init>(Ljava/lang/Object;Lcom/google/a/c/a;ZLjava/lang/Class;)V

    return-object v0
.end method

.method private b()Lcom/google/a/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/w",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/v;->f:Lcom/google/a/w;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/v;->c:Lcom/google/a/f;

    iget-object v1, p0, Lcom/google/a/v;->e:Lcom/google/a/x;

    iget-object v2, p0, Lcom/google/a/v;->d:Lcom/google/a/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/f;->a(Lcom/google/a/x;Lcom/google/a/c/a;)Lcom/google/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/v;->f:Lcom/google/a/w;

    goto :goto_0
.end method

.method public static b(Lcom/google/a/c/a;Ljava/lang/Object;)Lcom/google/a/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/a",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/a/x;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/google/a/v$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/google/a/v$a;-><init>(Ljava/lang/Object;Lcom/google/a/c/a;ZLjava/lang/Class;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/v;->b:Lcom/google/a/k;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/a/v;->b()Lcom/google/a/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/w;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/a/b/j;->a(Lcom/google/a/d/a;)Lcom/google/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/l;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/a/v;->b:Lcom/google/a/k;

    iget-object v2, p0, Lcom/google/a/v;->d:Lcom/google/a/c/a;

    invoke-virtual {v2}, Lcom/google/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/google/a/v;->c:Lcom/google/a/f;

    iget-object v3, v3, Lcom/google/a/f;->a:Lcom/google/a/j;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/a/k;->b(Lcom/google/a/l;Ljava/lang/reflect/Type;Lcom/google/a/j;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/v;->a:Lcom/google/a/s;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/a/v;->b()Lcom/google/a/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/a/w;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/google/a/d/c;->f()Lcom/google/a/d/c;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/a/v;->a:Lcom/google/a/s;

    iget-object v1, p0, Lcom/google/a/v;->d:Lcom/google/a/c/a;

    invoke-virtual {v1}, Lcom/google/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/v;->c:Lcom/google/a/f;

    iget-object v2, v2, Lcom/google/a/f;->b:Lcom/google/a/r;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/a/s;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/a/r;)Lcom/google/a/l;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/b/j;->a(Lcom/google/a/l;Lcom/google/a/d/c;)V

    goto :goto_0
.end method

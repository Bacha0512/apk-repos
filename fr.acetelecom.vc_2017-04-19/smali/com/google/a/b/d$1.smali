.class Lcom/google/a/b/d$1;
.super Lcom/google/a/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/a/b/d;->a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/w",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/google/a/f;

.field final synthetic d:Lcom/google/a/c/a;

.field final synthetic e:Lcom/google/a/b/d;

.field private f:Lcom/google/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/w",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/b/d;ZZLcom/google/a/f;Lcom/google/a/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/d$1;->e:Lcom/google/a/b/d;

    iput-boolean p2, p0, Lcom/google/a/b/d$1;->a:Z

    iput-boolean p3, p0, Lcom/google/a/b/d$1;->b:Z

    iput-object p4, p0, Lcom/google/a/b/d$1;->c:Lcom/google/a/f;

    iput-object p5, p0, Lcom/google/a/b/d$1;->d:Lcom/google/a/c/a;

    invoke-direct {p0}, Lcom/google/a/w;-><init>()V

    return-void
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

    iget-object v0, p0, Lcom/google/a/b/d$1;->f:Lcom/google/a/w;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/d$1;->c:Lcom/google/a/f;

    iget-object v1, p0, Lcom/google/a/b/d$1;->e:Lcom/google/a/b/d;

    iget-object v2, p0, Lcom/google/a/b/d$1;->d:Lcom/google/a/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/f;->a(Lcom/google/a/x;Lcom/google/a/c/a;)Lcom/google/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/d$1;->f:Lcom/google/a/w;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 1
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

    iget-boolean v0, p0, Lcom/google/a/b/d$1;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/a/d/a;->n()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/a/b/d$1;->b()Lcom/google/a/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/w;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    .locals 1
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

    iget-boolean v0, p0, Lcom/google/a/b/d$1;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/a/d/c;->f()Lcom/google/a/d/c;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/a/b/d$1;->b()Lcom/google/a/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/a/w;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    goto :goto_0
.end method

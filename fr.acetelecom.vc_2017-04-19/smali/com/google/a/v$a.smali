.class Lcom/google/a/v$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/a",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/s",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/k",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/a/c/a;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/a/c/a",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/a/s;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/a/s;

    :goto_0
    iput-object v0, p0, Lcom/google/a/v$a;->d:Lcom/google/a/s;

    instance-of v0, p1, Lcom/google/a/k;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/a/k;

    :goto_1
    iput-object p1, p0, Lcom/google/a/v$a;->e:Lcom/google/a/k;

    iget-object v0, p0, Lcom/google/a/v$a;->d:Lcom/google/a/s;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/v$a;->e:Lcom/google/a/k;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/a/b/a;->a(Z)V

    iput-object p2, p0, Lcom/google/a/v$a;->a:Lcom/google/a/c/a;

    iput-boolean p3, p0, Lcom/google/a/v$a;->b:Z

    iput-object p4, p0, Lcom/google/a/v$a;->c:Ljava/lang/Class;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object p1, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/w;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/f;",
            "Lcom/google/a/c/a",
            "<TT;>;)",
            "Lcom/google/a/w",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/v$a;->a:Lcom/google/a/c/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/a/v$a;->a:Lcom/google/a/c/a;

    invoke-virtual {v0, p2}, Lcom/google/a/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/a/v$a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/v$a;->a:Lcom/google/a/c/a;

    invoke-virtual {v0}, Lcom/google/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/a/v;

    iget-object v1, p0, Lcom/google/a/v$a;->d:Lcom/google/a/s;

    iget-object v2, p0, Lcom/google/a/v$a;->e:Lcom/google/a/k;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/a/v;-><init>(Lcom/google/a/s;Lcom/google/a/k;Lcom/google/a/f;Lcom/google/a/c/a;Lcom/google/a/x;)V

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/a/v$a;->c:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

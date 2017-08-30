.class public final Lcom/google/a/b/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/b/a/g$a;
    }
.end annotation


# instance fields
.field final a:Z

.field private final b:Lcom/google/a/b/c;


# direct methods
.method public constructor <init>(Lcom/google/a/b/c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/a/g;->b:Lcom/google/a/b/c;

    iput-boolean p2, p0, Lcom/google/a/b/a/g;->a:Z

    return-void
.end method

.method private a(Lcom/google/a/f;Ljava/lang/reflect/Type;)Lcom/google/a/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/f;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/a/w",
            "<*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/a/b/a/m;->f:Lcom/google/a/w;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/google/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/a/f;->a(Lcom/google/a/c/a;)Lcom/google/a/w;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/w;
    .locals 8
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

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/google/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/b/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v3

    invoke-direct {p0, p1, v0}, Lcom/google/a/b/a/g;->a(Lcom/google/a/f;Ljava/lang/reflect/Type;)Lcom/google/a/w;

    move-result-object v4

    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/google/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/a/f;->a(Lcom/google/a/c/a;)Lcom/google/a/w;

    move-result-object v6

    iget-object v0, p0, Lcom/google/a/b/a/g;->b:Lcom/google/a/b/c;

    invoke-virtual {v0, p2}, Lcom/google/a/b/c;->a(Lcom/google/a/c/a;)Lcom/google/a/b/h;

    move-result-object v7

    new-instance v0, Lcom/google/a/b/a/g$a;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/a/b/a/g$a;-><init>(Lcom/google/a/b/a/g;Lcom/google/a/f;Ljava/lang/reflect/Type;Lcom/google/a/w;Ljava/lang/reflect/Type;Lcom/google/a/w;Lcom/google/a/b/h;)V

    goto :goto_0
.end method

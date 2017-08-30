.class public final Lcom/fyber/cache/internal/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/fyber/cache/internal/a$a;",
            "Lcom/fyber/cache/internal/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/cache/internal/b;->c:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a()Lcom/fyber/cache/internal/a;
    .locals 4

    new-instance v2, Lcom/fyber/cache/internal/a;

    iget-object v0, p0, Lcom/fyber/cache/internal/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/fyber/cache/internal/b;->b:Ljava/lang/Integer;

    invoke-direct {v2, v0, v1}, Lcom/fyber/cache/internal/a;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/fyber/cache/internal/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/cache/internal/a$a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/cache/internal/d;

    invoke-virtual {v2, v1, v0}, Lcom/fyber/cache/internal/a;->a(Lcom/fyber/cache/internal/a$a;Lcom/fyber/cache/internal/d;)V

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final a(Lcom/fyber/cache/internal/a$a;Lcom/fyber/cache/internal/d;)Lcom/fyber/cache/internal/b;
    .locals 1

    iget-object v0, p0, Lcom/fyber/cache/internal/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/Integer;)Lcom/fyber/cache/internal/b;
    .locals 0

    iput-object p1, p0, Lcom/fyber/cache/internal/b;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/fyber/cache/internal/b;
    .locals 0

    iput-object p1, p0, Lcom/fyber/cache/internal/b;->a:Ljava/lang/String;

    return-object p0
.end method

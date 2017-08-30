.class public final Lcom/tapjoy/internal/bd;
.super Ljava/util/AbstractMap;


# instance fields
.field private final a:Ljava/util/HashMap;

.field private final b:Lcom/tapjoy/internal/cb;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/HashMap;

    new-instance v0, Lcom/tapjoy/internal/cb;

    invoke-direct {v0}, Lcom/tapjoy/internal/cb;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/bd;->b:Lcom/tapjoy/internal/cb;

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/bd;
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/bd;

    invoke-direct {v0}, Lcom/tapjoy/internal/bd;-><init>()V

    return-object v0
.end method

.method private static a(Lcom/tapjoy/internal/ca;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/internal/ca;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/bd;->b:Lcom/tapjoy/internal/cb;

    invoke-virtual {v0}, Lcom/tapjoy/internal/cb;->a()Lcom/tapjoy/internal/ca;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/tapjoy/internal/ca;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/bd;->b:Lcom/tapjoy/internal/cb;

    invoke-virtual {v0}, Lcom/tapjoy/internal/cb;->a()Lcom/tapjoy/internal/ca;

    move-result-object v0

    if-nez v0, :cond_0

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/bd;->b()V

    iget-object v0, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 2

    invoke-direct {p0}, Lcom/tapjoy/internal/bd;->b()V

    iget-object v0, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ca;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ca;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/bd;->b()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/bd;->b()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/bd;->b()V

    iget-object v0, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ca;

    invoke-static {v0}, Lcom/tapjoy/internal/bd;->a(Lcom/tapjoy/internal/ca;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/bd;->b()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/bd;->b()V

    iget-object v0, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0}, Lcom/tapjoy/internal/bd;->b()V

    iget-object v0, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tapjoy/internal/bd;->b:Lcom/tapjoy/internal/cb;

    new-instance v2, Lcom/tapjoy/internal/ca;

    invoke-direct {v2, p1, p2, v1}, Lcom/tapjoy/internal/ca;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ca;

    invoke-static {v0}, Lcom/tapjoy/internal/bd;->a(Lcom/tapjoy/internal/ca;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/bd;->b()V

    iget-object v0, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ca;

    invoke-static {v0}, Lcom/tapjoy/internal/bd;->a(Lcom/tapjoy/internal/ca;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/bd;->b()V

    iget-object v0, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/bd;->b()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/bd;->b()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

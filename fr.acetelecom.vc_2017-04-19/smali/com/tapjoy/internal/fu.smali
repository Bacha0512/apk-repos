.class public final Lcom/tapjoy/internal/fu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/cj;


# instance fields
.field public final a:Lcom/tapjoy/internal/fm;

.field b:Ljava/util/Set;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/fm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/fm;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fu;->c:Ljava/util/Map;

    invoke-static {}, Lcom/tapjoy/internal/cv;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fu;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/fu;->b:Ljava/util/Set;

    return-void
.end method

.method private a(Lcom/tapjoy/internal/ce;Lcom/tapjoy/internal/gq$a;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    instance-of v0, p1, Lcom/tapjoy/internal/gq;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/tapjoy/internal/gq$a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p2, Lcom/tapjoy/internal/gq$a;->b:Ljava/util/List;

    monitor-enter p0

    :try_start_0
    instance-of v0, v1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-static {v1}, Lcom/tapjoy/internal/ct;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lcom/tapjoy/internal/fu;->b:Ljava/util/Set;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    check-cast p1, Lcom/tapjoy/internal/gq;

    iget-object v0, p1, Lcom/tapjoy/internal/gq;->c:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/tapjoy/internal/gq;->d:Z

    iget-object v2, p0, Lcom/tapjoy/internal/fu;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/tapjoy/internal/fu;->c:Ljava/util/Map;

    iget-object v3, p2, Lcom/tapjoy/internal/gq$a;->a:Lcom/tapjoy/internal/ft;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p2, Lcom/tapjoy/internal/gq$a;->a:Lcom/tapjoy/internal/ft;

    iget-object v3, p0, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/fm;

    iget-object v3, v3, Lcom/tapjoy/internal/fm;->p:Lcom/tapjoy/internal/fn;

    instance-of v4, v2, Lcom/tapjoy/internal/fs;

    if-eqz v4, :cond_3

    const-string v1, "No content for \"{}\""

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/tapjoy/internal/fj;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/fn;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/cw;->a(Ljava/util/Iterator;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    const-string v4, "New content for \"{}\" is ready"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/tapjoy/internal/fj;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/fn;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/fn;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/ce;)V
    .locals 3

    new-instance v0, Lcom/tapjoy/internal/gq$a;

    new-instance v1, Lcom/tapjoy/internal/fs;

    invoke-direct {v1}, Lcom/tapjoy/internal/fs;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/gq$a;-><init>(Lcom/tapjoy/internal/ft;Ljava/util/List;)V

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/ce;Lcom/tapjoy/internal/gq$a;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/ce;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/tapjoy/internal/gq$a;

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/ce;Lcom/tapjoy/internal/gq$a;)V

    return-void
.end method

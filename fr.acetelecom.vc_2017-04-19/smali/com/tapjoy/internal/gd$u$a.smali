.class public final Lcom/tapjoy/internal/gd$u$a;
.super Lcom/tapjoy/internal/do$a;

# interfaces
.implements Lcom/tapjoy/internal/gd$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/util/List;

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$u$a;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic f()Lcom/tapjoy/internal/gd$u$a;
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gd$u$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$u$a;-><init>()V

    return-object v0
.end method

.method private g()Lcom/tapjoy/internal/gd$u$a;
    .locals 4

    new-instance v0, Lcom/tapjoy/internal/gd$u$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$u$a;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$u$a;->d()Lcom/tapjoy/internal/gd$u;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/internal/gd$u;->d()Lcom/tapjoy/internal/gd$u;

    move-result-object v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/tapjoy/internal/gd$u;->a(Lcom/tapjoy/internal/gd$u;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/tapjoy/internal/gd$u$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/tapjoy/internal/gd$u;->a(Lcom/tapjoy/internal/gd$u;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$u$a;->b:Ljava/util/List;

    iget v2, v0, Lcom/tapjoy/internal/gd$u$a;->c:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/tapjoy/internal/gd$u$a;->c:I

    :cond_1
    :goto_1
    iget-object v2, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    invoke-static {v1}, Lcom/tapjoy/internal/gd$u;->b(Lcom/tapjoy/internal/gd$u;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$u$a;->e()V

    iget-object v2, v0, Lcom/tapjoy/internal/gd$u$a;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/tapjoy/internal/gd$u;->a(Lcom/tapjoy/internal/gd$u;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$u$a;->g()Lcom/tapjoy/internal/gd$u$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$u$a;->g()Lcom/tapjoy/internal/gd$u$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/gd$u$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$u$a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gd$t;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$t;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$u$a;->g()Lcom/tapjoy/internal/gd$u$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gd$u;
    .locals 3

    new-instance v0, Lcom/tapjoy/internal/gd$u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/gd$u;-><init>(Lcom/tapjoy/internal/do$a;B)V

    iget v1, p0, Lcom/tapjoy/internal/gd$u$a;->c:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/gd$u$a;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$u$a;->b:Ljava/util/List;

    iget v1, p0, Lcom/tapjoy/internal/gd$u$a;->c:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/tapjoy/internal/gd$u$a;->c:I

    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gd$u$a;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/gd$u;->a(Lcom/tapjoy/internal/gd$u;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public final e()V
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$u$a;->c:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/gd$u$a;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gd$u$a;->b:Ljava/util/List;

    iget v0, p0, Lcom/tapjoy/internal/gd$u$a;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gd$u$a;->c:I

    :cond_0
    return-void
.end method

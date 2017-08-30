.class public final Lcom/tapjoy/internal/gd$x$a;
.super Lcom/tapjoy/internal/do$a;

# interfaces
.implements Lcom/tapjoy/internal/gd$y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd$x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:Lcom/tapjoy/internal/ds;

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    sget-object v0, Lcom/tapjoy/internal/dr;->a:Lcom/tapjoy/internal/ds;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$x$a;->b:Lcom/tapjoy/internal/ds;

    return-void
.end method

.method static synthetic f()Lcom/tapjoy/internal/gd$x$a;
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gd$x$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$x$a;-><init>()V

    return-object v0
.end method

.method private g()Lcom/tapjoy/internal/gd$x$a;
    .locals 4

    new-instance v0, Lcom/tapjoy/internal/gd$x$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$x$a;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$x$a;->d()Lcom/tapjoy/internal/gd$x;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/internal/gd$x;->d()Lcom/tapjoy/internal/gd$x;

    move-result-object v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/tapjoy/internal/gd$x;->a(Lcom/tapjoy/internal/gd$x;)Lcom/tapjoy/internal/ds;

    move-result-object v2

    invoke-interface {v2}, Lcom/tapjoy/internal/ds;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/tapjoy/internal/gd$x$a;->b:Lcom/tapjoy/internal/ds;

    invoke-interface {v2}, Lcom/tapjoy/internal/ds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/tapjoy/internal/gd$x;->a(Lcom/tapjoy/internal/gd$x;)Lcom/tapjoy/internal/ds;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$x$a;->b:Lcom/tapjoy/internal/ds;

    iget v2, v0, Lcom/tapjoy/internal/gd$x$a;->c:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/tapjoy/internal/gd$x$a;->c:I

    :cond_1
    :goto_1
    iget-object v2, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    invoke-static {v1}, Lcom/tapjoy/internal/gd$x;->b(Lcom/tapjoy/internal/gd$x;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$x$a;->e()V

    iget-object v2, v0, Lcom/tapjoy/internal/gd$x$a;->b:Lcom/tapjoy/internal/ds;

    invoke-static {v1}, Lcom/tapjoy/internal/gd$x;->a(Lcom/tapjoy/internal/gd$x;)Lcom/tapjoy/internal/ds;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tapjoy/internal/ds;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$x$a;->g()Lcom/tapjoy/internal/gd$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$x$a;->g()Lcom/tapjoy/internal/gd$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$x$a;->g()Lcom/tapjoy/internal/gd$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gd$x;
    .locals 3

    new-instance v0, Lcom/tapjoy/internal/gd$x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/gd$x;-><init>(Lcom/tapjoy/internal/do$a;B)V

    iget v1, p0, Lcom/tapjoy/internal/gd$x$a;->c:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/gd$x$a;->b:Lcom/tapjoy/internal/ds;

    invoke-interface {v1}, Lcom/tapjoy/internal/ds;->b()Lcom/tapjoy/internal/ds;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$x$a;->b:Lcom/tapjoy/internal/ds;

    iget v1, p0, Lcom/tapjoy/internal/gd$x$a;->c:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/tapjoy/internal/gd$x$a;->c:I

    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gd$x$a;->b:Lcom/tapjoy/internal/ds;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/gd$x;->a(Lcom/tapjoy/internal/gd$x;Lcom/tapjoy/internal/ds;)Lcom/tapjoy/internal/ds;

    return-object v0
.end method

.method public final e()V
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$x$a;->c:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/tapjoy/internal/dr;

    iget-object v1, p0, Lcom/tapjoy/internal/gd$x$a;->b:Lcom/tapjoy/internal/ds;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/dr;-><init>(Lcom/tapjoy/internal/ds;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gd$x$a;->b:Lcom/tapjoy/internal/ds;

    iget v0, p0, Lcom/tapjoy/internal/gd$x$a;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gd$x$a;->c:I

    :cond_0
    return-void
.end method

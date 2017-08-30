.class public final Lcom/tapjoy/internal/gl$x$a;
.super Lcom/tapjoy/internal/do$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$x;
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

    .prologue
    .line 9031
    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    .line 9115
    sget-object v0, Lcom/tapjoy/internal/dr;->a:Lcom/tapjoy/internal/ds;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:Lcom/tapjoy/internal/ds;

    .line 9033
    return-void
.end method

.method static synthetic f()Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 11038
    new-instance v0, Lcom/tapjoy/internal/gl$x$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$x$a;-><init>()V

    .line 9024
    return-object v0
.end method

.method private g()Lcom/tapjoy/internal/gl$x$a;
    .locals 4

    .prologue
    .line 10038
    new-instance v0, Lcom/tapjoy/internal/gl$x$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$x$a;-><init>()V

    .line 9049
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x$a;->d()Lcom/tapjoy/internal/gl$x;

    move-result-object v1

    .line 10076
    invoke-static {}, Lcom/tapjoy/internal/gl$x;->d()Lcom/tapjoy/internal/gl$x;

    move-result-object v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    .line 10077
    :cond_0
    invoke-static {v1}, Lcom/tapjoy/internal/gl$x;->a(Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/ds;

    move-result-object v2

    invoke-interface {v2}, Lcom/tapjoy/internal/ds;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10078
    iget-object v2, v0, Lcom/tapjoy/internal/gl$x$a;->b:Lcom/tapjoy/internal/ds;

    invoke-interface {v2}, Lcom/tapjoy/internal/ds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10079
    invoke-static {v1}, Lcom/tapjoy/internal/gl$x;->a(Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/ds;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$x$a;->b:Lcom/tapjoy/internal/ds;

    .line 10080
    iget v2, v0, Lcom/tapjoy/internal/gl$x$a;->c:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/tapjoy/internal/gl$x$a;->c:I

    .line 10123
    :cond_1
    :goto_1
    iget-object v2, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 10087
    invoke-static {v1}, Lcom/tapjoy/internal/gl$x;->b(Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    .line 10127
    iput-object v1, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto :goto_0

    .line 10082
    :cond_2
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->e()V

    .line 10083
    iget-object v2, v0, Lcom/tapjoy/internal/gl$x$a;->b:Lcom/tapjoy/internal/ds;

    invoke-static {v1}, Lcom/tapjoy/internal/gl$x;->a(Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/ds;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tapjoy/internal/ds;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    .prologue
    .line 9024
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$x$a;->g()Lcom/tapjoy/internal/gl$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    .prologue
    .line 9024
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$x$a;->g()Lcom/tapjoy/internal/gl$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 9093
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9024
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$x$a;->g()Lcom/tapjoy/internal/gl$x$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gl$x;
    .locals 3

    .prologue
    .line 9065
    new-instance v0, Lcom/tapjoy/internal/gl$x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/gl$x;-><init>(Lcom/tapjoy/internal/do$a;B)V

    .line 9067
    iget v1, p0, Lcom/tapjoy/internal/gl$x$a;->c:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 9068
    iget-object v1, p0, Lcom/tapjoy/internal/gl$x$a;->b:Lcom/tapjoy/internal/ds;

    invoke-interface {v1}, Lcom/tapjoy/internal/ds;->b()Lcom/tapjoy/internal/ds;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$x$a;->b:Lcom/tapjoy/internal/ds;

    .line 9069
    iget v1, p0, Lcom/tapjoy/internal/gl$x$a;->c:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/tapjoy/internal/gl$x$a;->c:I

    .line 9071
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$x$a;->b:Lcom/tapjoy/internal/ds;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/gl$x;->a(Lcom/tapjoy/internal/gl$x;Lcom/tapjoy/internal/ds;)Lcom/tapjoy/internal/ds;

    .line 9072
    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 9117
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->c:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 9118
    new-instance v0, Lcom/tapjoy/internal/dr;

    iget-object v1, p0, Lcom/tapjoy/internal/gl$x$a;->b:Lcom/tapjoy/internal/ds;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/dr;-><init>(Lcom/tapjoy/internal/ds;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x$a;->b:Lcom/tapjoy/internal/ds;

    .line 9119
    iget v0, p0, Lcom/tapjoy/internal/gl$x$a;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$x$a;->c:I

    .line 9121
    :cond_0
    return-void
.end method

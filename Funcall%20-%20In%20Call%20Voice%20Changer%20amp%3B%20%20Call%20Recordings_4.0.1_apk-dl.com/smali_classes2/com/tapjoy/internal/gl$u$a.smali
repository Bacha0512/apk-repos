.class public final Lcom/tapjoy/internal/gl$u$a;
.super Lcom/tapjoy/internal/do$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$u;
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

    .prologue
    .line 4978
    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    .line 5068
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$u$a;->b:Ljava/util/List;

    .line 4980
    return-void
.end method

.method static synthetic f()Lcom/tapjoy/internal/gl$u$a;
    .locals 1

    .prologue
    .line 7985
    new-instance v0, Lcom/tapjoy/internal/gl$u$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$u$a;-><init>()V

    .line 4971
    return-object v0
.end method

.method private g()Lcom/tapjoy/internal/gl$u$a;
    .locals 4

    .prologue
    .line 5985
    new-instance v0, Lcom/tapjoy/internal/gl$u$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$u$a;-><init>()V

    .line 4996
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$u$a;->d()Lcom/tapjoy/internal/gl$u;

    move-result-object v1

    .line 6023
    invoke-static {}, Lcom/tapjoy/internal/gl$u;->d()Lcom/tapjoy/internal/gl$u;

    move-result-object v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    .line 6024
    :cond_0
    invoke-static {v1}, Lcom/tapjoy/internal/gl$u;->a(Lcom/tapjoy/internal/gl$u;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6025
    iget-object v2, v0, Lcom/tapjoy/internal/gl$u$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6026
    invoke-static {v1}, Lcom/tapjoy/internal/gl$u;->a(Lcom/tapjoy/internal/gl$u;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$u$a;->b:Ljava/util/List;

    .line 6027
    iget v2, v0, Lcom/tapjoy/internal/gl$u$a;->c:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/tapjoy/internal/gl$u$a;->c:I

    .line 6123
    :cond_1
    :goto_1
    iget-object v2, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 6034
    invoke-static {v1}, Lcom/tapjoy/internal/gl$u;->b(Lcom/tapjoy/internal/gl$u;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    .line 6127
    iput-object v1, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto :goto_0

    .line 6029
    :cond_2
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$u$a;->e()V

    .line 6030
    iget-object v2, v0, Lcom/tapjoy/internal/gl$u$a;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/tapjoy/internal/gl$u;->a(Lcom/tapjoy/internal/gl$u;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    .prologue
    .line 4971
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$u$a;->g()Lcom/tapjoy/internal/gl$u$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    .prologue
    .line 4971
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$u$a;->g()Lcom/tapjoy/internal/gl$u$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5040
    move v1, v2

    .line 7087
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/gl$u$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5040
    if-ge v1, v0, :cond_1

    .line 7093
    iget-object v0, p0, Lcom/tapjoy/internal/gl$u$a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$t;

    .line 5041
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$t;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5046
    :goto_1
    return v2

    .line 5040
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5046
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4971
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$u$a;->g()Lcom/tapjoy/internal/gl$u$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gl$u;
    .locals 3

    .prologue
    .line 5012
    new-instance v0, Lcom/tapjoy/internal/gl$u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/gl$u;-><init>(Lcom/tapjoy/internal/do$a;B)V

    .line 5014
    iget v1, p0, Lcom/tapjoy/internal/gl$u$a;->c:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5015
    iget-object v1, p0, Lcom/tapjoy/internal/gl$u$a;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$u$a;->b:Ljava/util/List;

    .line 5016
    iget v1, p0, Lcom/tapjoy/internal/gl$u$a;->c:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/tapjoy/internal/gl$u$a;->c:I

    .line 5018
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$u$a;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/gl$u;->a(Lcom/tapjoy/internal/gl$u;Ljava/util/List;)Ljava/util/List;

    .line 5019
    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 5071
    iget v0, p0, Lcom/tapjoy/internal/gl$u$a;->c:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5072
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/gl$u$a;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gl$u$a;->b:Ljava/util/List;

    .line 5073
    iget v0, p0, Lcom/tapjoy/internal/gl$u$a;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$u$a;->c:I

    .line 5075
    :cond_0
    return-void
.end method

.class public final Lcom/tapjoy/internal/gl$d$a;
.super Lcom/tapjoy/internal/do$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$d;
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
    .line 18174
    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    .line 18264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$d$a;->b:Ljava/util/List;

    .line 18176
    return-void
.end method

.method static synthetic g()Lcom/tapjoy/internal/gl$d$a;
    .locals 1

    .prologue
    .line 22181
    new-instance v0, Lcom/tapjoy/internal/gl$d$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$d$a;-><init>()V

    .line 18167
    return-object v0
.end method

.method private h()Lcom/tapjoy/internal/gl$d$a;
    .locals 4

    .prologue
    .line 19181
    new-instance v0, Lcom/tapjoy/internal/gl$d$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$d$a;-><init>()V

    .line 18192
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$d$a;->i()Lcom/tapjoy/internal/gl$d;

    move-result-object v1

    .line 19219
    invoke-static {}, Lcom/tapjoy/internal/gl$d;->d()Lcom/tapjoy/internal/gl$d;

    move-result-object v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    .line 19220
    :cond_0
    invoke-static {v1}, Lcom/tapjoy/internal/gl$d;->a(Lcom/tapjoy/internal/gl$d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 19221
    iget-object v2, v0, Lcom/tapjoy/internal/gl$d$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19222
    invoke-static {v1}, Lcom/tapjoy/internal/gl$d;->a(Lcom/tapjoy/internal/gl$d;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$d$a;->b:Ljava/util/List;

    .line 19223
    iget v2, v0, Lcom/tapjoy/internal/gl$d$a;->c:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/tapjoy/internal/gl$d$a;->c:I

    .line 20123
    :cond_1
    :goto_1
    iget-object v2, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 19230
    invoke-static {v1}, Lcom/tapjoy/internal/gl$d;->b(Lcom/tapjoy/internal/gl$d;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    .line 20127
    iput-object v1, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto :goto_0

    .line 19225
    :cond_2
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$d$a;->e()V

    .line 19226
    iget-object v2, v0, Lcom/tapjoy/internal/gl$d$a;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/tapjoy/internal/gl$d;->a(Lcom/tapjoy/internal/gl$d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private i()Lcom/tapjoy/internal/gl$d;
    .locals 3

    .prologue
    .line 18208
    new-instance v0, Lcom/tapjoy/internal/gl$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/gl$d;-><init>(Lcom/tapjoy/internal/do$a;B)V

    .line 18210
    iget v1, p0, Lcom/tapjoy/internal/gl$d$a;->c:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 18211
    iget-object v1, p0, Lcom/tapjoy/internal/gl$d$a;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$d$a;->b:Ljava/util/List;

    .line 18212
    iget v1, p0, Lcom/tapjoy/internal/gl$d$a;->c:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/tapjoy/internal/gl$d$a;->c:I

    .line 18214
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$d$a;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/gl$d;->a(Lcom/tapjoy/internal/gl$d;Ljava/util/List;)Ljava/util/List;

    .line 18215
    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    .prologue
    .line 18167
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$d$a;->h()Lcom/tapjoy/internal/gl$d$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    .prologue
    .line 18167
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$d$a;->h()Lcom/tapjoy/internal/gl$d$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18236
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$d$a;->f()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 21289
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d$a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$c;

    .line 18237
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18242
    :goto_1
    return v2

    .line 18236
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 18242
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18167
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$d$a;->h()Lcom/tapjoy/internal/gl$d$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gl$d;
    .locals 2

    .prologue
    .line 18200
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$d$a;->i()Lcom/tapjoy/internal/gl$d;

    move-result-object v0

    .line 18201
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$d;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 20316
    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    .line 18202
    throw v0

    .line 18204
    :cond_0
    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 18267
    iget v0, p0, Lcom/tapjoy/internal/gl$d$a;->c:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 18268
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/gl$d$a;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gl$d$a;->b:Ljava/util/List;

    .line 18269
    iget v0, p0, Lcom/tapjoy/internal/gl$d$a;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$d$a;->c:I

    .line 18271
    :cond_0
    return-void
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 18283
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.class public abstract Lcom/tapjoy/internal/dh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/du$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    return-void
.end method

.method private static a(Ljava/lang/Iterable;)V
    .locals 2

    .prologue
    .line 348
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 349
    if-nez v1, :cond_0

    .line 350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 353
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 2

    .prologue
    .line 329
    instance-of v0, p0, Lcom/tapjoy/internal/ds;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 332
    check-cast v0, Lcom/tapjoy/internal/ds;

    invoke-interface {v0}, Lcom/tapjoy/internal/ds;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/dh$a;->a(Ljava/lang/Iterable;)V

    .line 333
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 335
    invoke-static {p0}, Lcom/tapjoy/internal/dh$a;->a(Ljava/lang/Iterable;)V

    .line 336
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 338
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 339
    if-nez v1, :cond_3

    .line 340
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 342
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public abstract a()Lcom/tapjoy/internal/dh$a;
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/tapjoy/internal/dh$a;->a()Lcom/tapjoy/internal/dh$a;

    move-result-object v0

    return-object v0
.end method

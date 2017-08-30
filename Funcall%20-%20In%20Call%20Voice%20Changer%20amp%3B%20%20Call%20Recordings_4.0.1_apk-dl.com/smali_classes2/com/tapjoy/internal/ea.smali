.class public final Lcom/tapjoy/internal/ea;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/ds;
.implements Ljava/util/RandomAccess;


# instance fields
.field private final a:Lcom/tapjoy/internal/ds;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/ds;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/tapjoy/internal/ea;->a:Lcom/tapjoy/internal/ds;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/ea;)Lcom/tapjoy/internal/ds;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tapjoy/internal/ea;->a:Lcom/tapjoy/internal/ds;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/tapjoy/internal/dk;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tapjoy/internal/ea;->a:Lcom/tapjoy/internal/ds;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/ds;->a(I)Lcom/tapjoy/internal/dk;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/tapjoy/internal/ea;->a:Lcom/tapjoy/internal/ds;

    invoke-interface {v0}, Lcom/tapjoy/internal/ds;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/tapjoy/internal/dk;)V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b()Lcom/tapjoy/internal/ds;
    .locals 0

    .prologue
    .line 203
    return-object p0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 47
    .line 1058
    iget-object v0, p0, Lcom/tapjoy/internal/ea;->a:Lcom/tapjoy/internal/ds;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/ds;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/tapjoy/internal/ea$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ea$2;-><init>(Lcom/tapjoy/internal/ea;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 108
    new-instance v0, Lcom/tapjoy/internal/ea$1;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/ea$1;-><init>(Lcom/tapjoy/internal/ea;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tapjoy/internal/ea;->a:Lcom/tapjoy/internal/ds;

    invoke-interface {v0}, Lcom/tapjoy/internal/ds;->size()I

    move-result v0

    return v0
.end method

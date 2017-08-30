.class public final Lcom/tapjoy/internal/dr;
.super Ljava/util/AbstractList;

# interfaces
.implements Lcom/tapjoy/internal/ds;
.implements Ljava/util/RandomAccess;


# static fields
.field public static final a:Lcom/tapjoy/internal/ds;


# instance fields
.field private final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/dr;

    invoke-direct {v0}, Lcom/tapjoy/internal/dr;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/dr;->b()Lcom/tapjoy/internal/ds;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/dr;->a:Lcom/tapjoy/internal/ds;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dr;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/ds;)V
    .locals 2

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/tapjoy/internal/ds;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tapjoy/internal/dr;->b:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/dr;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/tapjoy/internal/dk;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/tapjoy/internal/dk;

    invoke-virtual {p0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lcom/tapjoy/internal/dp;->b([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/tapjoy/internal/dk;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/dr;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lcom/tapjoy/internal/dk;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/tapjoy/internal/dk;

    :goto_0
    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/dr;->b:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a([B)Lcom/tapjoy/internal/dk;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/dr;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/tapjoy/internal/dk;)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/dr;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/tapjoy/internal/dr;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/dr;->modCount:I

    return-void
.end method

.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/tapjoy/internal/dr;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/tapjoy/internal/dr;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/dr;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2

    instance-of v0, p2, Lcom/tapjoy/internal/ds;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/tapjoy/internal/ds;

    invoke-interface {p2}, Lcom/tapjoy/internal/ds;->a()Ljava/util/List;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/dr;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    iget v1, p0, Lcom/tapjoy/internal/dr;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tapjoy/internal/dr;->modCount:I

    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/tapjoy/internal/dr;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/dr;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/tapjoy/internal/ds;
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/ea;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ea;-><init>(Lcom/tapjoy/internal/ds;)V

    return-object v0
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/dr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lcom/tapjoy/internal/dr;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/dr;->modCount:I

    return-void
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/dr;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/tapjoy/internal/dk;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/dr;->b:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/tapjoy/internal/dp;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/tapjoy/internal/dp;->a([B)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/dr;->b:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/dr;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/tapjoy/internal/dr;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tapjoy/internal/dr;->modCount:I

    invoke-static {v0}, Lcom/tapjoy/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/tapjoy/internal/dr;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/dr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

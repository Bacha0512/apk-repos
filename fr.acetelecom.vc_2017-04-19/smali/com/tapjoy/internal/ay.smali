.class public final Lcom/tapjoy/internal/ay;
.super Lcom/tapjoy/internal/ax;

# interfaces
.implements Lcom/tapjoy/internal/bb;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field private final a:Lcom/tapjoy/internal/bb;

.field private final b:Ljava/util/LinkedList;

.field private final c:Ljava/util/LinkedList;

.field private d:I

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/bb;)V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/ax;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/ay;->a:Lcom/tapjoy/internal/bb;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ay;->b:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ay;->c:Ljava/util/LinkedList;

    invoke-interface {p1}, Lcom/tapjoy/internal/bb;->size()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/ay;->d:I

    iget v0, p0, Lcom/tapjoy/internal/ay;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tapjoy/internal/ay;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/tapjoy/internal/bb;)Lcom/tapjoy/internal/ay;
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/ay;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ay;-><init>(Lcom/tapjoy/internal/bb;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 4

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/tapjoy/internal/ay;->d:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/ay;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-boolean v1, p0, Lcom/tapjoy/internal/ay;->e:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tapjoy/internal/ay;->c:Ljava/util/LinkedList;

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/ay;->a:Lcom/tapjoy/internal/bb;

    invoke-interface {v1}, Lcom/tapjoy/internal/bb;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    const/4 v1, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_1
    if-gt v1, p1, :cond_5

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->a:Lcom/tapjoy/internal/bb;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/bb;->a(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_5
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/tapjoy/internal/ay;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/tapjoy/internal/ay;->d:I

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/internal/ay;->e:Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tapjoy/internal/ay;->c:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/tapjoy/internal/ay;->a:Lcom/tapjoy/internal/bb;

    invoke-interface {v1}, Lcom/tapjoy/internal/bb;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2

    if-lez p1, :cond_0

    iget v0, p0, Lcom/tapjoy/internal/ay;->d:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/ay;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt p1, v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->b:Ljava/util/LinkedList;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/ba;->a(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->a:Lcom/tapjoy/internal/bb;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bb;->b(I)V

    :cond_2
    :goto_0
    iget v0, p0, Lcom/tapjoy/internal/ay;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/tapjoy/internal/ay;->d:I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/ay;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/tapjoy/internal/ay;->d:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->a:Lcom/tapjoy/internal/bb;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bb;->b(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/ay;->a:Lcom/tapjoy/internal/bb;

    invoke-interface {v1}, Lcom/tapjoy/internal/bb;->clear()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/internal/ay;->e:Z

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/ay;->c:Ljava/util/LinkedList;

    invoke-static {v1, v0}, Lcom/tapjoy/internal/ba;->a(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public final close()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/ay;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->a:Lcom/tapjoy/internal/bb;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->a:Lcom/tapjoy/internal/bb;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->a:Lcom/tapjoy/internal/bb;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->a:Lcom/tapjoy/internal/bb;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_1
    throw v1
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/tapjoy/internal/ay;->close()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final flush()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->a:Lcom/tapjoy/internal/bb;

    iget-object v1, p0, Lcom/tapjoy/internal/ay;->c:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/bb;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, p0, Lcom/tapjoy/internal/ay;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->b:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/tapjoy/internal/ay;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ay;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_1
    return-void
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/tapjoy/internal/ay;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/ay;->d:I

    const/4 v0, 0x1

    return v0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/tapjoy/internal/ay;->d:I

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/ay;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/tapjoy/internal/ay;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/ay;->a:Lcom/tapjoy/internal/bb;

    invoke-interface {v0}, Lcom/tapjoy/internal/bb;->peek()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ay;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/tapjoy/internal/ay;->d:I

    iget-object v2, p0, Lcom/tapjoy/internal/ay;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/tapjoy/internal/ay;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/internal/ay;->e:Z

    goto :goto_0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/tapjoy/internal/ay;->d:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ay;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ay;->a:Lcom/tapjoy/internal/bb;

    invoke-interface {v1, v3}, Lcom/tapjoy/internal/bb;->b(I)V

    :cond_1
    :goto_1
    iget v1, p0, Lcom/tapjoy/internal/ay;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tapjoy/internal/ay;->d:I

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/tapjoy/internal/ay;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/ay;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/ay;->a:Lcom/tapjoy/internal/bb;

    invoke-interface {v0}, Lcom/tapjoy/internal/bb;->remove()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/tapjoy/internal/ay;->d:I

    iget-object v2, p0, Lcom/tapjoy/internal/ay;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_1

    iput-boolean v3, p0, Lcom/tapjoy/internal/ay;->e:Z

    goto :goto_1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/ay;->d:I

    return v0
.end method

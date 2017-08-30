.class final Lcom/tapjoy/internal/dy;
.super Lcom/tapjoy/internal/dk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/dy$c;,
        Lcom/tapjoy/internal/dy$b;,
        Lcom/tapjoy/internal/dy$a;
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private final d:I

.field private final e:Lcom/tapjoy/internal/dk;

.field private final f:Lcom/tapjoy/internal/dk;

.field private final g:I

.field private final h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_0
    if-lez v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v0

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tapjoy/internal/dy;->a:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/tapjoy/internal/dy;->a:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    sget-object v3, Lcom/tapjoy/internal/dy;->a:[I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dk;Lcom/tapjoy/internal/dk;)V
    .locals 2

    invoke-direct {p0}, Lcom/tapjoy/internal/dk;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/dy;->i:I

    iput-object p1, p0, Lcom/tapjoy/internal/dy;->e:Lcom/tapjoy/internal/dk;

    iput-object p2, p0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dk;

    invoke-virtual {p1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/dy;->g:I

    iget v0, p0, Lcom/tapjoy/internal/dy;->g:I

    invoke-virtual {p2}, Lcom/tapjoy/internal/dk;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/dy;->d:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/dk;->h()I

    move-result v0

    invoke-virtual {p2}, Lcom/tapjoy/internal/dk;->h()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/dy;->h:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dk;Lcom/tapjoy/internal/dk;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/dy;-><init>(Lcom/tapjoy/internal/dk;Lcom/tapjoy/internal/dk;)V

    return-void
.end method

.method static a(Lcom/tapjoy/internal/dk;Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;
    .locals 6

    const/16 v5, 0x80

    const/4 v4, 0x0

    instance-of v0, p0, Lcom/tapjoy/internal/dy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/tapjoy/internal/dy;

    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/dk;->a()I

    move-result v1

    if-nez v1, :cond_2

    move-object p0, p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/dk;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v1, v5, :cond_3

    invoke-static {p0, p1}, Lcom/tapjoy/internal/dy;->b(Lcom/tapjoy/internal/dk;Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dt;

    move-result-object p0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dk;

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v2, v5, :cond_4

    iget-object v1, v0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dk;

    invoke-static {v1, p1}, Lcom/tapjoy/internal/dy;->b(Lcom/tapjoy/internal/dk;Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dt;

    move-result-object v1

    new-instance p0, Lcom/tapjoy/internal/dy;

    iget-object v0, v0, Lcom/tapjoy/internal/dy;->e:Lcom/tapjoy/internal/dk;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/dy;-><init>(Lcom/tapjoy/internal/dk;Lcom/tapjoy/internal/dk;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/tapjoy/internal/dy;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk;->h()I

    move-result v2

    iget-object v3, v0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dk;

    invoke-virtual {v3}, Lcom/tapjoy/internal/dk;->h()I

    move-result v3

    if-le v2, v3, :cond_5

    iget v2, v0, Lcom/tapjoy/internal/dy;->h:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/dk;->h()I

    move-result v3

    if-le v2, v3, :cond_5

    new-instance v1, Lcom/tapjoy/internal/dy;

    iget-object v2, v0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dk;

    invoke-direct {v1, v2, p1}, Lcom/tapjoy/internal/dy;-><init>(Lcom/tapjoy/internal/dk;Lcom/tapjoy/internal/dk;)V

    new-instance p0, Lcom/tapjoy/internal/dy;

    iget-object v0, v0, Lcom/tapjoy/internal/dy;->e:Lcom/tapjoy/internal/dk;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/dy;-><init>(Lcom/tapjoy/internal/dk;Lcom/tapjoy/internal/dk;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/dk;->h()I

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/dk;->h()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lcom/tapjoy/internal/dy;->a:[I

    aget v0, v2, v0

    if-lt v1, v0, :cond_6

    new-instance v1, Lcom/tapjoy/internal/dy;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/dy;-><init>(Lcom/tapjoy/internal/dk;Lcom/tapjoy/internal/dk;)V

    move-object p0, v1

    goto :goto_1

    :cond_6
    new-instance v3, Lcom/tapjoy/internal/dy$a;

    invoke-direct {v3, v4}, Lcom/tapjoy/internal/dy$a;-><init>(B)V

    invoke-virtual {v3, p0}, Lcom/tapjoy/internal/dy$a;->a(Lcom/tapjoy/internal/dk;)V

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/dy$a;->a(Lcom/tapjoy/internal/dk;)V

    iget-object v0, v3, Lcom/tapjoy/internal/dy$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dk;

    move-object v1, v0

    :goto_2
    iget-object v0, v3, Lcom/tapjoy/internal/dy$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v3, Lcom/tapjoy/internal/dy$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dk;

    new-instance v2, Lcom/tapjoy/internal/dy;

    invoke-direct {v2, v0, v1, v4}, Lcom/tapjoy/internal/dy;-><init>(Lcom/tapjoy/internal/dk;Lcom/tapjoy/internal/dk;B)V

    move-object v1, v2

    goto :goto_2

    :cond_7
    move-object p0, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/tapjoy/internal/dy;)Lcom/tapjoy/internal/dk;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/dy;->e:Lcom/tapjoy/internal/dk;

    return-object v0
.end method

.method static synthetic b(Lcom/tapjoy/internal/dy;)Lcom/tapjoy/internal/dk;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dk;

    return-object v0
.end method

.method private static b(Lcom/tapjoy/internal/dk;Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dt;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/tapjoy/internal/dk;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v1

    add-int v2, v0, v1

    new-array v2, v2, [B

    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/tapjoy/internal/dk;->b([BIII)V

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/tapjoy/internal/dk;->b([BIII)V

    new-instance v0, Lcom/tapjoy/internal/dt;

    invoke-direct {v0, v2}, Lcom/tapjoy/internal/dt;-><init>([B)V

    return-object v0
.end method

.method static synthetic b()[I
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/dy;->a:[I

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/dy;->d:I

    return v0
.end method

.method protected final a(III)I
    .locals 4

    add-int v0, p2, p3

    iget v1, p0, Lcom/tapjoy/internal/dy;->g:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/dy;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tapjoy/internal/dk;->a(III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/dy;->g:I

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dk;

    iget v1, p0, Lcom/tapjoy/internal/dy;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/tapjoy/internal/dk;->a(III)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/dy;->g:I

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/tapjoy/internal/dy;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1, p1, p2, v0}, Lcom/tapjoy/internal/dk;->a(III)I

    move-result v1

    iget-object v2, p0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dk;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/tapjoy/internal/dk;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method final a(Ljava/io/OutputStream;II)V
    .locals 3

    add-int v0, p2, p3

    iget v1, p0, Lcom/tapjoy/internal/dy;->g:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/dy;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tapjoy/internal/dk;->a(Ljava/io/OutputStream;II)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/dy;->g:I

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dk;

    iget v1, p0, Lcom/tapjoy/internal/dy;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/tapjoy/internal/dk;->a(Ljava/io/OutputStream;II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/dy;->g:I

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/tapjoy/internal/dy;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1, p1, p2, v0}, Lcom/tapjoy/internal/dk;->a(Ljava/io/OutputStream;II)V

    iget-object v1, p0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dk;

    const/4 v2, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v1, p1, v2, v0}, Lcom/tapjoy/internal/dk;->a(Ljava/io/OutputStream;II)V

    goto :goto_0
.end method

.method protected final a([BIII)V
    .locals 4

    add-int v0, p2, p4

    iget v1, p0, Lcom/tapjoy/internal/dy;->g:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/dy;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tapjoy/internal/dk;->a([BIII)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/dy;->g:I

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dk;

    iget v1, p0, Lcom/tapjoy/internal/dy;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/tapjoy/internal/dk;->a([BIII)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/dy;->g:I

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/tapjoy/internal/dy;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/tapjoy/internal/dk;->a([BIII)V

    iget-object v1, p0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dk;

    const/4 v2, 0x0

    add-int v3, p3, v0

    sub-int v0, p4, v0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/tapjoy/internal/dk;->a([BIII)V

    goto :goto_0
.end method

.method protected final b(III)I
    .locals 4

    add-int v0, p2, p3

    iget v1, p0, Lcom/tapjoy/internal/dy;->g:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/dy;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tapjoy/internal/dk;->b(III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/dy;->g:I

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dk;

    iget v1, p0, Lcom/tapjoy/internal/dy;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/tapjoy/internal/dk;->b(III)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/dy;->g:I

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/tapjoy/internal/dy;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1, p1, p2, v0}, Lcom/tapjoy/internal/dk;->b(III)I

    move-result v1

    iget-object v2, p0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dk;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/tapjoy/internal/dk;->b(III)I

    move-result v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tapjoy/internal/dy;->d()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public final c()Lcom/tapjoy/internal/dk$a;
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/dy$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/dy$c;-><init>(Lcom/tapjoy/internal/dy;B)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v7, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    move v2, v7

    :cond_0
    :goto_0
    return v2

    :cond_1
    instance-of v0, p1, Lcom/tapjoy/internal/dk;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tapjoy/internal/dk;

    iget v0, p0, Lcom/tapjoy/internal/dy;->d:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tapjoy/internal/dy;->d:I

    if-nez v0, :cond_2

    move v2, v7

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tapjoy/internal/dy;->i:I

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/tapjoy/internal/dk;->j()I

    move-result v0

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/tapjoy/internal/dy;->i:I

    if-ne v1, v0, :cond_0

    :cond_3
    new-instance v8, Lcom/tapjoy/internal/dy$b;

    invoke-direct {v8, p0, v2}, Lcom/tapjoy/internal/dy$b;-><init>(Lcom/tapjoy/internal/dk;B)V

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dt;

    new-instance v9, Lcom/tapjoy/internal/dy$b;

    invoke-direct {v9, p1, v2}, Lcom/tapjoy/internal/dy$b;-><init>(Lcom/tapjoy/internal/dk;B)V

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/dt;

    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    move v0, v2

    :goto_1
    invoke-virtual {v5}, Lcom/tapjoy/internal/dt;->a()I

    move-result v1

    sub-int v10, v1, v6

    invoke-virtual {v3}, Lcom/tapjoy/internal/dt;->a()I

    move-result v1

    sub-int v11, v1, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-nez v6, :cond_4

    invoke-virtual {v5, v3, v4, v12}, Lcom/tapjoy/internal/dt;->a(Lcom/tapjoy/internal/dt;II)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_0

    add-int v1, v0, v12

    iget v0, p0, Lcom/tapjoy/internal/dy;->d:I

    if-lt v1, v0, :cond_6

    iget v0, p0, Lcom/tapjoy/internal/dy;->d:I

    if-ne v1, v0, :cond_5

    move v2, v7

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v5, v6, v12}, Lcom/tapjoy/internal/dt;->a(Lcom/tapjoy/internal/dt;II)Z

    move-result v1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_6
    if-ne v12, v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dt;

    move-object v5, v0

    move v6, v2

    :goto_3
    if-ne v12, v11, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dt;

    move-object v3, v0

    move v4, v2

    move v0, v1

    goto :goto_1

    :cond_7
    add-int/2addr v6, v12

    goto :goto_3

    :cond_8
    add-int v0, v4, v12

    move v4, v0

    move v0, v1

    goto :goto_1
.end method

.method public final f()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tapjoy/internal/dy;->e:Lcom/tapjoy/internal/dk;

    iget v2, p0, Lcom/tapjoy/internal/dy;->g:I

    invoke-virtual {v1, v0, v0, v2}, Lcom/tapjoy/internal/dk;->a(III)I

    move-result v1

    iget-object v2, p0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dk;

    iget-object v3, p0, Lcom/tapjoy/internal/dy;->f:Lcom/tapjoy/internal/dk;

    invoke-virtual {v3}, Lcom/tapjoy/internal/dk;->a()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/tapjoy/internal/dk;->a(III)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected final h()I
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/dy;->h:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/tapjoy/internal/dy;->i:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tapjoy/internal/dy;->d:I

    const/4 v1, 0x0

    iget v2, p0, Lcom/tapjoy/internal/dy;->d:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/tapjoy/internal/dy;->b(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/tapjoy/internal/dy;->i:I

    :cond_1
    return v0
.end method

.method protected final i()Z
    .locals 3

    iget v0, p0, Lcom/tapjoy/internal/dy;->d:I

    sget-object v1, Lcom/tapjoy/internal/dy;->a:[I

    iget v2, p0, Lcom/tapjoy/internal/dy;->h:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/tapjoy/internal/dy;->c()Lcom/tapjoy/internal/dk$a;

    move-result-object v0

    return-object v0
.end method

.method protected final j()I
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/dy;->i:I

    return v0
.end method

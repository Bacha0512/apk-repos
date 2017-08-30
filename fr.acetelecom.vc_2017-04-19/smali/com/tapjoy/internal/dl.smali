.class public final Lcom/tapjoy/internal/dl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/dl$a;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Z

.field private c:I

.field private d:I

.field private e:I

.field private final f:Ljava/io/InputStream;

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/tapjoy/internal/dl$a;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/tapjoy/internal/dl;->h:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/tapjoy/internal/dl;->j:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/tapjoy/internal/dl;->l:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/tapjoy/internal/dl;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/dl;->n:Lcom/tapjoy/internal/dl$a;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tapjoy/internal/dl;->a:[B

    iput v1, p0, Lcom/tapjoy/internal/dl;->c:I

    iput v1, p0, Lcom/tapjoy/internal/dl;->e:I

    iput v1, p0, Lcom/tapjoy/internal/dl;->i:I

    iput-object p1, p0, Lcom/tapjoy/internal/dl;->f:Ljava/io/InputStream;

    iput-boolean v1, p0, Lcom/tapjoy/internal/dl;->b:Z

    return-void
.end method

.method private constructor <init>([BI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/tapjoy/internal/dl;->h:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/tapjoy/internal/dl;->j:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/tapjoy/internal/dl;->l:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/tapjoy/internal/dl;->m:I

    iput-object v2, p0, Lcom/tapjoy/internal/dl;->n:Lcom/tapjoy/internal/dl$a;

    iput-object p1, p0, Lcom/tapjoy/internal/dl;->a:[B

    add-int/lit8 v0, p2, 0x0

    iput v0, p0, Lcom/tapjoy/internal/dl;->c:I

    iput v1, p0, Lcom/tapjoy/internal/dl;->e:I

    iput v1, p0, Lcom/tapjoy/internal/dl;->i:I

    iput-object v2, p0, Lcom/tapjoy/internal/dl;->f:Ljava/io/InputStream;

    iput-boolean v1, p0, Lcom/tapjoy/internal/dl;->b:Z

    return-void
.end method

.method public static a([BI)Lcom/tapjoy/internal/dl;
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/dl;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/dl;-><init>([BI)V

    :try_start_0
    invoke-direct {v0, p1}, Lcom/tapjoy/internal/dl;->b(I)I
    :try_end_0
    .catch Lcom/tapjoy/internal/dq; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(I)I
    .locals 2

    if-gez p1, :cond_0

    invoke-static {}, Lcom/tapjoy/internal/dq;->b()Lcom/tapjoy/internal/dq;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/dl;->i:I

    iget v1, p0, Lcom/tapjoy/internal/dl;->e:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/tapjoy/internal/dl;->j:I

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/tapjoy/internal/dq;->a()Lcom/tapjoy/internal/dq;

    move-result-object v0

    throw v0

    :cond_1
    iput v0, p0, Lcom/tapjoy/internal/dl;->j:I

    invoke-direct {p0}, Lcom/tapjoy/internal/dl;->i()V

    return v1
.end method

.method private c(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/dl;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tapjoy/internal/dq;->a()Lcom/tapjoy/internal/dq;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method private d(I)Z
    .locals 6

    const/4 v0, 0x0

    :cond_0
    iget v1, p0, Lcom/tapjoy/internal/dl;->e:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/tapjoy/internal/dl;->c:I

    if-gt v1, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x4d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "refillBuffer() called when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes were already available in buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/dl;->i:I

    iget v2, p0, Lcom/tapjoy/internal/dl;->e:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iget v2, p0, Lcom/tapjoy/internal/dl;->j:I

    if-le v1, v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/dl;->f:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/tapjoy/internal/dl;->e:I

    if-lez v1, :cond_5

    iget v2, p0, Lcom/tapjoy/internal/dl;->c:I

    if-le v2, v1, :cond_4

    iget-object v2, p0, Lcom/tapjoy/internal/dl;->a:[B

    iget-object v3, p0, Lcom/tapjoy/internal/dl;->a:[B

    iget v4, p0, Lcom/tapjoy/internal/dl;->c:I

    sub-int/2addr v4, v1

    invoke-static {v2, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget v2, p0, Lcom/tapjoy/internal/dl;->i:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/tapjoy/internal/dl;->i:I

    iget v2, p0, Lcom/tapjoy/internal/dl;->c:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/tapjoy/internal/dl;->c:I

    iput v0, p0, Lcom/tapjoy/internal/dl;->e:I

    :cond_5
    iget-object v1, p0, Lcom/tapjoy/internal/dl;->f:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/tapjoy/internal/dl;->a:[B

    iget v3, p0, Lcom/tapjoy/internal/dl;->c:I

    iget-object v4, p0, Lcom/tapjoy/internal/dl;->a:[B

    array-length v4, v4

    iget v5, p0, Lcom/tapjoy/internal/dl;->c:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, -0x1

    if-lt v1, v2, :cond_6

    iget-object v2, p0, Lcom/tapjoy/internal/dl;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x66

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-lez v1, :cond_2

    iget v2, p0, Lcom/tapjoy/internal/dl;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tapjoy/internal/dl;->c:I

    iget v1, p0, Lcom/tapjoy/internal/dl;->i:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/tapjoy/internal/dl;->m:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_8

    invoke-static {}, Lcom/tapjoy/internal/dq;->h()Lcom/tapjoy/internal/dq;

    move-result-object v0

    throw v0

    :cond_8
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;->i()V

    iget v1, p0, Lcom/tapjoy/internal/dl;->c:I

    if-lt v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e(I)[B
    .locals 11

    const/16 v10, 0x1000

    const/4 v3, -0x1

    const/4 v1, 0x0

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    sget-object v0, Lcom/tapjoy/internal/dp;->a:[B

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tapjoy/internal/dq;->b()Lcom/tapjoy/internal/dq;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/dl;->i:I

    iget v2, p0, Lcom/tapjoy/internal/dl;->e:I

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    iget v2, p0, Lcom/tapjoy/internal/dl;->j:I

    if-le v0, v2, :cond_2

    iget v0, p0, Lcom/tapjoy/internal/dl;->j:I

    iget v1, p0, Lcom/tapjoy/internal/dl;->i:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/tapjoy/internal/dl;->e:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dl;->f(I)V

    invoke-static {}, Lcom/tapjoy/internal/dq;->a()Lcom/tapjoy/internal/dq;

    move-result-object v0

    throw v0

    :cond_2
    if-ge p1, v10, :cond_4

    new-array v0, p1, [B

    iget v2, p0, Lcom/tapjoy/internal/dl;->c:I

    iget v3, p0, Lcom/tapjoy/internal/dl;->e:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/tapjoy/internal/dl;->a:[B

    iget v4, p0, Lcom/tapjoy/internal/dl;->e:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/tapjoy/internal/dl;->c:I

    iput v3, p0, Lcom/tapjoy/internal/dl;->e:I

    sub-int v3, p1, v2

    iget v4, p0, Lcom/tapjoy/internal/dl;->c:I

    iget v5, p0, Lcom/tapjoy/internal/dl;->e:I

    sub-int/2addr v4, v5

    if-ge v4, v3, :cond_3

    invoke-direct {p0, v3}, Lcom/tapjoy/internal/dl;->c(I)V

    :cond_3
    iget-object v3, p0, Lcom/tapjoy/internal/dl;->a:[B

    sub-int v4, p1, v2

    invoke-static {v3, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, p1, v2

    iput v1, p0, Lcom/tapjoy/internal/dl;->e:I

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/tapjoy/internal/dl;->e:I

    iget v6, p0, Lcom/tapjoy/internal/dl;->c:I

    iget v0, p0, Lcom/tapjoy/internal/dl;->i:I

    iget v2, p0, Lcom/tapjoy/internal/dl;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/tapjoy/internal/dl;->i:I

    iput v1, p0, Lcom/tapjoy/internal/dl;->e:I

    iput v1, p0, Lcom/tapjoy/internal/dl;->c:I

    sub-int v0, v6, v5

    sub-int v0, p1, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    :goto_1
    if-lez v4, :cond_8

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v8, v0, [B

    move v0, v1

    :goto_2
    array-length v2, v8

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/tapjoy/internal/dl;->f:Ljava/io/InputStream;

    if-nez v2, :cond_5

    move v2, v3

    :goto_3
    if-ne v2, v3, :cond_6

    invoke-static {}, Lcom/tapjoy/internal/dq;->a()Lcom/tapjoy/internal/dq;

    move-result-object v0

    throw v0

    :cond_5
    iget-object v2, p0, Lcom/tapjoy/internal/dl;->f:Ljava/io/InputStream;

    array-length v9, v8

    sub-int/2addr v9, v0

    invoke-virtual {v2, v8, v0, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_3

    :cond_6
    iget v9, p0, Lcom/tapjoy/internal/dl;->i:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/tapjoy/internal/dl;->i:I

    add-int/2addr v0, v2

    goto :goto_2

    :cond_7
    array-length v0, v8

    sub-int v0, v4, v0

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v0

    goto :goto_1

    :cond_8
    new-array v3, p1, [B

    sub-int v0, v6, v5

    iget-object v2, p0, Lcom/tapjoy/internal/dl;->a:[B

    invoke-static {v2, v5, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v5, v0

    invoke-static {v0, v1, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_4

    :cond_9
    move-object v0, v3

    goto/16 :goto_0
.end method

.method private f(I)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/tapjoy/internal/dl;->c:I

    iget v1, p0, Lcom/tapjoy/internal/dl;->e:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/tapjoy/internal/dl;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tapjoy/internal/dl;->e:I

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_1

    invoke-static {}, Lcom/tapjoy/internal/dq;->b()Lcom/tapjoy/internal/dq;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/dl;->i:I

    iget v1, p0, Lcom/tapjoy/internal/dl;->e:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/tapjoy/internal/dl;->j:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/tapjoy/internal/dl;->j:I

    iget v1, p0, Lcom/tapjoy/internal/dl;->i:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/tapjoy/internal/dl;->e:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dl;->f(I)V

    invoke-static {}, Lcom/tapjoy/internal/dq;->a()Lcom/tapjoy/internal/dq;

    move-result-object v0

    throw v0

    :cond_2
    iget v0, p0, Lcom/tapjoy/internal/dl;->c:I

    iget v1, p0, Lcom/tapjoy/internal/dl;->e:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/tapjoy/internal/dl;->c:I

    iput v1, p0, Lcom/tapjoy/internal/dl;->e:I

    invoke-direct {p0, v3}, Lcom/tapjoy/internal/dl;->c(I)V

    :goto_1
    sub-int v1, p1, v0

    iget v2, p0, Lcom/tapjoy/internal/dl;->c:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/tapjoy/internal/dl;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tapjoy/internal/dl;->c:I

    iput v1, p0, Lcom/tapjoy/internal/dl;->e:I

    invoke-direct {p0, v3}, Lcom/tapjoy/internal/dl;->c(I)V

    goto :goto_1

    :cond_3
    sub-int v0, p1, v0

    iput v0, p0, Lcom/tapjoy/internal/dl;->e:I

    goto :goto_0
.end method

.method private h()J
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/tapjoy/internal/dl;->e:I

    iget v4, p0, Lcom/tapjoy/internal/dl;->c:I

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/dl;->c(I)V

    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/dl;->a:[B

    iget v4, p0, Lcom/tapjoy/internal/dl;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/tapjoy/internal/dl;->e:I

    aget-byte v1, v1, v4

    and-int/lit8 v4, v1, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    return-wide v2

    :cond_1
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tapjoy/internal/dq;->c()Lcom/tapjoy/internal/dq;

    move-result-object v0

    throw v0
.end method

.method private i()V
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/dl;->c:I

    iget v1, p0, Lcom/tapjoy/internal/dl;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/dl;->c:I

    iget v0, p0, Lcom/tapjoy/internal/dl;->i:I

    iget v1, p0, Lcom/tapjoy/internal/dl;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tapjoy/internal/dl;->j:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/tapjoy/internal/dl;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/dl;->d:I

    iget v0, p0, Lcom/tapjoy/internal/dl;->c:I

    iget v1, p0, Lcom/tapjoy/internal/dl;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/dl;->c:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/dl;->d:I

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/tapjoy/internal/dl;->e:I

    iget v3, p0, Lcom/tapjoy/internal/dl;->c:I

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/dl;->d(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    if-eqz v1, :cond_1

    iput v0, p0, Lcom/tapjoy/internal/dl;->g:I

    :goto_1
    return v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/dl;->e()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/dl;->g:I

    iget v0, p0, Lcom/tapjoy/internal/dl;->g:I

    invoke-static {v0}, Lcom/tapjoy/internal/ec;->b(I)I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tapjoy/internal/dq;->d()Lcom/tapjoy/internal/dq;

    move-result-object v0

    throw v0

    :cond_2
    iget v0, p0, Lcom/tapjoy/internal/dl;->g:I

    goto :goto_1
.end method

.method public final a(Lcom/tapjoy/internal/dw;Lcom/tapjoy/internal/dn;)Lcom/tapjoy/internal/du;
    .locals 3

    invoke-virtual {p0}, Lcom/tapjoy/internal/dl;->e()I

    move-result v0

    iget v1, p0, Lcom/tapjoy/internal/dl;->k:I

    iget v2, p0, Lcom/tapjoy/internal/dl;->l:I

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/tapjoy/internal/dq;->g()Lcom/tapjoy/internal/dq;

    move-result-object v0

    throw v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dl;->b(I)I

    move-result v1

    iget v0, p0, Lcom/tapjoy/internal/dl;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/dl;->k:I

    invoke-interface {p1, p0, p2}, Lcom/tapjoy/internal/dw;->a(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/du;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/dl;->a(I)V

    iget v2, p0, Lcom/tapjoy/internal/dl;->k:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/tapjoy/internal/dl;->k:I

    iput v1, p0, Lcom/tapjoy/internal/dl;->j:I

    invoke-direct {p0}, Lcom/tapjoy/internal/dl;->i()V

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/dl;->g:I

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/tapjoy/internal/dq;->e()Lcom/tapjoy/internal/dq;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public final a(ILcom/tapjoy/internal/dm;)Z
    .locals 5

    const/4 v3, 0x4

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/tapjoy/internal/ec;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/tapjoy/internal/dq;->f()Lcom/tapjoy/internal/dq;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/dl;->f()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Lcom/tapjoy/internal/dm;->e(I)V

    invoke-virtual {p2, v2, v3}, Lcom/tapjoy/internal/dm;->a(J)V

    move v0, v1

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/dl;->g()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Lcom/tapjoy/internal/dm;->e(I)V

    invoke-virtual {p2, v2, v3}, Lcom/tapjoy/internal/dm;->b(J)V

    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/dl;->d()Lcom/tapjoy/internal/dk;

    move-result-object v0

    invoke-virtual {p2, p1}, Lcom/tapjoy/internal/dm;->e(I)V

    invoke-virtual {p2, v0}, Lcom/tapjoy/internal/dm;->a(Lcom/tapjoy/internal/dk;)V

    move v0, v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2, p1}, Lcom/tapjoy/internal/dm;->e(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/dl;->a()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p2}, Lcom/tapjoy/internal/dl;->a(ILcom/tapjoy/internal/dm;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-static {p1}, Lcom/tapjoy/internal/ec;->b(I)I

    move-result v0

    invoke-static {v0, v3}, Lcom/tapjoy/internal/ec;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dl;->a(I)V

    invoke-virtual {p2, v0}, Lcom/tapjoy/internal/dm;->e(I)V

    move v0, v1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_5
    iget v0, p0, Lcom/tapjoy/internal/dl;->e:I

    iget v2, p0, Lcom/tapjoy/internal/dl;->c:I

    sub-int/2addr v2, v0

    if-ge v2, v3, :cond_2

    invoke-direct {p0, v3}, Lcom/tapjoy/internal/dl;->c(I)V

    iget v0, p0, Lcom/tapjoy/internal/dl;->e:I

    :cond_2
    iget-object v2, p0, Lcom/tapjoy/internal/dl;->a:[B

    add-int/lit8 v3, v0, 0x4

    iput v3, p0, Lcom/tapjoy/internal/dl;->e:I

    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v3

    invoke-virtual {p2, p1}, Lcom/tapjoy/internal/dm;->e(I)V

    and-int/lit16 v2, v0, 0xff

    invoke-virtual {p2, v2}, Lcom/tapjoy/internal/dm;->c(I)V

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p2, v2}, Lcom/tapjoy/internal/dm;->c(I)V

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p2, v2}, Lcom/tapjoy/internal/dm;->c(I)V

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p2, v0}, Lcom/tapjoy/internal/dm;->c(I)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final b()J
    .locals 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/dl;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Z
    .locals 4

    invoke-virtual {p0}, Lcom/tapjoy/internal/dl;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Lcom/tapjoy/internal/dk;
    .locals 4

    invoke-virtual {p0}, Lcom/tapjoy/internal/dl;->e()I

    move-result v1

    iget v0, p0, Lcom/tapjoy/internal/dl;->c:I

    iget v2, p0, Lcom/tapjoy/internal/dl;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_1

    if-lez v1, :cond_1

    iget-boolean v0, p0, Lcom/tapjoy/internal/dl;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/internal/dl;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tapjoy/internal/dj;

    iget-object v2, p0, Lcom/tapjoy/internal/dl;->a:[B

    iget v3, p0, Lcom/tapjoy/internal/dl;->e:I

    invoke-direct {v0, v2, v3, v1}, Lcom/tapjoy/internal/dj;-><init>([BII)V

    :goto_0
    iget v2, p0, Lcom/tapjoy/internal/dl;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tapjoy/internal/dl;->e:I

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/dl;->a:[B

    iget v2, p0, Lcom/tapjoy/internal/dl;->e:I

    invoke-static {v0, v2, v1}, Lcom/tapjoy/internal/dk;->a([BII)Lcom/tapjoy/internal/dk;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    sget-object v0, Lcom/tapjoy/internal/dk;->b:Lcom/tapjoy/internal/dk;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/tapjoy/internal/dt;

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/dl;->e(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/dt;-><init>([B)V

    goto :goto_1
.end method

.method public final e()I
    .locals 8

    const-wide/16 v6, 0x0

    iget v0, p0, Lcom/tapjoy/internal/dl;->e:I

    iget v1, p0, Lcom/tapjoy/internal/dl;->c:I

    if-eq v1, v0, :cond_5

    iget-object v3, p0, Lcom/tapjoy/internal/dl;->a:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v3, v0

    if-ltz v0, :cond_0

    iput v2, p0, Lcom/tapjoy/internal/dl;->e:I

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/tapjoy/internal/dl;->c:I

    sub-int/2addr v1, v2

    const/16 v4, 0x9

    if-lt v1, v4, :cond_5

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    int-to-long v4, v0

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    int-to-long v2, v0

    const-wide/16 v4, -0x80

    xor-long/2addr v2, v4

    long-to-int v0, v2

    :cond_1
    :goto_1
    iput v1, p0, Lcom/tapjoy/internal/dl;->e:I

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    int-to-long v4, v0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    int-to-long v0, v0

    const-wide/16 v4, 0x3f80

    xor-long/2addr v0, v4

    long-to-int v0, v0

    move v1, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    int-to-long v4, v0

    cmp-long v2, v4, v6

    if-gez v2, :cond_4

    int-to-long v2, v0

    const-wide/32 v4, -0x1fc080

    xor-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    int-to-long v4, v0

    const-wide/32 v6, 0xfe03f80

    xor-long/2addr v4, v6

    long-to-int v0, v4

    if-gez v1, :cond_6

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-gez v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-gez v1, :cond_6

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-gez v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-gez v1, :cond_6

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-gez v2, :cond_1

    :cond_5
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;->h()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public final f()J
    .locals 10

    const-wide/16 v8, 0x0

    iget v0, p0, Lcom/tapjoy/internal/dl;->e:I

    iget v1, p0, Lcom/tapjoy/internal/dl;->c:I

    if-eq v1, v0, :cond_9

    iget-object v4, p0, Lcom/tapjoy/internal/dl;->a:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    if-ltz v0, :cond_0

    iput v1, p0, Lcom/tapjoy/internal/dl;->e:I

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    iget v2, p0, Lcom/tapjoy/internal/dl;->c:I

    sub-int/2addr v2, v1

    const/16 v3, 0x9

    if-lt v2, v3, :cond_9

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v3, v0, v8

    if-gez v3, :cond_2

    const-wide/16 v4, -0x80

    xor-long/2addr v0, v4

    :cond_1
    :goto_1
    iput v2, p0, Lcom/tapjoy/internal/dl;->e:I

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    shl-int/lit8 v2, v2, 0xe

    int-to-long v6, v2

    xor-long/2addr v0, v6

    cmp-long v2, v0, v8

    if-ltz v2, :cond_3

    const-wide/16 v4, 0x3f80

    xor-long/2addr v0, v4

    move v2, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v4, v3

    shl-int/lit8 v3, v3, 0x15

    int-to-long v6, v3

    xor-long/2addr v0, v6

    cmp-long v3, v0, v8

    if-gez v3, :cond_4

    const-wide/32 v4, -0x1fc080

    xor-long/2addr v0, v4

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    int-to-long v6, v2

    const/16 v2, 0x1c

    shl-long/2addr v6, v2

    xor-long/2addr v0, v6

    cmp-long v2, v0, v8

    if-ltz v2, :cond_5

    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v0, v4

    move v2, v3

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v4, v3

    int-to-long v6, v3

    const/16 v3, 0x23

    shl-long/2addr v6, v3

    xor-long/2addr v0, v6

    cmp-long v3, v0, v8

    if-gez v3, :cond_6

    const-wide v4, -0x7f01fc080L

    xor-long/2addr v0, v4

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    int-to-long v6, v2

    const/16 v2, 0x2a

    shl-long/2addr v6, v2

    xor-long/2addr v0, v6

    cmp-long v2, v0, v8

    if-ltz v2, :cond_7

    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v0, v4

    move v2, v3

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v4, v3

    int-to-long v6, v3

    const/16 v3, 0x31

    shl-long/2addr v6, v3

    xor-long/2addr v0, v6

    cmp-long v3, v0, v8

    if-gez v3, :cond_8

    const-wide v4, -0x1fc07f01fc080L

    xor-long/2addr v0, v4

    goto :goto_1

    :cond_8
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    int-to-long v6, v2

    const/16 v2, 0x38

    shl-long/2addr v6, v2

    xor-long/2addr v0, v6

    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v0, v6

    cmp-long v2, v0, v8

    if-gez v2, :cond_a

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v4, v3

    int-to-long v4, v3

    cmp-long v3, v4, v8

    if-gez v3, :cond_1

    :cond_9
    invoke-direct {p0}, Lcom/tapjoy/internal/dl;->h()J

    move-result-wide v0

    goto/16 :goto_0

    :cond_a
    move v2, v3

    goto/16 :goto_1
.end method

.method public final g()J
    .locals 10

    const/16 v6, 0x8

    const-wide/16 v8, 0xff

    iget v0, p0, Lcom/tapjoy/internal/dl;->e:I

    iget v1, p0, Lcom/tapjoy/internal/dl;->c:I

    sub-int/2addr v1, v0

    if-ge v1, v6, :cond_0

    invoke-direct {p0, v6}, Lcom/tapjoy/internal/dl;->c(I)V

    iget v0, p0, Lcom/tapjoy/internal/dl;->e:I

    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/dl;->a:[B

    add-int/lit8 v2, v0, 0x8

    iput v2, p0, Lcom/tapjoy/internal/dl;->e:I

    aget-byte v2, v1, v0

    int-to-long v2, v2

    and-long/2addr v2, v8

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v8

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

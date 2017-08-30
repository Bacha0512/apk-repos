.class Lcom/tapjoy/internal/dt;
.super Lcom/tapjoy/internal/dk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/dt$a;
    }
.end annotation


# instance fields
.field private a:I

.field protected final d:[B


# direct methods
.method constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/dk;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/dt;->a:I

    iput-object p1, p0, Lcom/tapjoy/internal/dt;->d:[B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/dt;->d:[B

    array-length v0, v0

    return v0
.end method

.method protected final a(III)I
    .locals 10

    const/16 v9, -0x20

    const/16 v4, -0x60

    const/4 v2, -0x1

    const/16 v8, -0x41

    invoke-virtual {p0}, Lcom/tapjoy/internal/dt;->b()I

    move-result v0

    add-int v1, v0, p2

    iget-object v5, p0, Lcom/tapjoy/internal/dt;->d:[B

    add-int v6, v1, p3

    if-eqz p1, :cond_d

    if-lt v1, v6, :cond_0

    :goto_0
    return p1

    :cond_0
    int-to-byte v7, p1

    if-ge v7, v9, :cond_2

    const/16 v0, -0x3e

    if-lt v7, v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v5, v1

    if-le v1, v8, :cond_e

    :cond_1
    move p1, v2

    goto :goto_0

    :cond_2
    const/16 v0, -0x10

    if-ge v7, v0, :cond_8

    shr-int/lit8 v0, p1, 0x8

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    if-nez v0, :cond_4

    add-int/lit8 v3, v1, 0x1

    aget-byte v0, v5, v1

    if-lt v3, v6, :cond_3

    invoke-static {v7, v0}, Lcom/tapjoy/internal/eb;->a(II)I

    move-result p1

    goto :goto_0

    :cond_3
    move v1, v3

    :cond_4
    if-gt v0, v8, :cond_7

    if-ne v7, v9, :cond_5

    if-lt v0, v4, :cond_7

    :cond_5
    const/16 v3, -0x13

    if-ne v7, v3, :cond_6

    if-ge v0, v4, :cond_7

    :cond_6
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v5, v1

    if-le v1, v8, :cond_e

    :cond_7
    move p1, v2

    goto :goto_0

    :cond_8
    shr-int/lit8 v0, p1, 0x8

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v3, v0

    const/4 v0, 0x0

    if-nez v3, :cond_9

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v5, v1

    if-lt v3, v6, :cond_f

    invoke-static {v7, v1}, Lcom/tapjoy/internal/eb;->a(II)I

    move-result p1

    goto :goto_0

    :cond_9
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    move v4, v3

    move v3, v1

    :goto_1
    if-nez v0, :cond_a

    add-int/lit8 v1, v3, 0x1

    aget-byte v0, v5, v3

    if-lt v1, v6, :cond_b

    invoke-static {v7, v4, v0}, Lcom/tapjoy/internal/eb;->a(III)I

    move-result p1

    goto :goto_0

    :cond_a
    move v1, v3

    :cond_b
    if-gt v4, v8, :cond_c

    shl-int/lit8 v3, v7, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1e

    if-nez v3, :cond_c

    if-gt v0, v8, :cond_c

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v5, v1

    if-le v1, v8, :cond_e

    :cond_c
    move p1, v2

    goto :goto_0

    :cond_d
    move v0, v1

    :cond_e
    invoke-static {v5, v0, v6}, Lcom/tapjoy/internal/eb;->b([BII)I

    move-result p1

    goto :goto_0

    :cond_f
    move v4, v1

    goto :goto_1
.end method

.method final a(Ljava/io/OutputStream;II)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/dt;->d:[B

    invoke-virtual {p0}, Lcom/tapjoy/internal/dt;->b()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method protected a([BIII)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/dt;->d:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final a(Lcom/tapjoy/internal/dt;II)Z
    .locals 7

    invoke-virtual {p1}, Lcom/tapjoy/internal/dt;->a()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/tapjoy/internal/dt;->a()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Length too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int v0, p2, p3

    invoke-virtual {p1}, Lcom/tapjoy/internal/dt;->a()I

    move-result v1

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/tapjoy/internal/dt;->a()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Ran off end of other: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/tapjoy/internal/dt;->d:[B

    iget-object v3, p1, Lcom/tapjoy/internal/dt;->d:[B

    invoke-virtual {p0}, Lcom/tapjoy/internal/dt;->b()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Lcom/tapjoy/internal/dt;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/dt;->b()I

    move-result v0

    add-int/2addr v0, p2

    :goto_0
    if-ge v1, v4, :cond_3

    aget-byte v5, v2, v1

    aget-byte v6, v3, v0

    if-eq v5, v6, :cond_2

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final b(III)I
    .locals 5

    iget-object v2, p0, Lcom/tapjoy/internal/dt;->d:[B

    invoke-virtual {p0}, Lcom/tapjoy/internal/dt;->b()I

    move-result v0

    add-int v1, v0, p2

    move v0, v1

    :goto_0
    add-int v3, v1, p3

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, p1, 0x1f

    aget-byte v4, v2, v0

    add-int p1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/internal/dt;->d:[B

    invoke-virtual {p0}, Lcom/tapjoy/internal/dt;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/tapjoy/internal/dt;->a()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public c()Lcom/tapjoy/internal/dk$a;
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/dt$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/dt$a;-><init>(Lcom/tapjoy/internal/dt;B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/tapjoy/internal/dk;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/dt;->a()I

    move-result v3

    move-object v0, p1

    check-cast v0, Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->a()I

    move-result v0

    if-eq v3, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/dt;->a()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/tapjoy/internal/dt;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/tapjoy/internal/dt;

    invoke-virtual {p0}, Lcom/tapjoy/internal/dt;->a()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/tapjoy/internal/dt;->a(Lcom/tapjoy/internal/dt;II)Z

    move-result v0

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/tapjoy/internal/dy;

    if-eqz v0, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Has a new type of ByteString been created? Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Z
    .locals 3

    invoke-virtual {p0}, Lcom/tapjoy/internal/dt;->b()I

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/dt;->d:[B

    invoke-virtual {p0}, Lcom/tapjoy/internal/dt;->a()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/tapjoy/internal/eb;->a([BII)Z

    move-result v0

    return v0
.end method

.method protected final h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/dt;->a:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tapjoy/internal/dt;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/tapjoy/internal/dt;->b(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/tapjoy/internal/dt;->a:I

    :cond_1
    return v0
.end method

.method protected final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/tapjoy/internal/dt;->c()Lcom/tapjoy/internal/dk$a;

    move-result-object v0

    return-object v0
.end method

.method protected final j()I
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/dt;->a:I

    return v0
.end method

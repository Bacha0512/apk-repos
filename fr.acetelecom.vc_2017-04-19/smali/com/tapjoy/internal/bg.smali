.class public final Lcom/tapjoy/internal/bg;
.super Ljava/io/FilterInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final read([B)I
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-super {p0, p1, v0, v2}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v2

    if-ne v2, v1, :cond_2

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-super {p0, p1, v2, v3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v2

    if-ne v2, v1, :cond_2

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public final skip(J)J
    .locals 9

    const-wide/16 v4, 0x0

    move-wide v2, v4

    :goto_0
    cmp-long v0, v2, p1

    if-gez v0, :cond_1

    sub-long v0, p1, v2

    invoke-super {p0, v0, v1}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v6

    if-ltz v6, :cond_1

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    :cond_0
    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.class public Lcom/mexuar/corraleta/util/ByteBuffer;
.super Ljava/lang/Object;
.source "ByteBuffer.java"


# instance fields
.field private myStore:[B

.field private offset:I

.field private pos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    .line 24
    iput v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    .line 25
    iput v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    .line 22
    return-void
.end method

.method public static allocate(I)Lcom/mexuar/corraleta/util/ByteBuffer;
    .locals 3
    .param p0, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-direct {v0}, Lcom/mexuar/corraleta/util/ByteBuffer;-><init>()V

    .line 35
    .local v0, "bb":Lcom/mexuar/corraleta/util/ByteBuffer;
    new-array v1, p0, [B

    iput-object v1, v0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    .line 36
    iput v2, v0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    .line 37
    iput v2, v0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    .line 38
    return-object v0
.end method

.method public static wrap([B)Lcom/mexuar/corraleta/util/ByteBuffer;
    .locals 2
    .param p0, "bs"    # [B

    .prologue
    const/4 v1, 0x0

    .line 48
    new-instance v0, Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-direct {v0}, Lcom/mexuar/corraleta/util/ByteBuffer;-><init>()V

    .line 49
    .local v0, "bb":Lcom/mexuar/corraleta/util/ByteBuffer;
    iput-object p0, v0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    .line 50
    iput v1, v0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    .line 51
    iput v1, v0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    .line 52
    return-object v0
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    return-object v0
.end method

.method public get()B
    .locals 4

    .prologue
    .line 136
    iget v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    return v0
.end method

.method public get([B)V
    .locals 4
    .param p1, "b"    # [B

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/mexuar/corraleta/util/ByteBuffer;->remaining()I

    move-result v0

    .line 247
    .local v0, "l":I
    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 248
    array-length v0, p1

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    .line 252
    return-void
.end method

.method public getChar()C
    .locals 5

    .prologue
    .line 216
    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 217
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v2, v3

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    .line 220
    iget-object v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v4, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 219
    add-int/2addr v1, v2

    int-to-short v0, v1

    .line 221
    .local v0, "s":S
    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    .line 222
    int-to-char v1, v0

    return v1
.end method

.method public getChar(I)C
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 232
    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 233
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    add-int/2addr v2, p1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    .line 236
    iget-object v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 235
    add-int/2addr v1, v2

    int-to-short v0, v1

    .line 237
    .local v0, "s":S
    int-to-char v1, v0

    return v1
.end method

.method public getInt()I
    .locals 5

    .prologue
    .line 119
    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 120
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v2, v3

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    .line 123
    iget-object v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v4, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 122
    add-int/2addr v1, v2

    .line 124
    iget-object v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v4, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 122
    add-int/2addr v1, v2

    .line 125
    iget-object v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v4, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 122
    add-int v0, v1, v2

    .line 126
    .local v0, "i":I
    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    .line 127
    return v0
.end method

.method public getShort()S
    .locals 5

    .prologue
    .line 95
    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 96
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v2, v3

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    .line 99
    iget-object v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v4, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 98
    add-int/2addr v1, v2

    int-to-short v0, v1

    .line 100
    .local v0, "s":S
    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    .line 101
    return v0
.end method

.method public getShort(I)S
    .locals 4
    .param p1, "of"    # I

    .prologue
    .line 105
    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 106
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    add-int/2addr v2, p1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    .line 109
    iget-object v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 108
    add-int/2addr v1, v2

    int-to-short v0, v1

    .line 110
    .local v0, "s":S
    return v0
.end method

.method public hasRemaining()Z
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public position()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    return v0
.end method

.method public put(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 190
    iget v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    aput-byte p1, v0, v1

    .line 194
    iget v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    .line 195
    return-void
.end method

.method public put([B)V
    .locals 4
    .param p1, "payload"    # [B

    .prologue
    .line 203
    iget v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v0, v1

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 206
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v2, v3

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iget v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    .line 208
    return-void
.end method

.method public putChar(C)V
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 148
    iget v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v1, v2

    int-to-short v2, p1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 152
    iget-object v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v1, v2

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 153
    return-void
.end method

.method public putChar(IC)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "c"    # C

    .prologue
    .line 162
    iget v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    add-int/2addr v1, p1

    int-to-short v2, p2

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 166
    iget-object v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 167
    return-void
.end method

.method public putInt(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 175
    iget v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 179
    iget-object v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 180
    iget-object v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 181
    iget-object v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v1, v2

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 182
    return-void
.end method

.method public putShort(IS)V
    .locals 4
    .param p1, "of"    # I
    .param p2, "s"    # S

    .prologue
    .line 277
    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 278
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "of":I
    .local v0, "of":I
    add-int/2addr v2, p1

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 281
    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "of":I
    .restart local p1    # "of":I
    add-int/2addr v2, v0

    and-int/lit16 v3, p2, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 282
    return-void
.end method

.method public putShort(S)V
    .locals 4
    .param p1, "s"    # S

    .prologue
    .line 269
    iget v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 273
    iget-object v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    iget v2, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    add-int/2addr v1, v2

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 274
    return-void
.end method

.method public remaining()I
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    array-length v0, v0

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public slice()Lcom/mexuar/corraleta/util/ByteBuffer;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-direct {v0}, Lcom/mexuar/corraleta/util/ByteBuffer;-><init>()V

    .line 62
    .local v0, "bb":Lcom/mexuar/corraleta/util/ByteBuffer;
    iget-object v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    iput-object v1, v0, Lcom/mexuar/corraleta/util/ByteBuffer;->myStore:[B

    .line 63
    const/4 v1, 0x0

    iput v1, v0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    .line 64
    iget v1, p0, Lcom/mexuar/corraleta/util/ByteBuffer;->pos:I

    iput v1, v0, Lcom/mexuar/corraleta/util/ByteBuffer;->offset:I

    .line 65
    return-object v0
.end method

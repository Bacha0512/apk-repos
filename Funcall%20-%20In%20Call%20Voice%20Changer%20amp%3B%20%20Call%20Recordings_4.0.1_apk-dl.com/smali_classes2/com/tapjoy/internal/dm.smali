.class public final Lcom/tapjoy/internal/dm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/dm$a;
    }
.end annotation


# instance fields
.field final a:I

.field b:I

.field final c:Ljava/io/OutputStream;

.field private final d:[B

.field private e:I


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/tapjoy/internal/dm;->e:I

    .line 86
    iput-object p1, p0, Lcom/tapjoy/internal/dm;->c:Ljava/io/OutputStream;

    .line 87
    iput-object p2, p0, Lcom/tapjoy/internal/dm;->d:[B

    .line 88
    iput v0, p0, Lcom/tapjoy/internal/dm;->b:I

    .line 89
    array-length v0, p2

    iput v0, p0, Lcom/tapjoy/internal/dm;->a:I

    .line 90
    return-void
.end method

.method constructor <init>([BI)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v1, p0, Lcom/tapjoy/internal/dm;->e:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/dm;->c:Ljava/io/OutputStream;

    .line 80
    iput-object p1, p0, Lcom/tapjoy/internal/dm;->d:[B

    .line 81
    iput v1, p0, Lcom/tapjoy/internal/dm;->b:I

    .line 82
    add-int/lit8 v0, p2, 0x0

    iput v0, p0, Lcom/tapjoy/internal/dm;->a:I

    .line 83
    return-void
.end method

.method public static a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dm;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/tapjoy/internal/dm;

    new-array v1, p1, [B

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/dm;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public static b(I)I
    .locals 2

    .prologue
    .line 681
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tapjoy/internal/dm;->d(I)I

    move-result v0

    .line 2916
    invoke-static {p0}, Lcom/tapjoy/internal/dm;->g(I)I

    move-result v1

    .line 681
    add-int/2addr v0, v1

    return v0
.end method

.method public static b(II)I
    .locals 2

    .prologue
    .line 560
    invoke-static {p0}, Lcom/tapjoy/internal/dm;->d(I)I

    move-result v0

    invoke-static {p1}, Lcom/tapjoy/internal/dm;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IJ)I
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 552
    invoke-static {p0}, Lcom/tapjoy/internal/dm;->d(I)I

    move-result v1

    .line 2232
    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 552
    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 2233
    :cond_0
    const-wide/16 v2, -0x4000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 2234
    :cond_1
    const-wide/32 v2, -0x200000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 2235
    :cond_2
    const-wide/32 v2, -0x10000000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 2236
    :cond_3
    const-wide v2, -0x800000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 2237
    :cond_4
    const-wide v2, -0x40000000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 2238
    :cond_5
    const-wide/high16 v2, -0x2000000000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 2239
    :cond_6
    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 2240
    :cond_7
    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 2241
    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static b(ILcom/tapjoy/internal/dk;)I
    .locals 2

    .prologue
    .line 637
    invoke-static {p0}, Lcom/tapjoy/internal/dm;->d(I)I

    move-result v0

    invoke-static {p1}, Lcom/tapjoy/internal/dm;->b(Lcom/tapjoy/internal/dk;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/tapjoy/internal/du;)I
    .locals 3

    .prologue
    .line 628
    invoke-static {p0}, Lcom/tapjoy/internal/dm;->d(I)I

    move-result v0

    .line 2865
    invoke-interface {p1}, Lcom/tapjoy/internal/du;->b()I

    move-result v1

    .line 2866
    invoke-static {v1}, Lcom/tapjoy/internal/dm;->h(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 628
    add-int/2addr v0, v1

    return v0
.end method

.method public static b(Lcom/tapjoy/internal/dk;)I
    .locals 2

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/tapjoy/internal/dk;->a()I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/internal/dm;->h(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/dk;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 958
    iget-object v0, p0, Lcom/tapjoy/internal/dm;->c:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 960
    new-instance v0, Lcom/tapjoy/internal/dm$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/dm$a;-><init>()V

    throw v0

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/dm;->c:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tapjoy/internal/dm;->d:[B

    iget v2, p0, Lcom/tapjoy/internal/dm;->b:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 966
    iput v3, p0, Lcom/tapjoy/internal/dm;->b:I

    .line 967
    return-void
.end method

.method private c(II)V
    .locals 1

    .prologue
    .line 1180
    invoke-static {p1, p2}, Lcom/tapjoy/internal/ec;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dm;->e(I)V

    .line 1181
    return-void
.end method

.method public static d(I)I
    .locals 1

    .prologue
    .line 1185
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tapjoy/internal/ec;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/internal/dm;->h(I)I

    move-result v0

    return v0
.end method

.method private f(I)V
    .locals 2

    .prologue
    .line 395
    if-ltz p1, :cond_0

    .line 396
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/dm;->e(I)V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/dm;->a(J)V

    goto :goto_0
.end method

.method private static g(I)I
    .locals 1

    .prologue
    .line 793
    if-ltz p0, :cond_0

    .line 794
    invoke-static {p0}, Lcom/tapjoy/internal/dm;->h(I)I

    move-result v0

    .line 797
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private static h(I)I
    .locals 1

    .prologue
    .line 1210
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1214
    :goto_0
    return v0

    .line 1211
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 1212
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1213
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1214
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/tapjoy/internal/dm;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 975
    invoke-direct {p0}, Lcom/tapjoy/internal/dm;->b()V

    .line 977
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 313
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/dm;->c(II)V

    .line 1497
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/dm;->f(I)V

    .line 315
    return-void
.end method

.method public final a(ID)V
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/dm;->c(II)V

    .line 1375
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/dm;->b(J)V

    .line 172
    return-void
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/dm;->c(II)V

    .line 199
    invoke-direct {p0, p2}, Lcom/tapjoy/internal/dm;->f(I)V

    .line 200
    return-void
.end method

.method public final a(IJ)V
    .locals 2

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/dm;->c(II)V

    .line 1390
    invoke-virtual {p0, p2, p3}, Lcom/tapjoy/internal/dm;->a(J)V

    .line 193
    return-void
.end method

.method public final a(ILcom/tapjoy/internal/dk;)V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/dm;->c(II)V

    .line 264
    invoke-virtual {p0, p2}, Lcom/tapjoy/internal/dm;->a(Lcom/tapjoy/internal/dk;)V

    .line 265
    return-void
.end method

.method public final a(ILcom/tapjoy/internal/du;)V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/dm;->c(II)V

    .line 1448
    invoke-interface {p2}, Lcom/tapjoy/internal/du;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dm;->e(I)V

    .line 1449
    invoke-interface {p2, p0}, Lcom/tapjoy/internal/du;->a(Lcom/tapjoy/internal/dm;)V

    .line 257
    return-void
.end method

.method public final a(IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/dm;->c(II)V

    .line 1415
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dm;->c(I)V

    .line 221
    return-void
.end method

.method public final a(J)V
    .locals 5

    .prologue
    .line 1220
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1221
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dm;->c(I)V

    .line 1222
    return-void

    .line 1224
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dm;->c(I)V

    .line 1225
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public final a(Lcom/tapjoy/internal/dk;)V
    .locals 1

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dm;->e(I)V

    .line 456
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/dm;->c(Lcom/tapjoy/internal/dk;)V

    .line 457
    return-void
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 1256
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dm;->c(I)V

    .line 1257
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dm;->c(I)V

    .line 1258
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dm;->c(I)V

    .line 1259
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dm;->c(I)V

    .line 1260
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dm;->c(I)V

    .line 1261
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dm;->c(I)V

    .line 1262
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dm;->c(I)V

    .line 1263
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dm;->c(I)V

    .line 1264
    return-void
.end method

.method public final c(I)V
    .locals 4

    .prologue
    .line 1042
    int-to-byte v0, p1

    .line 3032
    iget v1, p0, Lcom/tapjoy/internal/dm;->b:I

    iget v2, p0, Lcom/tapjoy/internal/dm;->a:I

    if-ne v1, v2, :cond_0

    .line 3033
    invoke-direct {p0}, Lcom/tapjoy/internal/dm;->b()V

    .line 3036
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/dm;->d:[B

    iget v2, p0, Lcom/tapjoy/internal/dm;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tapjoy/internal/dm;->b:I

    aput-byte v0, v1, v2

    .line 3037
    iget v0, p0, Lcom/tapjoy/internal/dm;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/dm;->e:I

    .line 1043
    return-void
.end method

.method public final c(Lcom/tapjoy/internal/dk;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1047
    invoke-virtual {p1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v0

    .line 3147
    iget v1, p0, Lcom/tapjoy/internal/dm;->a:I

    iget v2, p0, Lcom/tapjoy/internal/dm;->b:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_1

    .line 3149
    iget-object v1, p0, Lcom/tapjoy/internal/dm;->d:[B

    iget v2, p0, Lcom/tapjoy/internal/dm;->b:I

    invoke-virtual {p1, v1, v4, v2, v0}, Lcom/tapjoy/internal/dk;->b([BIII)V

    .line 3150
    iget v1, p0, Lcom/tapjoy/internal/dm;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tapjoy/internal/dm;->b:I

    .line 3173
    :cond_0
    :goto_0
    iget v1, p0, Lcom/tapjoy/internal/dm;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/dm;->e:I

    .line 1048
    return-void

    .line 3155
    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/dm;->a:I

    iget v2, p0, Lcom/tapjoy/internal/dm;->b:I

    sub-int/2addr v1, v2

    .line 3156
    iget-object v2, p0, Lcom/tapjoy/internal/dm;->d:[B

    iget v3, p0, Lcom/tapjoy/internal/dm;->b:I

    invoke-virtual {p1, v2, v4, v3, v1}, Lcom/tapjoy/internal/dk;->b([BIII)V

    .line 3157
    add-int/lit8 v2, v1, 0x0

    .line 3158
    sub-int/2addr v0, v1

    .line 3159
    iget v3, p0, Lcom/tapjoy/internal/dm;->a:I

    iput v3, p0, Lcom/tapjoy/internal/dm;->b:I

    .line 3160
    iget v3, p0, Lcom/tapjoy/internal/dm;->e:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/tapjoy/internal/dm;->e:I

    .line 3161
    invoke-direct {p0}, Lcom/tapjoy/internal/dm;->b()V

    .line 3166
    iget v1, p0, Lcom/tapjoy/internal/dm;->a:I

    if-gt v0, v1, :cond_2

    .line 3168
    iget-object v1, p0, Lcom/tapjoy/internal/dm;->d:[B

    invoke-virtual {p1, v1, v2, v4, v0}, Lcom/tapjoy/internal/dk;->b([BIII)V

    .line 3169
    iput v0, p0, Lcom/tapjoy/internal/dm;->b:I

    goto :goto_0

    .line 3171
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/dm;->c:Ljava/io/OutputStream;

    .line 3558
    if-gez v2, :cond_3

    .line 3559
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x1e

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Source offset < 0: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3561
    :cond_3
    if-gez v0, :cond_4

    .line 3562
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Length < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3564
    :cond_4
    add-int v3, v2, v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 3565
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Source end offset exceeded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3568
    :cond_5
    if-lez v0, :cond_0

    .line 3569
    invoke-virtual {p1, v1, v2, v0}, Lcom/tapjoy/internal/dk;->a(Ljava/io/OutputStream;II)V

    goto/16 :goto_0
.end method

.method public final e(I)V
    .locals 1

    .prologue
    .line 1194
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1195
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/dm;->c(I)V

    .line 1196
    return-void

    .line 1198
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dm;->c(I)V

    .line 1199
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

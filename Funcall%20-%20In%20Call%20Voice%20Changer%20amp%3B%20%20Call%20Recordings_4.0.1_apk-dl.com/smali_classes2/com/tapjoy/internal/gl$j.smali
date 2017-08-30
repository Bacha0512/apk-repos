.class public final Lcom/tapjoy/internal/gl$j;
.super Lcom/tapjoy/internal/do;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gl$j$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/dw;

.field private static final d:Lcom/tapjoy/internal/gl$j;


# instance fields
.field c:J

.field private final e:Lcom/tapjoy/internal/dk;

.field private f:I

.field private g:Ljava/lang/Object;

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12326
    new-instance v0, Lcom/tapjoy/internal/gl$j$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$j$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gl$j;->b:Lcom/tapjoy/internal/dw;

    .line 12783
    new-instance v0, Lcom/tapjoy/internal/gl$j;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$j;-><init>()V

    .line 12784
    sput-object v0, Lcom/tapjoy/internal/gl$j;->d:Lcom/tapjoy/internal/gl$j;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$j;->j()V

    .line 12785
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 12259
    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    .line 12403
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$j;->h:B

    .line 12433
    iput v0, p0, Lcom/tapjoy/internal/gl$j;->i:I

    .line 12259
    sget-object v0, Lcom/tapjoy/internal/dk;->b:Lcom/tapjoy/internal/dk;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$j;->e:Lcom/tapjoy/internal/dk;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 12274
    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    .line 12403
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$j;->h:B

    .line 12433
    iput v0, p0, Lcom/tapjoy/internal/gl$j;->i:I

    .line 12275
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$j;->j()V

    .line 12277
    invoke-static {}, Lcom/tapjoy/internal/dk;->g()Lcom/tapjoy/internal/dk$b;

    move-result-object v2

    .line 14097
    const/16 v0, 0x1000

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dm;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dm;

    move-result-object v3

    .line 12283
    const/4 v0, 0x0

    .line 12284
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 12285
    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->a()I

    move-result v4

    .line 12286
    sparse-switch v4, :sswitch_data_0

    .line 15073
    invoke-virtual {p1, v4, v3}, Lcom/tapjoy/internal/dl;->a(ILcom/tapjoy/internal/dm;)Z

    move-result v4

    .line 12291
    if-nez v4, :cond_0

    move v0, v1

    .line 12293
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 12289
    goto :goto_0

    .line 12298
    :sswitch_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->e()Lcom/tapjoy/internal/dk;

    move-result-object v4

    .line 12299
    iget v5, p0, Lcom/tapjoy/internal/gl$j;->f:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/tapjoy/internal/gl$j;->f:I

    .line 12300
    iput-object v4, p0, Lcom/tapjoy/internal/gl$j;->g:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/tapjoy/internal/dq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 12311
    :catch_0
    move-exception v0

    .line 16057
    :try_start_1
    iput-object p0, v0, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    .line 12311
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12316
    :catchall_0
    move-exception v0

    .line 12317
    :try_start_2
    invoke-virtual {v3}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 12321
    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$j;->e:Lcom/tapjoy/internal/dk;

    .line 12323
    :goto_1
    throw v0

    .line 12304
    :sswitch_2
    :try_start_3
    iget v4, p0, Lcom/tapjoy/internal/gl$j;->f:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/tapjoy/internal/gl$j;->f:I

    .line 15343
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->g()J

    move-result-wide v4

    .line 12305
    iput-wide v4, p0, Lcom/tapjoy/internal/gl$j;->c:J
    :try_end_3
    .catch Lcom/tapjoy/internal/dq; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 12312
    :catch_1
    move-exception v0

    .line 12313
    :try_start_4
    new-instance v1, Lcom/tapjoy/internal/dq;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/dq;-><init>(Ljava/lang/String;)V

    .line 17057
    iput-object p0, v1, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    .line 12313
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 12317
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 12321
    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$j;->e:Lcom/tapjoy/internal/dk;

    .line 12322
    :goto_2
    return-void

    .line 12321
    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$j;->e:Lcom/tapjoy/internal/dk;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$j;->e:Lcom/tapjoy/internal/dk;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$j;->e:Lcom/tapjoy/internal/dk;

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$j;->e:Lcom/tapjoy/internal/dk;

    throw v0

    .line 12286
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dl;B)V
    .locals 0

    .prologue
    .line 12250
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$j;-><init>(Lcom/tapjoy/internal/dl;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/do$a;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 12256
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/do;-><init>(B)V

    .line 12403
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$j;->h:B

    .line 12433
    iput v1, p0, Lcom/tapjoy/internal/gl$j;->i:I

    .line 13123
    iget-object v0, p1, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 12257
    iput-object v0, p0, Lcom/tapjoy/internal/gl$j;->e:Lcom/tapjoy/internal/dk;

    .line 12258
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/do$a;B)V
    .locals 0

    .prologue
    .line 12250
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$j;-><init>(Lcom/tapjoy/internal/do$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$j;I)I
    .locals 0

    .prologue
    .line 12250
    iput p1, p0, Lcom/tapjoy/internal/gl$j;->f:I

    return p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$j;J)J
    .locals 1

    .prologue
    .line 12250
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$j;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$j;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12250
    iget-object v0, p0, Lcom/tapjoy/internal/gl$j;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$j;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 12250
    iput-object p1, p0, Lcom/tapjoy/internal/gl$j;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$j;)Lcom/tapjoy/internal/dk;
    .locals 1

    .prologue
    .line 12250
    iget-object v0, p0, Lcom/tapjoy/internal/gl$j;->e:Lcom/tapjoy/internal/dk;

    return-object v0
.end method

.method public static d()Lcom/tapjoy/internal/gl$j;
    .locals 1

    .prologue
    .line 12263
    sget-object v0, Lcom/tapjoy/internal/gl$j;->d:Lcom/tapjoy/internal/gl$j;

    return-object v0
.end method

.method public static h()Lcom/tapjoy/internal/gl$j$a;
    .locals 1

    .prologue
    .line 12557
    invoke-static {}, Lcom/tapjoy/internal/gl$j$a;->e()Lcom/tapjoy/internal/gl$j$a;

    move-result-object v0

    return-object v0
.end method

.method private i()Lcom/tapjoy/internal/dk;
    .locals 2

    .prologue
    .line 12372
    iget-object v0, p0, Lcom/tapjoy/internal/gl$j;->g:Ljava/lang/Object;

    .line 12373
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12374
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    .line 12377
    iput-object v0, p0, Lcom/tapjoy/internal/gl$j;->g:Ljava/lang/Object;

    .line 12380
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 12400
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$j;->g:Ljava/lang/Object;

    .line 12401
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/internal/gl$j;->c:J

    .line 12402
    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/dm;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 12423
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->b()I

    .line 12424
    iget v0, p0, Lcom/tapjoy/internal/gl$j;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 12425
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$j;->i()Lcom/tapjoy/internal/dk;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    .line 12427
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$j;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 12428
    iget-wide v0, p0, Lcom/tapjoy/internal/gl$j;->c:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/tapjoy/internal/dm;->a(IJ)V

    .line 12430
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/gl$j;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dm;->c(Lcom/tapjoy/internal/dk;)V

    .line 12431
    return-void
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 12435
    iget v0, p0, Lcom/tapjoy/internal/gl$j;->i:I

    .line 12436
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 12449
    :goto_0
    return v0

    .line 12438
    :cond_0
    const/4 v0, 0x0

    .line 12439
    iget v1, p0, Lcom/tapjoy/internal/gl$j;->f:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 12440
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$j;->i()Lcom/tapjoy/internal/dk;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/dk;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 12443
    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/gl$j;->f:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    .line 12444
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$j;->c:J

    invoke-static {v4, v2, v3}, Lcom/tapjoy/internal/dm;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12447
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/gl$j;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 12448
    iput v0, p0, Lcom/tapjoy/internal/gl$j;->i:I

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12405
    iget-byte v2, p0, Lcom/tapjoy/internal/gl$j;->h:B

    .line 12406
    if-ne v2, v0, :cond_0

    .line 12418
    :goto_0
    return v0

    .line 12407
    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 12409
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->e()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12410
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$j;->h:B

    move v0, v1

    .line 12411
    goto :goto_0

    .line 12413
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->g()Z

    move-result v2

    if-nez v2, :cond_3

    .line 12414
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$j;->h:B

    move v0, v1

    .line 12415
    goto :goto_0

    .line 12417
    :cond_3
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$j;->h:B

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 12348
    iget v1, p0, Lcom/tapjoy/internal/gl$j;->f:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 12461
    if-ne p1, p0, :cond_1

    .line 12480
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 12464
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/tapjoy/internal/gl$j;

    if-nez v0, :cond_2

    .line 12465
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 12467
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gl$j;

    .line 12470
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$j;->e()Z

    move-result v3

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 12471
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12472
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$j;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 12475
    :cond_3
    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$j;->g()Z

    move-result v3

    if-ne v0, v3, :cond_7

    move v0, v1

    .line 12476
    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->g()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 12477
    if-eqz v0, :cond_4

    .line 17396
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$j;->c:J

    .line 18396
    iget-wide v6, p1, Lcom/tapjoy/internal/gl$j;->c:J

    .line 12477
    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    move v0, v2

    .line 12470
    goto :goto_1

    :cond_6
    move v0, v2

    .line 12472
    goto :goto_2

    :cond_7
    move v0, v2

    .line 12475
    goto :goto_3

    :cond_8
    move v1, v0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12354
    iget-object v0, p0, Lcom/tapjoy/internal/gl$j;->g:Ljava/lang/Object;

    .line 12355
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12356
    check-cast v0, Ljava/lang/String;

    .line 12364
    :goto_0
    return-object v0

    .line 12358
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    .line 12360
    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v1

    .line 12361
    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12362
    iput-object v1, p0, Lcom/tapjoy/internal/gl$j;->g:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 12364
    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 12390
    iget v0, p0, Lcom/tapjoy/internal/gl$j;->f:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 12485
    iget v0, p0, Lcom/tapjoy/internal/gl$j;->a:I

    if-eqz v0, :cond_0

    .line 12486
    iget v0, p0, Lcom/tapjoy/internal/gl$j;->a:I

    .line 12501
    :goto_0
    return v0

    .line 12489
    :cond_0
    const-class v0, Lcom/tapjoy/internal/gl$j;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 12490
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12491
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 12492
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12494
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12495
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 12496
    mul-int/lit8 v0, v0, 0x35

    .line 19396
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$j;->c:J

    .line 12496
    invoke-static {v2, v3}, Lcom/tapjoy/internal/dp;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 12499
    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gl$j;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12500
    iput v0, p0, Lcom/tapjoy/internal/gl$j;->a:I

    goto :goto_0
.end method

.class public final Lcom/tapjoy/internal/gl$n;
.super Lcom/tapjoy/internal/do;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gl$n$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/dw;

.field private static final f:Lcom/tapjoy/internal/gl$n;


# instance fields
.field public c:Lcom/tapjoy/internal/gl$l;

.field public d:Lcom/tapjoy/internal/gl$a;

.field public e:Lcom/tapjoy/internal/gl$z;

.field private final g:Lcom/tapjoy/internal/dk;

.field private h:I

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9357
    new-instance v0, Lcom/tapjoy/internal/gl$n$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$n$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gl$n;->b:Lcom/tapjoy/internal/dw;

    .line 9893
    new-instance v0, Lcom/tapjoy/internal/gl$n;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$n;-><init>()V

    .line 9894
    sput-object v0, Lcom/tapjoy/internal/gl$n;->f:Lcom/tapjoy/internal/gl$n;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$n;->i()V

    .line 9895
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 9262
    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    .line 9423
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$n;->i:B

    .line 9454
    iput v0, p0, Lcom/tapjoy/internal/gl$n;->j:I

    .line 9262
    sget-object v0, Lcom/tapjoy/internal/dk;->b:Lcom/tapjoy/internal/dk;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/dk;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;)V
    .locals 7

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 9277
    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    .line 9423
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$n;->i:B

    .line 9454
    iput v0, p0, Lcom/tapjoy/internal/gl$n;->j:I

    .line 9278
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$n;->i()V

    .line 9280
    invoke-static {}, Lcom/tapjoy/internal/dk;->g()Lcom/tapjoy/internal/dk$b;

    move-result-object v5

    .line 11097
    const/16 v0, 0x1000

    invoke-static {v5, v0}, Lcom/tapjoy/internal/dm;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dm;

    move-result-object v6

    .line 9286
    const/4 v0, 0x0

    move v3, v0

    .line 9287
    :cond_0
    :goto_0
    if-nez v3, :cond_4

    .line 9288
    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->a()I

    move-result v0

    .line 9289
    sparse-switch v0, :sswitch_data_0

    .line 12073
    invoke-virtual {p1, v0, v6}, Lcom/tapjoy/internal/dl;->a(ILcom/tapjoy/internal/dm;)Z

    move-result v0

    .line 9294
    if-nez v0, :cond_0

    move v3, v4

    .line 9296
    goto :goto_0

    :sswitch_0
    move v3, v4

    .line 9292
    goto :goto_0

    .line 9302
    :sswitch_1
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->h:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_7

    .line 9303
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 14532
    invoke-static {}, Lcom/tapjoy/internal/gl$l$a;->e()Lcom/tapjoy/internal/gl$l$a;

    move-result-object v1

    .line 13535
    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$l$a;->a(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    move-object v1, v0

    .line 9305
    :goto_1
    sget-object v0, Lcom/tapjoy/internal/gl$l;->b:Lcom/tapjoy/internal/dw;

    invoke-virtual {p1, v0, p2}, Lcom/tapjoy/internal/dl;->a(Lcom/tapjoy/internal/dw;Lcom/tapjoy/internal/dn;)Lcom/tapjoy/internal/du;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$l;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 9306
    if-eqz v1, :cond_1

    .line 9307
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$l$a;->a(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l$a;

    .line 9308
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$l$a;->d()Lcom/tapjoy/internal/gl$l;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 9310
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->h:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$n;->h:I
    :try_end_0
    .catch Lcom/tapjoy/internal/dq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9342
    :catch_0
    move-exception v0

    .line 15057
    :try_start_1
    iput-object p0, v0, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    .line 9342
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9347
    :catchall_0
    move-exception v0

    .line 9348
    :try_start_2
    invoke-virtual {v6}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 9352
    invoke-virtual {v5}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/dk;

    .line 9354
    :goto_2
    throw v0

    .line 9315
    :sswitch_2
    :try_start_3
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->h:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 9316
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$a;->o()Lcom/tapjoy/internal/gl$a$a;

    move-result-object v0

    move-object v1, v0

    .line 9318
    :goto_3
    sget-object v0, Lcom/tapjoy/internal/gl$a;->b:Lcom/tapjoy/internal/dw;

    invoke-virtual {p1, v0, p2}, Lcom/tapjoy/internal/dl;->a(Lcom/tapjoy/internal/dw;Lcom/tapjoy/internal/dn;)Lcom/tapjoy/internal/du;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$a;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    .line 9319
    if-eqz v1, :cond_2

    .line 9320
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$a$a;->a(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a$a;

    .line 9321
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$a$a;->d()Lcom/tapjoy/internal/gl$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    .line 9323
    :cond_2
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->h:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$n;->h:I
    :try_end_3
    .catch Lcom/tapjoy/internal/dq; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 9343
    :catch_1
    move-exception v0

    .line 9344
    :try_start_4
    new-instance v1, Lcom/tapjoy/internal/dq;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/dq;-><init>(Ljava/lang/String;)V

    .line 16057
    iput-object p0, v1, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    .line 9344
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 9328
    :sswitch_3
    :try_start_5
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->h:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 9329
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 14985
    invoke-static {v0}, Lcom/tapjoy/internal/gl$z;->a(Lcom/tapjoy/internal/gl$z;)Lcom/tapjoy/internal/gl$z$a;

    move-result-object v0

    move-object v1, v0

    .line 9331
    :goto_4
    sget-object v0, Lcom/tapjoy/internal/gl$z;->b:Lcom/tapjoy/internal/dw;

    invoke-virtual {p1, v0, p2}, Lcom/tapjoy/internal/dl;->a(Lcom/tapjoy/internal/dw;Lcom/tapjoy/internal/dn;)Lcom/tapjoy/internal/du;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$z;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 9332
    if-eqz v1, :cond_3

    .line 9333
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gl$z$a;->a(Lcom/tapjoy/internal/gl$z;)Lcom/tapjoy/internal/gl$z$a;

    .line 9334
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$z$a;->d()Lcom/tapjoy/internal/gl$z;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 9336
    :cond_3
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->h:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$n;->h:I
    :try_end_5
    .catch Lcom/tapjoy/internal/dq; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 9348
    :cond_4
    :try_start_6
    invoke-virtual {v6}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 9352
    invoke-virtual {v5}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/dk;

    .line 9353
    :goto_5
    return-void

    .line 9352
    :catch_2
    move-exception v0

    invoke-virtual {v5}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/dk;

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {v5}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/dk;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v5}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/dk;

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {v5}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/dk;

    throw v0

    :cond_5
    move-object v1, v2

    goto :goto_4

    :cond_6
    move-object v1, v2

    goto/16 :goto_3

    :cond_7
    move-object v1, v2

    goto/16 :goto_1

    .line 9289
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;B)V
    .locals 0

    .prologue
    .line 9253
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/gl$n;-><init>(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/do$a;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 9259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/do;-><init>(B)V

    .line 9423
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$n;->i:B

    .line 9454
    iput v1, p0, Lcom/tapjoy/internal/gl$n;->j:I

    .line 10123
    iget-object v0, p1, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 9260
    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/dk;

    .line 9261
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/do$a;B)V
    .locals 0

    .prologue
    .line 9253
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$n;-><init>(Lcom/tapjoy/internal/do$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$n;I)I
    .locals 0

    .prologue
    .line 9253
    iput p1, p0, Lcom/tapjoy/internal/gl$n;->h:I

    return p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$n;)Lcom/tapjoy/internal/dk;
    .locals 1

    .prologue
    .line 9253
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/dk;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$n;Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a;
    .locals 0

    .prologue
    .line 9253
    iput-object p1, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$n;Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l;
    .locals 0

    .prologue
    .line 9253
    iput-object p1, p0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$n;Lcom/tapjoy/internal/gl$z;)Lcom/tapjoy/internal/gl$z;
    .locals 0

    .prologue
    .line 9253
    iput-object p1, p0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    return-object p1
.end method

.method public static d()Lcom/tapjoy/internal/gl$n;
    .locals 1

    .prologue
    .line 9266
    sget-object v0, Lcom/tapjoy/internal/gl$n;->f:Lcom/tapjoy/internal/gl$n;

    return-object v0
.end method

.method public static h()Lcom/tapjoy/internal/gl$n$a;
    .locals 1

    .prologue
    .line 9590
    invoke-static {}, Lcom/tapjoy/internal/gl$n$a;->e()Lcom/tapjoy/internal/gl$n$a;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 9419
    invoke-static {}, Lcom/tapjoy/internal/gl$l;->d()Lcom/tapjoy/internal/gl$l;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 9420
    invoke-static {}, Lcom/tapjoy/internal/gl$a;->d()Lcom/tapjoy/internal/gl$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    .line 9421
    invoke-static {}, Lcom/tapjoy/internal/gl$z;->d()Lcom/tapjoy/internal/gl$z;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 9422
    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/dm;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 9441
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->b()I

    .line 9442
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->h:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 9443
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    invoke-virtual {p1, v1, v0}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/du;)V

    .line 9445
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->h:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 9446
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    invoke-virtual {p1, v2, v0}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/du;)V

    .line 9448
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->h:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 9449
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/du;)V

    .line 9451
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/dk;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dm;->c(Lcom/tapjoy/internal/dk;)V

    .line 9452
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 9456
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->j:I

    .line 9457
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9474
    :goto_0
    return v0

    .line 9459
    :cond_0
    const/4 v0, 0x0

    .line 9460
    iget v1, p0, Lcom/tapjoy/internal/gl$n;->h:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 9461
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/du;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 9464
    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/gl$n;->h:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 9465
    iget-object v1, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    invoke-static {v3, v1}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/du;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9468
    :cond_2
    iget v1, p0, Lcom/tapjoy/internal/gl$n;->h:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 9469
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/du;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9472
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 9473
    iput v0, p0, Lcom/tapjoy/internal/gl$n;->j:I

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 9425
    iget-byte v2, p0, Lcom/tapjoy/internal/gl$n;->i:B

    .line 9426
    if-ne v2, v0, :cond_0

    .line 9436
    :goto_0
    return v0

    .line 9427
    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 9429
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16415
    iget-object v2, p0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 9430
    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$z;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 9431
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$n;->i:B

    move v0, v1

    .line 9432
    goto :goto_0

    .line 9435
    :cond_2
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$n;->i:B

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9379
    iget v1, p0, Lcom/tapjoy/internal/gl$n;->h:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 9486
    if-ne p1, p0, :cond_1

    .line 9510
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 9489
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/tapjoy/internal/gl$n;

    if-nez v0, :cond_2

    .line 9490
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 9492
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gl$n;

    .line 9495
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$n;->e()Z

    move-result v3

    if-ne v0, v3, :cond_6

    move v0, v1

    .line 9496
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9497
    if-eqz v0, :cond_7

    .line 17385
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 18385
    iget-object v3, p1, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 9497
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gl$l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 9500
    :cond_3
    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->f()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$n;->f()Z

    move-result v3

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 9501
    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9502
    if-eqz v0, :cond_9

    .line 18400
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    .line 19400
    iget-object v3, p1, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    .line 9502
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gl$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 9505
    :cond_4
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$n;->g()Z

    move-result v3

    if-ne v0, v3, :cond_a

    move v0, v1

    .line 9506
    :goto_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->g()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 9507
    if-eqz v0, :cond_5

    .line 19415
    iget-object v0, p0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 20415
    iget-object v3, p1, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 9507
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gl$z;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    move v0, v2

    .line 9495
    goto :goto_1

    :cond_7
    move v0, v2

    .line 9497
    goto :goto_2

    :cond_8
    move v0, v2

    .line 9500
    goto :goto_3

    :cond_9
    move v0, v2

    .line 9502
    goto :goto_4

    :cond_a
    move v0, v2

    .line 9505
    goto :goto_5

    :cond_b
    move v1, v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 9394
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->h:I

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

.method public final g()Z
    .locals 2

    .prologue
    .line 9409
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->h:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 9515
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->a:I

    if-eqz v0, :cond_0

    .line 9516
    iget v0, p0, Lcom/tapjoy/internal/gl$n;->a:I

    .line 9534
    :goto_0
    return v0

    .line 9519
    :cond_0
    const-class v0, Lcom/tapjoy/internal/gl$n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 9520
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9521
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 9522
    mul-int/lit8 v0, v0, 0x35

    .line 21385
    iget-object v1, p0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 9522
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$l;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9524
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9525
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 9526
    mul-int/lit8 v0, v0, 0x35

    .line 21400
    iget-object v1, p0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    .line 9526
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9528
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9529
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 9530
    mul-int/lit8 v0, v0, 0x35

    .line 21415
    iget-object v1, p0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 9530
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$z;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9532
    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gl$n;->g:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9533
    iput v0, p0, Lcom/tapjoy/internal/gl$n;->a:I

    goto :goto_0
.end method

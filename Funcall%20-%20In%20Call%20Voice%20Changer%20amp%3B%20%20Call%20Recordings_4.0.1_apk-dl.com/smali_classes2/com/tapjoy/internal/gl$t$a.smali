.class public final Lcom/tapjoy/internal/gl$t$a;
.super Lcom/tapjoy/internal/do$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field private d:J

.field private e:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4422
    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    .line 4528
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$t$a;->c:Ljava/lang/Object;

    .line 4424
    return-void
.end method

.method static synthetic e()Lcom/tapjoy/internal/gl$t$a;
    .locals 1

    .prologue
    .line 9429
    new-instance v0, Lcom/tapjoy/internal/gl$t$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$t$a;-><init>()V

    .line 4415
    return-object v0
.end method

.method private f()Lcom/tapjoy/internal/gl$t$a;
    .locals 2

    .prologue
    .line 5429
    new-instance v0, Lcom/tapjoy/internal/gl$t$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$t$a;-><init>()V

    .line 4444
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$t$a;->g()Lcom/tapjoy/internal/gl$t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$t$a;->a(Lcom/tapjoy/internal/gl$t;)Lcom/tapjoy/internal/gl$t$a;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/tapjoy/internal/gl$t;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4460
    new-instance v2, Lcom/tapjoy/internal/gl$t;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gl$t;-><init>(Lcom/tapjoy/internal/do$a;B)V

    .line 4461
    iget v3, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    .line 4463
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 4466
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$t$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$t;->a(Lcom/tapjoy/internal/gl$t;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4467
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 4468
    or-int/lit8 v0, v0, 0x2

    .line 4470
    :cond_0
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$t$a;->d:J

    invoke-static {v2, v4, v5}, Lcom/tapjoy/internal/gl$t;->a(Lcom/tapjoy/internal/gl$t;J)J

    .line 4471
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 4472
    or-int/lit8 v0, v0, 0x4

    .line 4474
    :cond_1
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$t$a;->e:J

    invoke-static {v2, v4, v5}, Lcom/tapjoy/internal/gl$t;->b(Lcom/tapjoy/internal/gl$t;J)J

    .line 4475
    invoke-static {v2, v0}, Lcom/tapjoy/internal/gl$t;->a(Lcom/tapjoy/internal/gl$t;I)I

    .line 4476
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    .prologue
    .line 4415
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$t$a;->f()Lcom/tapjoy/internal/gl$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/tapjoy/internal/gl$t$a;
    .locals 1

    .prologue
    .line 4621
    iget v0, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    .line 4622
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$t$a;->d:J

    .line 4624
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$t;)Lcom/tapjoy/internal/gl$t$a;
    .locals 2

    .prologue
    .line 4480
    invoke-static {}, Lcom/tapjoy/internal/gl$t;->d()Lcom/tapjoy/internal/gl$t;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4494
    :goto_0
    return-object p0

    .line 4481
    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$t;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4482
    iget v0, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    .line 4483
    invoke-static {p1}, Lcom/tapjoy/internal/gl$t;->b(Lcom/tapjoy/internal/gl$t;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$t$a;->c:Ljava/lang/Object;

    .line 4486
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$t;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7211
    iget-wide v0, p1, Lcom/tapjoy/internal/gl$t;->c:J

    .line 4487
    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$t$a;->a(J)Lcom/tapjoy/internal/gl$t$a;

    .line 4489
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$t;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7226
    iget-wide v0, p1, Lcom/tapjoy/internal/gl$t;->d:J

    .line 4490
    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$t$a;->b(J)Lcom/tapjoy/internal/gl$t$a;

    .line 8123
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 4492
    invoke-static {p1}, Lcom/tapjoy/internal/gl$t;->c(Lcom/tapjoy/internal/gl$t;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    .line 8127
    iput-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    .prologue
    .line 4415
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$t$a;->f()Lcom/tapjoy/internal/gl$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Lcom/tapjoy/internal/gl$t$a;
    .locals 1

    .prologue
    .line 4653
    iget v0, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    .line 4654
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$t$a;->e:J

    .line 4656
    return-object p0
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4498
    .line 8533
    iget v2, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1

    move v2, v1

    .line 4498
    :goto_0
    if-nez v2, :cond_2

    .line 4506
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 8533
    goto :goto_0

    .line 8609
    :cond_2
    iget v2, p0, Lcom/tapjoy/internal/gl$t$a;->b:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    move v2, v1

    .line 4502
    :goto_2
    if-eqz v2, :cond_0

    move v0, v1

    .line 4506
    goto :goto_1

    :cond_3
    move v2, v0

    .line 8609
    goto :goto_2
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4415
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$t$a;->f()Lcom/tapjoy/internal/gl$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gl$t;
    .locals 2

    .prologue
    .line 4452
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$t$a;->g()Lcom/tapjoy/internal/gl$t;

    move-result-object v0

    .line 4453
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$t;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6316
    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    .line 4454
    throw v0

    .line 4456
    :cond_0
    return-object v0
.end method

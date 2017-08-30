.class public final Lcom/tapjoy/internal/gl$a$a;
.super Lcom/tapjoy/internal/do$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field private g:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3552
    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    .line 3674
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$a$a;->c:Ljava/lang/Object;

    .line 3782
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$a$a;->d:Ljava/lang/Object;

    .line 3858
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$a$a;->e:Ljava/lang/Object;

    .line 3934
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$a$a;->f:Ljava/lang/Object;

    .line 3554
    return-void
.end method

.method static synthetic g()Lcom/tapjoy/internal/gl$a$a;
    .locals 1

    .prologue
    .line 6559
    new-instance v0, Lcom/tapjoy/internal/gl$a$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$a$a;-><init>()V

    .line 3545
    return-object v0
.end method

.method private h()Lcom/tapjoy/internal/gl$a$a;
    .locals 2

    .prologue
    .line 4559
    new-instance v0, Lcom/tapjoy/internal/gl$a$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$a$a;-><init>()V

    .line 3578
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a$a;->d()Lcom/tapjoy/internal/gl$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$a$a;->a(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    .prologue
    .line 3545
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$a$a;->h()Lcom/tapjoy/internal/gl$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/tapjoy/internal/gl$a$a;
    .locals 1

    .prologue
    .line 3767
    iget v0, p0, Lcom/tapjoy/internal/gl$a$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$a$a;->b:I

    .line 3768
    iput p1, p0, Lcom/tapjoy/internal/gl$a$a;->g:I

    .line 3770
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a$a;
    .locals 2

    .prologue
    .line 3622
    invoke-static {}, Lcom/tapjoy/internal/gl$a;->d()Lcom/tapjoy/internal/gl$a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3648
    :goto_0
    return-object p0

    .line 3623
    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3624
    iget v0, p0, Lcom/tapjoy/internal/gl$a$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$a$a;->b:I

    .line 3625
    invoke-static {p1}, Lcom/tapjoy/internal/gl$a;->b(Lcom/tapjoy/internal/gl$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$a$a;->c:Ljava/lang/Object;

    .line 3628
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$a;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5206
    iget v0, p1, Lcom/tapjoy/internal/gl$a;->c:I

    .line 3629
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$a$a;->a(I)Lcom/tapjoy/internal/gl$a$a;

    .line 3631
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$a;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3632
    iget v0, p0, Lcom/tapjoy/internal/gl$a$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$a$a;->b:I

    .line 3633
    invoke-static {p1}, Lcom/tapjoy/internal/gl$a;->c(Lcom/tapjoy/internal/gl$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$a$a;->d:Ljava/lang/Object;

    .line 3636
    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$a;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3637
    iget v0, p0, Lcom/tapjoy/internal/gl$a$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tapjoy/internal/gl$a$a;->b:I

    .line 3638
    invoke-static {p1}, Lcom/tapjoy/internal/gl$a;->d(Lcom/tapjoy/internal/gl$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$a$a;->e:Ljava/lang/Object;

    .line 3641
    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$a;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3642
    iget v0, p0, Lcom/tapjoy/internal/gl$a$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tapjoy/internal/gl$a$a;->b:I

    .line 3643
    invoke-static {p1}, Lcom/tapjoy/internal/gl$a;->e(Lcom/tapjoy/internal/gl$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$a$a;->f:Ljava/lang/Object;

    .line 6123
    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 3646
    invoke-static {p1}, Lcom/tapjoy/internal/gl$a;->f(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    .line 6127
    iput-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$a$a;
    .locals 1

    .prologue
    .line 3827
    if-nez p1, :cond_0

    .line 3828
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3830
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$a$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$a$a;->b:I

    .line 3831
    iput-object p1, p0, Lcom/tapjoy/internal/gl$a$a;->d:Ljava/lang/Object;

    .line 3833
    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    .prologue
    .line 3545
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$a$a;->h()Lcom/tapjoy/internal/gl$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 3652
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3545
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$a$a;->h()Lcom/tapjoy/internal/gl$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gl$a;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3594
    new-instance v2, Lcom/tapjoy/internal/gl$a;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gl$a;-><init>(Lcom/tapjoy/internal/do$a;B)V

    .line 3595
    iget v3, p0, Lcom/tapjoy/internal/gl$a$a;->b:I

    .line 3597
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    .line 3600
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$a$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$a;->a(Lcom/tapjoy/internal/gl$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3601
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 3602
    or-int/lit8 v0, v0, 0x2

    .line 3604
    :cond_0
    iget v1, p0, Lcom/tapjoy/internal/gl$a$a;->g:I

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$a;->a(Lcom/tapjoy/internal/gl$a;I)I

    .line 3605
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 3606
    or-int/lit8 v0, v0, 0x4

    .line 3608
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/gl$a$a;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$a;->b(Lcom/tapjoy/internal/gl$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3609
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 3610
    or-int/lit8 v0, v0, 0x8

    .line 3612
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/gl$a$a;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$a;->c(Lcom/tapjoy/internal/gl$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3613
    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    .line 3614
    or-int/lit8 v0, v0, 0x10

    .line 3616
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gl$a$a;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$a;->d(Lcom/tapjoy/internal/gl$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3617
    invoke-static {v2, v0}, Lcom/tapjoy/internal/gl$a;->b(Lcom/tapjoy/internal/gl$a;I)I

    .line 3618
    return-object v2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 3787
    iget v0, p0, Lcom/tapjoy/internal/gl$a$a;->b:I

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

.method public final f()Lcom/tapjoy/internal/gl$a$a;
    .locals 1

    .prologue
    .line 3839
    iget v0, p0, Lcom/tapjoy/internal/gl$a$a;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/tapjoy/internal/gl$a$a;->b:I

    .line 3840
    invoke-static {}, Lcom/tapjoy/internal/gl$a;->d()Lcom/tapjoy/internal/gl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$a$a;->d:Ljava/lang/Object;

    .line 3842
    return-object p0
.end method

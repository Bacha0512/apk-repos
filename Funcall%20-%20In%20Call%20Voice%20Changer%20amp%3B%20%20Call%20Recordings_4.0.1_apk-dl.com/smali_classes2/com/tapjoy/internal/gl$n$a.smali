.class public final Lcom/tapjoy/internal/gl$n$a;
.super Lcom/tapjoy/internal/do$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:I

.field public c:Lcom/tapjoy/internal/gl$l;

.field public d:Lcom/tapjoy/internal/gl$a;

.field public e:Lcom/tapjoy/internal/gl$z;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9607
    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    .line 9709
    invoke-static {}, Lcom/tapjoy/internal/gl$l;->d()Lcom/tapjoy/internal/gl$l;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n$a;->c:Lcom/tapjoy/internal/gl$l;

    .line 9769
    invoke-static {}, Lcom/tapjoy/internal/gl$a;->d()Lcom/tapjoy/internal/gl$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n$a;->d:Lcom/tapjoy/internal/gl$a;

    .line 9829
    invoke-static {}, Lcom/tapjoy/internal/gl$z;->d()Lcom/tapjoy/internal/gl$z;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$n$a;->e:Lcom/tapjoy/internal/gl$z;

    .line 9609
    return-void
.end method

.method static synthetic e()Lcom/tapjoy/internal/gl$n$a;
    .locals 1

    .prologue
    .line 15614
    new-instance v0, Lcom/tapjoy/internal/gl$n$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$n$a;-><init>()V

    .line 9600
    return-object v0
.end method

.method private f()Lcom/tapjoy/internal/gl$n$a;
    .locals 5

    .prologue
    .line 10614
    new-instance v0, Lcom/tapjoy/internal/gl$n$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$n$a;-><init>()V

    .line 9629
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$n$a;->d()Lcom/tapjoy/internal/gl$n;

    move-result-object v1

    .line 10665
    invoke-static {}, Lcom/tapjoy/internal/gl$n;->d()Lcom/tapjoy/internal/gl$n;

    move-result-object v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    .line 10666
    :cond_0
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$n;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11385
    iget-object v2, v1, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 11748
    iget v3, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    iget-object v3, v0, Lcom/tapjoy/internal/gl$n$a;->c:Lcom/tapjoy/internal/gl$l;

    invoke-static {}, Lcom/tapjoy/internal/gl$l;->d()Lcom/tapjoy/internal/gl$l;

    move-result-object v4

    if-eq v3, v4, :cond_4

    .line 11750
    iget-object v3, v0, Lcom/tapjoy/internal/gl$n$a;->c:Lcom/tapjoy/internal/gl$l;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$l;->a(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$l$a;->a(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$l$a;->d()Lcom/tapjoy/internal/gl$l;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$n$a;->c:Lcom/tapjoy/internal/gl$l;

    .line 11756
    :goto_1
    iget v2, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    .line 10669
    :cond_1
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$n;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12400
    iget-object v2, v1, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    .line 12808
    iget v3, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    iget-object v3, v0, Lcom/tapjoy/internal/gl$n$a;->d:Lcom/tapjoy/internal/gl$a;

    invoke-static {}, Lcom/tapjoy/internal/gl$a;->d()Lcom/tapjoy/internal/gl$a;

    move-result-object v4

    if-eq v3, v4, :cond_5

    .line 12810
    iget-object v3, v0, Lcom/tapjoy/internal/gl$n$a;->d:Lcom/tapjoy/internal/gl$a;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$a;->a(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$a$a;->a(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$a$a;->d()Lcom/tapjoy/internal/gl$a;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$n$a;->d:Lcom/tapjoy/internal/gl$a;

    .line 12816
    :goto_2
    iget v2, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    .line 10672
    :cond_2
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$n;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13415
    iget-object v2, v1, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 13868
    iget v3, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    iget-object v3, v0, Lcom/tapjoy/internal/gl$n$a;->e:Lcom/tapjoy/internal/gl$z;

    invoke-static {}, Lcom/tapjoy/internal/gl$z;->d()Lcom/tapjoy/internal/gl$z;

    move-result-object v4

    if-eq v3, v4, :cond_6

    .line 13870
    iget-object v3, v0, Lcom/tapjoy/internal/gl$n$a;->e:Lcom/tapjoy/internal/gl$z;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$z;->a(Lcom/tapjoy/internal/gl$z;)Lcom/tapjoy/internal/gl$z$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$z$a;->a(Lcom/tapjoy/internal/gl$z;)Lcom/tapjoy/internal/gl$z$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$z$a;->d()Lcom/tapjoy/internal/gl$z;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$n$a;->e:Lcom/tapjoy/internal/gl$z;

    .line 13876
    :goto_3
    iget v2, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/tapjoy/internal/gl$n$a;->b:I

    .line 14123
    :cond_3
    iget-object v2, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 10675
    invoke-static {v1}, Lcom/tapjoy/internal/gl$n;->a(Lcom/tapjoy/internal/gl$n;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    .line 14127
    iput-object v1, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto/16 :goto_0

    .line 11753
    :cond_4
    iput-object v2, v0, Lcom/tapjoy/internal/gl$n$a;->c:Lcom/tapjoy/internal/gl$l;

    goto :goto_1

    .line 12813
    :cond_5
    iput-object v2, v0, Lcom/tapjoy/internal/gl$n$a;->d:Lcom/tapjoy/internal/gl$a;

    goto :goto_2

    .line 13873
    :cond_6
    iput-object v2, v0, Lcom/tapjoy/internal/gl$n$a;->e:Lcom/tapjoy/internal/gl$z;

    goto :goto_3
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    .prologue
    .line 9600
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$n$a;->f()Lcom/tapjoy/internal/gl$n$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    .prologue
    .line 9600
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$n$a;->f()Lcom/tapjoy/internal/gl$n$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 9681
    .line 14834
    iget v2, p0, Lcom/tapjoy/internal/gl$n$a;->b:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    move v2, v1

    .line 9681
    :goto_0
    if-eqz v2, :cond_1

    .line 14840
    iget-object v2, p0, Lcom/tapjoy/internal/gl$n$a;->e:Lcom/tapjoy/internal/gl$z;

    .line 9682
    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$z;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9687
    :goto_1
    return v0

    :cond_0
    move v2, v0

    .line 14834
    goto :goto_0

    :cond_1
    move v0, v1

    .line 9687
    goto :goto_1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9600
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$n$a;->f()Lcom/tapjoy/internal/gl$n$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gl$n;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9645
    new-instance v2, Lcom/tapjoy/internal/gl$n;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gl$n;-><init>(Lcom/tapjoy/internal/do$a;B)V

    .line 9646
    iget v3, p0, Lcom/tapjoy/internal/gl$n$a;->b:I

    .line 9648
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 9651
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$n$a;->c:Lcom/tapjoy/internal/gl$l;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$n;->a(Lcom/tapjoy/internal/gl$n;Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l;

    .line 9652
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 9653
    or-int/lit8 v0, v0, 0x2

    .line 9655
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$n$a;->d:Lcom/tapjoy/internal/gl$a;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$n;->a(Lcom/tapjoy/internal/gl$n;Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a;

    .line 9656
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 9657
    or-int/lit8 v0, v0, 0x4

    .line 9659
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/gl$n$a;->e:Lcom/tapjoy/internal/gl$z;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$n;->a(Lcom/tapjoy/internal/gl$n;Lcom/tapjoy/internal/gl$z;)Lcom/tapjoy/internal/gl$z;

    .line 9660
    invoke-static {v2, v0}, Lcom/tapjoy/internal/gl$n;->a(Lcom/tapjoy/internal/gl$n;I)I

    .line 9661
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

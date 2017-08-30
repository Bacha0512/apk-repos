.class public final Lcom/tapjoy/internal/gl$l$a;
.super Lcom/tapjoy/internal/do$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$l;
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

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Object;

.field private s:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1549
    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    .line 1799
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->c:Ljava/lang/Object;

    .line 1875
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->d:Ljava/lang/Object;

    .line 1951
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->e:Ljava/lang/Object;

    .line 2027
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->f:Ljava/lang/Object;

    .line 2103
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->g:Ljava/lang/Object;

    .line 2179
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->h:Ljava/lang/Object;

    .line 2351
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->q:Ljava/lang/Object;

    .line 2427
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->r:Ljava/lang/Object;

    .line 2503
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->i:Ljava/lang/Object;

    .line 2579
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->j:Ljava/lang/Object;

    .line 2655
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->s:Ljava/lang/Object;

    .line 2731
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->k:Ljava/lang/Object;

    .line 2807
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->l:Ljava/lang/Object;

    .line 2883
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->m:Ljava/lang/Object;

    .line 1551
    return-void
.end method

.method static synthetic e()Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 4556
    new-instance v0, Lcom/tapjoy/internal/gl$l$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$l$a;-><init>()V

    .line 1542
    return-object v0
.end method

.method private f()Lcom/tapjoy/internal/gl$l$a;
    .locals 2

    .prologue
    .line 3556
    new-instance v0, Lcom/tapjoy/internal/gl$l$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$l$a;-><init>()V

    .line 1599
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l$a;->d()Lcom/tapjoy/internal/gl$l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$l$a;->a(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    .prologue
    .line 1542
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$l$a;->f()Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2272
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2273
    iput p1, p0, Lcom/tapjoy/internal/gl$l$a;->n:I

    .line 2275
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l$a;
    .locals 2

    .prologue
    .line 1691
    invoke-static {}, Lcom/tapjoy/internal/gl$l;->d()Lcom/tapjoy/internal/gl$l;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1773
    :goto_0
    return-object p0

    .line 1692
    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1693
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1694
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->b(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->c:Ljava/lang/Object;

    .line 1697
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1698
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1699
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->c(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->d:Ljava/lang/Object;

    .line 1702
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1703
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1704
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->d(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->e:Ljava/lang/Object;

    .line 1707
    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1708
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1709
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->e(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->f:Ljava/lang/Object;

    .line 1712
    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1713
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1714
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->f(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->g:Ljava/lang/Object;

    .line 1717
    :cond_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1718
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1719
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->g(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->h:Ljava/lang/Object;

    .line 1722
    :cond_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3759
    iget v0, p1, Lcom/tapjoy/internal/gl$l;->c:I

    .line 1723
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$l$a;->a(I)Lcom/tapjoy/internal/gl$l$a;

    .line 1725
    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3774
    iget v0, p1, Lcom/tapjoy/internal/gl$l;->d:I

    .line 1726
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$l$a;->b(I)Lcom/tapjoy/internal/gl$l$a;

    .line 1728
    :cond_8
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3789
    iget v0, p1, Lcom/tapjoy/internal/gl$l;->e:I

    .line 1729
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$l$a;->c(I)Lcom/tapjoy/internal/gl$l$a;

    .line 1731
    :cond_9
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->t()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1732
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1733
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->h(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->q:Ljava/lang/Object;

    .line 1736
    :cond_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->v()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1737
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1738
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->i(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->r:Ljava/lang/Object;

    .line 1741
    :cond_b
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->x()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1742
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1743
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->j(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->i:Ljava/lang/Object;

    .line 1746
    :cond_c
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->z()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1747
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1748
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->k(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->j:Ljava/lang/Object;

    .line 1751
    :cond_d
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->B()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1752
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1753
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->l(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->s:Ljava/lang/Object;

    .line 1756
    :cond_e
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->D()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1757
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1758
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->m(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->k:Ljava/lang/Object;

    .line 1761
    :cond_f
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->F()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1762
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1763
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->n(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->l:Ljava/lang/Object;

    .line 1766
    :cond_10
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$l;->H()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1767
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1768
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->o(Lcom/tapjoy/internal/gl$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$l$a;->m:Ljava/lang/Object;

    .line 4123
    :cond_11
    iget-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 1771
    invoke-static {p1}, Lcom/tapjoy/internal/gl$l;->p(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    .line 4127
    iput-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2396
    if-nez p1, :cond_0

    .line 2397
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2399
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2400
    iput-object p1, p0, Lcom/tapjoy/internal/gl$l$a;->q:Ljava/lang/Object;

    .line 2402
    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    .prologue
    .line 1542
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$l$a;->f()Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2304
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2305
    iput p1, p0, Lcom/tapjoy/internal/gl$l$a;->o:I

    .line 2307
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2472
    if-nez p1, :cond_0

    .line 2473
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2475
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2476
    iput-object p1, p0, Lcom/tapjoy/internal/gl$l$a;->r:Ljava/lang/Object;

    .line 2478
    return-object p0
.end method

.method public final c(I)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2336
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2337
    iput p1, p0, Lcom/tapjoy/internal/gl$l$a;->p:I

    .line 2339
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$l$a;
    .locals 1

    .prologue
    .line 2700
    if-nez p1, :cond_0

    .line 2701
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2703
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 2704
    iput-object p1, p0, Lcom/tapjoy/internal/gl$l$a;->s:Ljava/lang/Object;

    .line 2706
    return-object p0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 1777
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1542
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$l$a;->f()Lcom/tapjoy/internal/gl$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gl$l;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v6, 0x10000

    const v5, 0x8000

    .line 1615
    new-instance v2, Lcom/tapjoy/internal/gl$l;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gl$l;-><init>(Lcom/tapjoy/internal/do$a;B)V

    .line 1616
    iget v3, p0, Lcom/tapjoy/internal/gl$l$a;->b:I

    .line 1618
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_10

    .line 1621
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->a(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 1623
    or-int/lit8 v0, v0, 0x2

    .line 1625
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->b(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 1627
    or-int/lit8 v0, v0, 0x4

    .line 1629
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->c(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 1631
    or-int/lit8 v0, v0, 0x8

    .line 1633
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->d(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 1635
    or-int/lit8 v0, v0, 0x10

    .line 1637
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->e(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 1639
    or-int/lit8 v0, v0, 0x20

    .line 1641
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->f(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 1643
    or-int/lit8 v0, v0, 0x40

    .line 1645
    :cond_5
    iget v1, p0, Lcom/tapjoy/internal/gl$l$a;->n:I

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->a(Lcom/tapjoy/internal/gl$l;I)I

    .line 1646
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 1647
    or-int/lit16 v0, v0, 0x80

    .line 1649
    :cond_6
    iget v1, p0, Lcom/tapjoy/internal/gl$l$a;->o:I

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->b(Lcom/tapjoy/internal/gl$l;I)I

    .line 1650
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    .line 1651
    or-int/lit16 v0, v0, 0x100

    .line 1653
    :cond_7
    iget v1, p0, Lcom/tapjoy/internal/gl$l$a;->p:I

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->c(Lcom/tapjoy/internal/gl$l;I)I

    .line 1654
    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    .line 1655
    or-int/lit16 v0, v0, 0x200

    .line 1657
    :cond_8
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->q:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->g(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    .line 1659
    or-int/lit16 v0, v0, 0x400

    .line 1661
    :cond_9
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->r:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->h(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    .line 1663
    or-int/lit16 v0, v0, 0x800

    .line 1665
    :cond_a
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->i:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->i(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    .line 1667
    or-int/lit16 v0, v0, 0x1000

    .line 1669
    :cond_b
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->j:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->j(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    and-int/lit16 v1, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v1, v4, :cond_c

    .line 1671
    or-int/lit16 v0, v0, 0x2000

    .line 1673
    :cond_c
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->s:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->k(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    and-int/lit16 v1, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v1, v4, :cond_d

    .line 1675
    or-int/lit16 v0, v0, 0x4000

    .line 1677
    :cond_d
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->k:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->l(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    and-int v1, v3, v5

    if-ne v1, v5, :cond_e

    .line 1679
    or-int/2addr v0, v5

    .line 1681
    :cond_e
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->l:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->m(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    and-int v1, v3, v6

    if-ne v1, v6, :cond_f

    .line 1683
    or-int/2addr v0, v6

    .line 1685
    :cond_f
    iget-object v1, p0, Lcom/tapjoy/internal/gl$l$a;->m:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$l;->n(Lcom/tapjoy/internal/gl$l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    invoke-static {v2, v0}, Lcom/tapjoy/internal/gl$l;->d(Lcom/tapjoy/internal/gl$l;I)I

    .line 1687
    return-object v2

    :cond_10
    move v0, v1

    goto/16 :goto_0
.end method

.class public final Lcom/tapjoy/internal/gd$r$a;
.super Lcom/tapjoy/internal/do$a;

# interfaces
.implements Lcom/tapjoy/internal/gd$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd$r;
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

.field private h:I

.field private i:D

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;

.field private n:I

.field private o:J

.field private p:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->c:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gd$r$a;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->d:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->j:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->k:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->l:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->m:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->e:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->p:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->f:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->g:Ljava/lang/Object;

    return-void
.end method

.method static synthetic e()Lcom/tapjoy/internal/gd$r$a;
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gd$r$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$r$a;-><init>()V

    return-object v0
.end method

.method private f()Lcom/tapjoy/internal/gd$r$a;
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/gd$r$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$r$a;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r$a;->d()Lcom/tapjoy/internal/gd$r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gd$r$a;->a(Lcom/tapjoy/internal/gd$r;)Lcom/tapjoy/internal/gd$r$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r$a;->f()Lcom/tapjoy/internal/gd$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(D)Lcom/tapjoy/internal/gd$r$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$r$a;->i:D

    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gd$r;)Lcom/tapjoy/internal/gd$r$a;
    .locals 3

    invoke-static {}, Lcom/tapjoy/internal/gd$r;->d()Lcom/tapjoy/internal/gd$r;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$r;->b(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->c:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/tapjoy/internal/gd$r;->c:I

    iget v1, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    iput v0, p0, Lcom/tapjoy/internal/gd$r$a;->h:I

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lcom/tapjoy/internal/gd$r;->d:D

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gd$r$a;->a(D)Lcom/tapjoy/internal/gd$r$a;

    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$r;->c(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->d:Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$r;->d(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->j:Ljava/lang/Object;

    :cond_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$r;->e(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->k:Ljava/lang/Object;

    :cond_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$r;->f(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->l:Ljava/lang/Object;

    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$r;->g(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->m:Ljava/lang/Object;

    :cond_8
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lcom/tapjoy/internal/gd$r;->e:I

    iget v1, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    iput v0, p0, Lcom/tapjoy/internal/gd$r$a;->n:I

    :cond_9
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->t()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-wide v0, p1, Lcom/tapjoy/internal/gd$r;->f:J

    iget v2, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    iput-wide v0, p0, Lcom/tapjoy/internal/gd$r$a;->o:J

    :cond_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->u()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$r;->h(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->e:Ljava/lang/Object;

    :cond_b
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->w()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$r;->i(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->p:Ljava/lang/Object;

    :cond_c
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->y()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$r;->j(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->f:Ljava/lang/Object;

    :cond_d
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->A()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$r;->k(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r$a;->g:Ljava/lang/Object;

    :cond_e
    iget-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    invoke-static {p1}, Lcom/tapjoy/internal/gd$r;->l(Lcom/tapjoy/internal/gd$r;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto/16 :goto_0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r$a;->f()Lcom/tapjoy/internal/gd$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r$a;->f()Lcom/tapjoy/internal/gd$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gd$r;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/tapjoy/internal/gd$r;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gd$r;-><init>(Lcom/tapjoy/internal/do$a;B)V

    iget v3, p0, Lcom/tapjoy/internal/gd$r$a;->b:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_d

    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gd$r$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$r;->a(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/tapjoy/internal/gd$r$a;->h:I

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$r;->a(Lcom/tapjoy/internal/gd$r;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcom/tapjoy/internal/gd$r$a;->i:D

    invoke-static {v2, v4, v5}, Lcom/tapjoy/internal/gd$r;->a(Lcom/tapjoy/internal/gd$r;D)D

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/gd$r$a;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$r;->b(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gd$r$a;->j:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$r;->c(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/gd$r$a;->k:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$r;->d(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lcom/tapjoy/internal/gd$r$a;->l:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$r;->e(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget-object v1, p0, Lcom/tapjoy/internal/gd$r$a;->m:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$r;->f(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget v1, p0, Lcom/tapjoy/internal/gd$r$a;->n:I

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$r;->b(Lcom/tapjoy/internal/gd$r;I)I

    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    iget-wide v4, p0, Lcom/tapjoy/internal/gd$r$a;->o:J

    invoke-static {v2, v4, v5}, Lcom/tapjoy/internal/gd$r;->a(Lcom/tapjoy/internal/gd$r;J)J

    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    or-int/lit16 v0, v0, 0x400

    :cond_9
    iget-object v1, p0, Lcom/tapjoy/internal/gd$r$a;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$r;->g(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    or-int/lit16 v0, v0, 0x800

    :cond_a
    iget-object v1, p0, Lcom/tapjoy/internal/gd$r$a;->p:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$r;->h(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    or-int/lit16 v0, v0, 0x1000

    :cond_b
    iget-object v1, p0, Lcom/tapjoy/internal/gd$r$a;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$r;->i(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_c

    or-int/lit16 v0, v0, 0x2000

    :cond_c
    iget-object v1, p0, Lcom/tapjoy/internal/gd$r$a;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$r;->j(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/tapjoy/internal/gd$r;->c(Lcom/tapjoy/internal/gd$r;I)I

    return-object v2

    :cond_d
    move v0, v1

    goto/16 :goto_0
.end method

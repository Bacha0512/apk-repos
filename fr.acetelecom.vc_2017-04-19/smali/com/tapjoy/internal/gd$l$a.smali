.class public final Lcom/tapjoy/internal/gd$l$a;
.super Lcom/tapjoy/internal/do$a;

# interfaces
.implements Lcom/tapjoy/internal/gd$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd$l;
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

    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->c:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->d:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->e:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->f:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->g:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->h:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->q:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->r:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->i:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->j:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->s:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->k:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->l:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->m:Ljava/lang/Object;

    return-void
.end method

.method static synthetic e()Lcom/tapjoy/internal/gd$l$a;
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gd$l$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$l$a;-><init>()V

    return-object v0
.end method

.method private f()Lcom/tapjoy/internal/gd$l$a;
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/gd$l$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$l$a;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l$a;->d()Lcom/tapjoy/internal/gd$l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gd$l$a;->a(Lcom/tapjoy/internal/gd$l;)Lcom/tapjoy/internal/gd$l$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$l$a;->f()Lcom/tapjoy/internal/gd$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/tapjoy/internal/gd$l$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    iput p1, p0, Lcom/tapjoy/internal/gd$l$a;->n:I

    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gd$l;)Lcom/tapjoy/internal/gd$l$a;
    .locals 2

    invoke-static {}, Lcom/tapjoy/internal/gd$l;->d()Lcom/tapjoy/internal/gd$l;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$l;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$l;->b(Lcom/tapjoy/internal/gd$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->c:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$l;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$l;->c(Lcom/tapjoy/internal/gd$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->d:Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$l;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$l;->d(Lcom/tapjoy/internal/gd$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->e:Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$l;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$l;->e(Lcom/tapjoy/internal/gd$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->f:Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$l;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$l;->f(Lcom/tapjoy/internal/gd$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->g:Ljava/lang/Object;

    :cond_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$l;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$l;->g(Lcom/tapjoy/internal/gd$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->h:Ljava/lang/Object;

    :cond_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$l;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p1, Lcom/tapjoy/internal/gd$l;->c:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gd$l$a;->a(I)Lcom/tapjoy/internal/gd$l$a;

    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$l;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p1, Lcom/tapjoy/internal/gd$l;->d:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gd$l$a;->b(I)Lcom/tapjoy/internal/gd$l$a;

    :cond_8
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$l;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lcom/tapjoy/internal/gd$l;->e:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gd$l$a;->c(I)Lcom/tapjoy/internal/gd$l$a;

    :cond_9
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$l;->t()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$l;->h(Lcom/tapjoy/internal/gd$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->q:Ljava/lang/Object;

    :cond_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$l;->v()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$l;->i(Lcom/tapjoy/internal/gd$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->r:Ljava/lang/Object;

    :cond_b
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$l;->x()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$l;->j(Lcom/tapjoy/internal/gd$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->i:Ljava/lang/Object;

    :cond_c
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$l;->z()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$l;->k(Lcom/tapjoy/internal/gd$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->j:Ljava/lang/Object;

    :cond_d
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$l;->B()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$l;->l(Lcom/tapjoy/internal/gd$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->s:Ljava/lang/Object;

    :cond_e
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$l;->D()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$l;->m(Lcom/tapjoy/internal/gd$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->k:Ljava/lang/Object;

    :cond_f
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$l;->F()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$l;->n(Lcom/tapjoy/internal/gd$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->l:Ljava/lang/Object;

    :cond_10
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$l;->H()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$l;->o(Lcom/tapjoy/internal/gd$l;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$l$a;->m:Ljava/lang/Object;

    :cond_11
    iget-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    invoke-static {p1}, Lcom/tapjoy/internal/gd$l;->p(Lcom/tapjoy/internal/gd$l;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gd$l$a;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$l$a;->q:Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$l$a;->f()Lcom/tapjoy/internal/gd$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/tapjoy/internal/gd$l$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    iput p1, p0, Lcom/tapjoy/internal/gd$l$a;->o:I

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/gd$l$a;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$l$a;->r:Ljava/lang/Object;

    return-object p0
.end method

.method public final c(I)Lcom/tapjoy/internal/gd$l$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    iput p1, p0, Lcom/tapjoy/internal/gd$l$a;->p:I

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/tapjoy/internal/gd$l$a;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$l$a;->s:Ljava/lang/Object;

    return-object p0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$l$a;->f()Lcom/tapjoy/internal/gd$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gd$l;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v6, 0x10000

    const v5, 0x8000

    new-instance v2, Lcom/tapjoy/internal/gd$l;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gd$l;-><init>(Lcom/tapjoy/internal/do$a;B)V

    iget v3, p0, Lcom/tapjoy/internal/gd$l$a;->b:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_10

    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gd$l$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$l;->a(Lcom/tapjoy/internal/gd$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gd$l$a;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$l;->b(Lcom/tapjoy/internal/gd$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/gd$l$a;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$l;->c(Lcom/tapjoy/internal/gd$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/gd$l$a;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$l;->d(Lcom/tapjoy/internal/gd$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gd$l$a;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$l;->e(Lcom/tapjoy/internal/gd$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/gd$l$a;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$l;->f(Lcom/tapjoy/internal/gd$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget v1, p0, Lcom/tapjoy/internal/gd$l$a;->n:I

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$l;->a(Lcom/tapjoy/internal/gd$l;I)I

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget v1, p0, Lcom/tapjoy/internal/gd$l$a;->o:I

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$l;->b(Lcom/tapjoy/internal/gd$l;I)I

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget v1, p0, Lcom/tapjoy/internal/gd$l$a;->p:I

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$l;->c(Lcom/tapjoy/internal/gd$l;I)I

    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    iget-object v1, p0, Lcom/tapjoy/internal/gd$l$a;->q:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$l;->g(Lcom/tapjoy/internal/gd$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    or-int/lit16 v0, v0, 0x400

    :cond_9
    iget-object v1, p0, Lcom/tapjoy/internal/gd$l$a;->r:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$l;->h(Lcom/tapjoy/internal/gd$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    or-int/lit16 v0, v0, 0x800

    :cond_a
    iget-object v1, p0, Lcom/tapjoy/internal/gd$l$a;->i:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$l;->i(Lcom/tapjoy/internal/gd$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    or-int/lit16 v0, v0, 0x1000

    :cond_b
    iget-object v1, p0, Lcom/tapjoy/internal/gd$l$a;->j:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$l;->j(Lcom/tapjoy/internal/gd$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v1, v4, :cond_c

    or-int/lit16 v0, v0, 0x2000

    :cond_c
    iget-object v1, p0, Lcom/tapjoy/internal/gd$l$a;->s:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$l;->k(Lcom/tapjoy/internal/gd$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v1, v4, :cond_d

    or-int/lit16 v0, v0, 0x4000

    :cond_d
    iget-object v1, p0, Lcom/tapjoy/internal/gd$l$a;->k:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$l;->l(Lcom/tapjoy/internal/gd$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int v1, v3, v5

    if-ne v1, v5, :cond_e

    or-int/2addr v0, v5

    :cond_e
    iget-object v1, p0, Lcom/tapjoy/internal/gd$l$a;->l:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$l;->m(Lcom/tapjoy/internal/gd$l;Ljava/lang/Object;)Ljava/lang/Object;

    and-int v1, v3, v6

    if-ne v1, v6, :cond_f

    or-int/2addr v0, v6

    :cond_f
    iget-object v1, p0, Lcom/tapjoy/internal/gd$l$a;->m:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$l;->n(Lcom/tapjoy/internal/gd$l;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/tapjoy/internal/gd$l;->d(Lcom/tapjoy/internal/gd$l;I)I

    return-object v2

    :cond_10
    move v0, v1

    goto/16 :goto_0
.end method

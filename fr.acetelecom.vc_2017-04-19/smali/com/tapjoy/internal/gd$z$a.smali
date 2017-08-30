.class public final Lcom/tapjoy/internal/gd$z$a;
.super Lcom/tapjoy/internal/do$a;

# interfaces
.implements Lcom/tapjoy/internal/gd$aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd$z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private A:Ljava/lang/Object;

.field private B:Z

.field public b:I

.field public c:Ljava/util/List;

.field public d:J

.field public e:D

.field public f:Ljava/lang/Object;

.field public g:I

.field public h:I

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:Lcom/tapjoy/internal/ds;

.field public o:Z

.field private p:J

.field private q:Ljava/lang/Object;

.field private r:I

.field private s:I

.field private t:I

.field private u:J

.field private v:J

.field private w:J

.field private x:Ljava/lang/Object;

.field private y:I

.field private z:D


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->q:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->x:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->A:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->f:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->i:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->j:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->k:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->l:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->m:Ljava/lang/Object;

    sget-object v0, Lcom/tapjoy/internal/dr;->a:Lcom/tapjoy/internal/ds;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->n:Lcom/tapjoy/internal/ds;

    return-void
.end method

.method private A()Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/gd$z$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$z$a;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z$a;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gd$z$a;->a(Lcom/tapjoy/internal/gd$z;)Lcom/tapjoy/internal/gd$z$a;

    move-result-object v0

    return-object v0
.end method

.method private B()V
    .locals 3

    const/high16 v2, 0x1000000

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    new-instance v0, Lcom/tapjoy/internal/dr;

    iget-object v1, p0, Lcom/tapjoy/internal/gd$z$a;->n:Lcom/tapjoy/internal/ds;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/dr;-><init>(Lcom/tapjoy/internal/ds;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->n:Lcom/tapjoy/internal/ds;

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    :cond_0
    return-void
.end method

.method static synthetic z()Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gd$z$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$z$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$z$a;->A()Lcom/tapjoy/internal/gd$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(D)Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$z$a;->z:D

    return-object p0
.end method

.method public final a(I)Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput p1, p0, Lcom/tapjoy/internal/gd$z$a;->r:I

    return-object p0
.end method

.method public final a(J)Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$z$a;->p:J

    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gd$z;)Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    invoke-static {}, Lcom/tapjoy/internal/gd$z;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/tapjoy/internal/gd$z;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gd$z$a;->a(J)Lcom/tapjoy/internal/gd$z$a;

    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$z;->b(Lcom/tapjoy/internal/gd$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->q:Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/tapjoy/internal/gd$z;->d:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gd$z$a;->a(I)Lcom/tapjoy/internal/gd$z$a;

    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p1, Lcom/tapjoy/internal/gd$z;->e:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gd$z$a;->b(I)Lcom/tapjoy/internal/gd$z$a;

    :cond_4
    invoke-static {p1}, Lcom/tapjoy/internal/gd$z;->c(Lcom/tapjoy/internal/gd$z;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {p1}, Lcom/tapjoy/internal/gd$z;->c(Lcom/tapjoy/internal/gd$z;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/tapjoy/internal/gd$z;->g:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gd$z$a;->d(I)Lcom/tapjoy/internal/gd$z$a;

    :cond_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v0, p1, Lcom/tapjoy/internal/gd$z;->h:J

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gd$z$a;->b(J)Lcom/tapjoy/internal/gd$z$a;

    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v0, p1, Lcom/tapjoy/internal/gd$z;->i:J

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gd$z$a;->c(J)Lcom/tapjoy/internal/gd$z$a;

    :cond_8
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v0, p1, Lcom/tapjoy/internal/gd$z;->j:J

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gd$z$a;->d(J)Lcom/tapjoy/internal/gd$z$a;

    :cond_9
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->o()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$z;->d(Lcom/tapjoy/internal/gd$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->x:Ljava/lang/Object;

    :cond_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->q()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p1, Lcom/tapjoy/internal/gd$z;->k:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gd$z$a;->e(I)Lcom/tapjoy/internal/gd$z$a;

    :cond_b
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->r()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-wide v0, p1, Lcom/tapjoy/internal/gd$z;->l:D

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gd$z$a;->a(D)Lcom/tapjoy/internal/gd$z$a;

    :cond_c
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->s()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p1, Lcom/tapjoy/internal/gd$z;->m:J

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gd$z$a;->e(J)Lcom/tapjoy/internal/gd$z$a;

    :cond_d
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->t()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p1, Lcom/tapjoy/internal/gd$z;->n:D

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gd$z$a;->b(D)Lcom/tapjoy/internal/gd$z$a;

    :cond_e
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->u()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$z;->e(Lcom/tapjoy/internal/gd$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->A:Ljava/lang/Object;

    :cond_f
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->w()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lcom/tapjoy/internal/gd$z;->o:Z

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gd$z$a;->a(Z)Lcom/tapjoy/internal/gd$z$a;

    :cond_10
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->x()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$z;->f(Lcom/tapjoy/internal/gd$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->f:Ljava/lang/Object;

    :cond_11
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->z()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p1, Lcom/tapjoy/internal/gd$z;->p:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gd$z$a;->f(I)Lcom/tapjoy/internal/gd$z$a;

    :cond_12
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->A()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p1, Lcom/tapjoy/internal/gd$z;->q:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gd$z$a;->g(I)Lcom/tapjoy/internal/gd$z$a;

    :cond_13
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->B()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$z;->g(Lcom/tapjoy/internal/gd$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->i:Ljava/lang/Object;

    :cond_14
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->D()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$z;->h(Lcom/tapjoy/internal/gd$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->j:Ljava/lang/Object;

    :cond_15
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->F()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$z;->i(Lcom/tapjoy/internal/gd$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->k:Ljava/lang/Object;

    :cond_16
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->H()Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$z;->j(Lcom/tapjoy/internal/gd$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->l:Ljava/lang/Object;

    :cond_17
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->J()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$z;->k(Lcom/tapjoy/internal/gd$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->m:Ljava/lang/Object;

    :cond_18
    invoke-static {p1}, Lcom/tapjoy/internal/gd$z;->l(Lcom/tapjoy/internal/gd$z;)Lcom/tapjoy/internal/ds;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/internal/ds;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->n:Lcom/tapjoy/internal/ds;

    invoke-interface {v0}, Lcom/tapjoy/internal/ds;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p1}, Lcom/tapjoy/internal/gd$z;->l(Lcom/tapjoy/internal/gd$z;)Lcom/tapjoy/internal/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->n:Lcom/tapjoy/internal/ds;

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    :cond_19
    :goto_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$z;->M()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p1, Lcom/tapjoy/internal/gd$z;->s:Z

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gd$z$a;->b(Z)Lcom/tapjoy/internal/gd$z$a;

    :cond_1a
    iget-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    invoke-static {p1}, Lcom/tapjoy/internal/gd$z;->m(Lcom/tapjoy/internal/gd$z;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z$a;->e()V

    iget-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/tapjoy/internal/gd$z;->c(Lcom/tapjoy/internal/gd$z;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_1c
    invoke-direct {p0}, Lcom/tapjoy/internal/gd$z$a;->B()V

    iget-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->n:Lcom/tapjoy/internal/ds;

    invoke-static {p1}, Lcom/tapjoy/internal/gd$z;->l(Lcom/tapjoy/internal/gd$z;)Lcom/tapjoy/internal/ds;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/ds;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$z$a;->B()V

    iget-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->n:Lcom/tapjoy/internal/ds;

    invoke-static {p1, v0}, Lcom/tapjoy/internal/dh$a;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$z$a;->q:Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Z)Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-boolean p1, p0, Lcom/tapjoy/internal/gd$z$a;->B:Z

    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$z$a;->A()Lcom/tapjoy/internal/gd$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(D)Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$z$a;->e:D

    return-object p0
.end method

.method public final b(I)Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput p1, p0, Lcom/tapjoy/internal/gd$z$a;->s:I

    return-object p0
.end method

.method public final b(J)Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$z$a;->u:J

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$z$a;->x:Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Z)Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-boolean p1, p0, Lcom/tapjoy/internal/gd$z$a;->o:Z

    return-object p0
.end method

.method public final c(I)Lcom/tapjoy/internal/gd$t;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gd$t;

    return-object v0
.end method

.method public final c(J)Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$z$a;->v:J

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$z$a;->A:Ljava/lang/Object;

    return-object p0
.end method

.method public final c()Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z$a;->f()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gd$z$a;->c(I)Lcom/tapjoy/internal/gd$t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$t;->c()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$z$a;->A()Lcom/tapjoy/internal/gd$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput p1, p0, Lcom/tapjoy/internal/gd$z$a;->t:I

    return-object p0
.end method

.method public final d(J)Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$z$a;->w:J

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$z$a;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public final d()Lcom/tapjoy/internal/gd$z;
    .locals 11

    const/high16 v10, 0x80000

    const/high16 v9, 0x40000

    const/high16 v8, 0x20000

    const/high16 v7, 0x10000

    const v6, 0x8000

    new-instance v1, Lcom/tapjoy/internal/gd$z;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/tapjoy/internal/gd$z;-><init>(Lcom/tapjoy/internal/do$a;B)V

    iget v2, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/4 v0, 0x0

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-wide v4, p0, Lcom/tapjoy/internal/gd$z$a;->p:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gd$z;->a(Lcom/tapjoy/internal/gd$z;J)J

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget-object v3, p0, Lcom/tapjoy/internal/gd$z$a;->q:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->a(Lcom/tapjoy/internal/gd$z;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    iget v3, p0, Lcom/tapjoy/internal/gd$z$a;->r:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->a(Lcom/tapjoy/internal/gd$z;I)I

    and-int/lit8 v3, v2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    iget v3, p0, Lcom/tapjoy/internal/gd$z$a;->s:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->b(Lcom/tapjoy/internal/gd$z;I)I

    iget v3, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    iget v3, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    :cond_4
    iget-object v3, p0, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->a(Lcom/tapjoy/internal/gd$z;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v3, v2, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    or-int/lit8 v0, v0, 0x10

    :cond_5
    iget v3, p0, Lcom/tapjoy/internal/gd$z$a;->t:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->c(Lcom/tapjoy/internal/gd$z;I)I

    and-int/lit8 v3, v2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    or-int/lit8 v0, v0, 0x20

    :cond_6
    iget-wide v4, p0, Lcom/tapjoy/internal/gd$z$a;->u:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gd$z;->b(Lcom/tapjoy/internal/gd$z;J)J

    and-int/lit16 v3, v2, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    or-int/lit8 v0, v0, 0x40

    :cond_7
    iget-wide v4, p0, Lcom/tapjoy/internal/gd$z$a;->v:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gd$z;->c(Lcom/tapjoy/internal/gd$z;J)J

    and-int/lit16 v3, v2, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    or-int/lit16 v0, v0, 0x80

    :cond_8
    iget-wide v4, p0, Lcom/tapjoy/internal/gd$z$a;->w:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gd$z;->d(Lcom/tapjoy/internal/gd$z;J)J

    and-int/lit16 v3, v2, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    or-int/lit16 v0, v0, 0x100

    :cond_9
    iget-object v3, p0, Lcom/tapjoy/internal/gd$z$a;->x:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->b(Lcom/tapjoy/internal/gd$z;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v2, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    or-int/lit16 v0, v0, 0x200

    :cond_a
    iget v3, p0, Lcom/tapjoy/internal/gd$z$a;->y:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->d(Lcom/tapjoy/internal/gd$z;I)I

    and-int/lit16 v3, v2, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    or-int/lit16 v0, v0, 0x400

    :cond_b
    iget-wide v4, p0, Lcom/tapjoy/internal/gd$z$a;->z:D

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gd$z;->a(Lcom/tapjoy/internal/gd$z;D)D

    and-int/lit16 v3, v2, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    or-int/lit16 v0, v0, 0x800

    :cond_c
    iget-wide v4, p0, Lcom/tapjoy/internal/gd$z$a;->d:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gd$z;->e(Lcom/tapjoy/internal/gd$z;J)J

    and-int/lit16 v3, v2, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    or-int/lit16 v0, v0, 0x1000

    :cond_d
    iget-wide v4, p0, Lcom/tapjoy/internal/gd$z$a;->e:D

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gd$z;->b(Lcom/tapjoy/internal/gd$z;D)D

    and-int/lit16 v3, v2, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    or-int/lit16 v0, v0, 0x2000

    :cond_e
    iget-object v3, p0, Lcom/tapjoy/internal/gd$z$a;->A:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->c(Lcom/tapjoy/internal/gd$z;Ljava/lang/Object;)Ljava/lang/Object;

    and-int v3, v2, v6

    if-ne v3, v6, :cond_f

    or-int/lit16 v0, v0, 0x4000

    :cond_f
    iget-boolean v3, p0, Lcom/tapjoy/internal/gd$z$a;->B:Z

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->a(Lcom/tapjoy/internal/gd$z;Z)Z

    and-int v3, v2, v7

    if-ne v3, v7, :cond_10

    or-int/2addr v0, v6

    :cond_10
    iget-object v3, p0, Lcom/tapjoy/internal/gd$z$a;->f:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->d(Lcom/tapjoy/internal/gd$z;Ljava/lang/Object;)Ljava/lang/Object;

    and-int v3, v2, v8

    if-ne v3, v8, :cond_11

    or-int/2addr v0, v7

    :cond_11
    iget v3, p0, Lcom/tapjoy/internal/gd$z$a;->g:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->e(Lcom/tapjoy/internal/gd$z;I)I

    and-int v3, v2, v9

    if-ne v3, v9, :cond_12

    or-int/2addr v0, v8

    :cond_12
    iget v3, p0, Lcom/tapjoy/internal/gd$z$a;->h:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->f(Lcom/tapjoy/internal/gd$z;I)I

    and-int v3, v2, v10

    if-ne v3, v10, :cond_13

    or-int/2addr v0, v9

    :cond_13
    iget-object v3, p0, Lcom/tapjoy/internal/gd$z$a;->i:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->e(Lcom/tapjoy/internal/gd$z;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x100000

    and-int/2addr v3, v2

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_14

    or-int/2addr v0, v10

    :cond_14
    iget-object v3, p0, Lcom/tapjoy/internal/gd$z$a;->j:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->f(Lcom/tapjoy/internal/gd$z;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x200000

    and-int/2addr v3, v2

    const/high16 v4, 0x200000

    if-ne v3, v4, :cond_15

    const/high16 v3, 0x100000

    or-int/2addr v0, v3

    :cond_15
    iget-object v3, p0, Lcom/tapjoy/internal/gd$z$a;->k:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->g(Lcom/tapjoy/internal/gd$z;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x400000

    and-int/2addr v3, v2

    const/high16 v4, 0x400000

    if-ne v3, v4, :cond_16

    const/high16 v3, 0x200000

    or-int/2addr v0, v3

    :cond_16
    iget-object v3, p0, Lcom/tapjoy/internal/gd$z$a;->l:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->h(Lcom/tapjoy/internal/gd$z;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x800000

    and-int/2addr v3, v2

    const/high16 v4, 0x800000

    if-ne v3, v4, :cond_17

    const/high16 v3, 0x400000

    or-int/2addr v0, v3

    :cond_17
    iget-object v3, p0, Lcom/tapjoy/internal/gd$z$a;->m:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->i(Lcom/tapjoy/internal/gd$z;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    const/high16 v4, 0x1000000

    if-ne v3, v4, :cond_18

    iget-object v3, p0, Lcom/tapjoy/internal/gd$z$a;->n:Lcom/tapjoy/internal/ds;

    invoke-interface {v3}, Lcom/tapjoy/internal/ds;->b()Lcom/tapjoy/internal/ds;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/internal/gd$z$a;->n:Lcom/tapjoy/internal/ds;

    iget v3, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const v4, -0x1000001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    :cond_18
    iget-object v3, p0, Lcom/tapjoy/internal/gd$z$a;->n:Lcom/tapjoy/internal/ds;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$z;->a(Lcom/tapjoy/internal/gd$z;Lcom/tapjoy/internal/ds;)Lcom/tapjoy/internal/ds;

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    const/high16 v3, 0x2000000

    if-ne v2, v3, :cond_19

    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    :cond_19
    iget-boolean v2, p0, Lcom/tapjoy/internal/gd$z$a;->o:Z

    invoke-static {v1, v2}, Lcom/tapjoy/internal/gd$z;->b(Lcom/tapjoy/internal/gd$z;Z)Z

    invoke-static {v1, v0}, Lcom/tapjoy/internal/gd$z;->g(Lcom/tapjoy/internal/gd$z;I)I

    return-object v1
.end method

.method public final e(I)Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput p1, p0, Lcom/tapjoy/internal/gd$z$a;->y:I

    return-object p0
.end method

.method public final e(J)Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$z$a;->d:J

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$z$a;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public final e()V
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    :cond_0
    return-void
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final f(I)Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput p1, p0, Lcom/tapjoy/internal/gd$z$a;->g:I

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$z$a;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public final g()Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    invoke-static {}, Lcom/tapjoy/internal/gd$z;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->A:Ljava/lang/Object;

    return-object p0
.end method

.method public final g(I)Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput p1, p0, Lcom/tapjoy/internal/gd$z$a;->h:I

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$z$a;->k:Ljava/lang/Object;

    return-object p0
.end method

.method public final h()Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/gd$z$a;->B:Z

    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$z$a;->l:Ljava/lang/Object;

    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$z$a;->m:Ljava/lang/Object;

    return-object p0
.end method

.method public final i()Z
    .locals 2

    const/high16 v1, 0x10000

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    invoke-static {}, Lcom/tapjoy/internal/gd$z;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public final k()Z
    .locals 2

    const/high16 v1, 0x20000

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->g:I

    return-object p0
.end method

.method public final m()Z
    .locals 2

    const/high16 v1, 0x40000

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->h:I

    return-object p0
.end method

.method public final o()Z
    .locals 2

    const/high16 v1, 0x80000

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    invoke-static {}, Lcom/tapjoy/internal/gd$z;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public final q()Z
    .locals 2

    const/high16 v1, 0x100000

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    invoke-static {}, Lcom/tapjoy/internal/gd$z;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z;->E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public final s()Z
    .locals 2

    const/high16 v1, 0x200000

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    invoke-static {}, Lcom/tapjoy/internal/gd$z;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z;->G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->k:Ljava/lang/Object;

    return-object p0
.end method

.method public final u()Z
    .locals 2

    const/high16 v1, 0x400000

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v()Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    invoke-static {}, Lcom/tapjoy/internal/gd$z;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z;->I()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->l:Ljava/lang/Object;

    return-object p0
.end method

.method public final w()Z
    .locals 2

    const/high16 v1, 0x800000

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x()Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    invoke-static {}, Lcom/tapjoy/internal/gd$z;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z;->K()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->m:Ljava/lang/Object;

    return-object p0
.end method

.method public final y()Lcom/tapjoy/internal/gd$z$a;
    .locals 2

    sget-object v0, Lcom/tapjoy/internal/dr;->a:Lcom/tapjoy/internal/ds;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$z$a;->n:Lcom/tapjoy/internal/ds;

    iget v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$z$a;->b:I

    return-object p0
.end method

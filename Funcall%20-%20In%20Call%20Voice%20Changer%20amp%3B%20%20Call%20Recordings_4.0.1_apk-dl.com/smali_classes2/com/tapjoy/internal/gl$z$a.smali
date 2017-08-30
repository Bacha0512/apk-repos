.class public final Lcom/tapjoy/internal/gl$z$a;
.super Lcom/tapjoy/internal/do$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$z;
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

    .prologue
    .line 6997
    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    .line 7372
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->q:Ljava/lang/Object;

    .line 7512
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->c:Ljava/util/List;

    .line 7765
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->x:Ljava/lang/Object;

    .line 7969
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->A:Ljava/lang/Object;

    .line 8077
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->f:Ljava/lang/Object;

    .line 8217
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->i:Ljava/lang/Object;

    .line 8293
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->j:Ljava/lang/Object;

    .line 8369
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->k:Ljava/lang/Object;

    .line 8445
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->l:Ljava/lang/Object;

    .line 8521
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->m:Ljava/lang/Object;

    .line 8597
    sget-object v0, Lcom/tapjoy/internal/dr;->a:Lcom/tapjoy/internal/ds;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->n:Lcom/tapjoy/internal/ds;

    .line 6999
    return-void
.end method

.method private A()Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 9004
    new-instance v0, Lcom/tapjoy/internal/gl$z$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$z$a;-><init>()V

    .line 7065
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z$a;->d()Lcom/tapjoy/internal/gl$z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$z$a;->a(Lcom/tapjoy/internal/gl$z;)Lcom/tapjoy/internal/gl$z$a;

    move-result-object v0

    return-object v0
.end method

.method private B()V
    .locals 3

    .prologue
    const/high16 v2, 0x1000000

    .line 8599
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 8600
    new-instance v0, Lcom/tapjoy/internal/dr;

    iget-object v1, p0, Lcom/tapjoy/internal/gl$z$a;->n:Lcom/tapjoy/internal/ds;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/dr;-><init>(Lcom/tapjoy/internal/ds;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->n:Lcom/tapjoy/internal/ds;

    .line 8601
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8603
    :cond_0
    return-void
.end method

.method static synthetic z()Lcom/tapjoy/internal/gl$z$a;
    .locals 1

    .prologue
    .line 12004
    new-instance v0, Lcom/tapjoy/internal/gl$z$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$z$a;-><init>()V

    .line 6990
    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    .prologue
    .line 6990
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$z$a;->A()Lcom/tapjoy/internal/gl$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(D)Lcom/tapjoy/internal/gl$z$a;
    .locals 1

    .prologue
    .line 7890
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7891
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$z$a;->z:D

    .line 7893
    return-object p0
.end method

.method public final a(I)Lcom/tapjoy/internal/gl$z$a;
    .locals 1

    .prologue
    .line 7465
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7466
    iput p1, p0, Lcom/tapjoy/internal/gl$z$a;->r:I

    .line 7468
    return-object p0
.end method

.method public final a(J)Lcom/tapjoy/internal/gl$z$a;
    .locals 1

    .prologue
    .line 7357
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7358
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$z$a;->p:J

    .line 7360
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$z;)Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 7195
    invoke-static {}, Lcom/tapjoy/internal/gl$z;->d()Lcom/tapjoy/internal/gl$z;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7308
    :goto_0
    return-object p0

    .line 7196
    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9750
    iget-wide v0, p1, Lcom/tapjoy/internal/gl$z;->c:J

    .line 7197
    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$z$a;->a(J)Lcom/tapjoy/internal/gl$z$a;

    .line 7199
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7200
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7201
    invoke-static {p1}, Lcom/tapjoy/internal/gl$z;->b(Lcom/tapjoy/internal/gl$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->q:Ljava/lang/Object;

    .line 7204
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9807
    iget v0, p1, Lcom/tapjoy/internal/gl$z;->d:I

    .line 7205
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$z$a;->a(I)Lcom/tapjoy/internal/gl$z$a;

    .line 7207
    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9822
    iget v0, p1, Lcom/tapjoy/internal/gl$z;->e:I

    .line 7208
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$z$a;->b(I)Lcom/tapjoy/internal/gl$z$a;

    .line 7210
    :cond_4
    invoke-static {p1}, Lcom/tapjoy/internal/gl$z;->c(Lcom/tapjoy/internal/gl$z;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7211
    iget-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 7212
    invoke-static {p1}, Lcom/tapjoy/internal/gl$z;->c(Lcom/tapjoy/internal/gl$z;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->c:Ljava/util/List;

    .line 7213
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7220
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9872
    iget v0, p1, Lcom/tapjoy/internal/gl$z;->g:I

    .line 7221
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$z$a;->d(I)Lcom/tapjoy/internal/gl$z$a;

    .line 7223
    :cond_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9887
    iget-wide v0, p1, Lcom/tapjoy/internal/gl$z;->h:J

    .line 7224
    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$z$a;->b(J)Lcom/tapjoy/internal/gl$z$a;

    .line 7226
    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9902
    iget-wide v0, p1, Lcom/tapjoy/internal/gl$z;->i:J

    .line 7227
    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$z$a;->c(J)Lcom/tapjoy/internal/gl$z$a;

    .line 7229
    :cond_8
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9917
    iget-wide v0, p1, Lcom/tapjoy/internal/gl$z;->j:J

    .line 7230
    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$z$a;->d(J)Lcom/tapjoy/internal/gl$z$a;

    .line 7232
    :cond_9
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->o()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7233
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7234
    invoke-static {p1}, Lcom/tapjoy/internal/gl$z;->d(Lcom/tapjoy/internal/gl$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->x:Ljava/lang/Object;

    .line 7237
    :cond_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->q()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9974
    iget v0, p1, Lcom/tapjoy/internal/gl$z;->k:I

    .line 7238
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$z$a;->e(I)Lcom/tapjoy/internal/gl$z$a;

    .line 7240
    :cond_b
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->r()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 9989
    iget-wide v0, p1, Lcom/tapjoy/internal/gl$z;->l:D

    .line 7241
    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$z$a;->a(D)Lcom/tapjoy/internal/gl$z$a;

    .line 7243
    :cond_c
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->s()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 10004
    iget-wide v0, p1, Lcom/tapjoy/internal/gl$z;->m:J

    .line 7244
    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$z$a;->e(J)Lcom/tapjoy/internal/gl$z$a;

    .line 7246
    :cond_d
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->t()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10019
    iget-wide v0, p1, Lcom/tapjoy/internal/gl$z;->n:D

    .line 7247
    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$z$a;->b(D)Lcom/tapjoy/internal/gl$z$a;

    .line 7249
    :cond_e
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->u()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7250
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7251
    invoke-static {p1}, Lcom/tapjoy/internal/gl$z;->e(Lcom/tapjoy/internal/gl$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->A:Ljava/lang/Object;

    .line 7254
    :cond_f
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->w()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 10076
    iget-boolean v0, p1, Lcom/tapjoy/internal/gl$z;->o:Z

    .line 7255
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$z$a;->a(Z)Lcom/tapjoy/internal/gl$z$a;

    .line 7257
    :cond_10
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->x()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7258
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7259
    invoke-static {p1}, Lcom/tapjoy/internal/gl$z;->f(Lcom/tapjoy/internal/gl$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->f:Ljava/lang/Object;

    .line 7262
    :cond_11
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->z()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 10133
    iget v0, p1, Lcom/tapjoy/internal/gl$z;->p:I

    .line 7263
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$z$a;->f(I)Lcom/tapjoy/internal/gl$z$a;

    .line 7265
    :cond_12
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->A()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 10148
    iget v0, p1, Lcom/tapjoy/internal/gl$z;->q:I

    .line 7266
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$z$a;->g(I)Lcom/tapjoy/internal/gl$z$a;

    .line 7268
    :cond_13
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->B()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7269
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7270
    invoke-static {p1}, Lcom/tapjoy/internal/gl$z;->g(Lcom/tapjoy/internal/gl$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->i:Ljava/lang/Object;

    .line 7273
    :cond_14
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->D()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7274
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7275
    invoke-static {p1}, Lcom/tapjoy/internal/gl$z;->h(Lcom/tapjoy/internal/gl$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->j:Ljava/lang/Object;

    .line 7278
    :cond_15
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->F()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 7279
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7280
    invoke-static {p1}, Lcom/tapjoy/internal/gl$z;->i(Lcom/tapjoy/internal/gl$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->k:Ljava/lang/Object;

    .line 7283
    :cond_16
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->H()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 7284
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7285
    invoke-static {p1}, Lcom/tapjoy/internal/gl$z;->j(Lcom/tapjoy/internal/gl$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->l:Ljava/lang/Object;

    .line 7288
    :cond_17
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->J()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 7289
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7290
    invoke-static {p1}, Lcom/tapjoy/internal/gl$z;->k(Lcom/tapjoy/internal/gl$z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->m:Ljava/lang/Object;

    .line 7293
    :cond_18
    invoke-static {p1}, Lcom/tapjoy/internal/gl$z;->l(Lcom/tapjoy/internal/gl$z;)Lcom/tapjoy/internal/ds;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/internal/ds;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 7294
    iget-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->n:Lcom/tapjoy/internal/ds;

    invoke-interface {v0}, Lcom/tapjoy/internal/ds;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 7295
    invoke-static {p1}, Lcom/tapjoy/internal/gl$z;->l(Lcom/tapjoy/internal/gl$z;)Lcom/tapjoy/internal/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->n:Lcom/tapjoy/internal/ds;

    .line 7296
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7303
    :cond_19
    :goto_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$z;->M()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 10402
    iget-boolean v0, p1, Lcom/tapjoy/internal/gl$z;->s:Z

    .line 7304
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$z$a;->b(Z)Lcom/tapjoy/internal/gl$z$a;

    .line 11123
    :cond_1a
    iget-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 7306
    invoke-static {p1}, Lcom/tapjoy/internal/gl$z;->m(Lcom/tapjoy/internal/gl$z;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    .line 11127
    iput-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto/16 :goto_0

    .line 7215
    :cond_1b
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z$a;->e()V

    .line 7216
    iget-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/tapjoy/internal/gl$z;->c(Lcom/tapjoy/internal/gl$z;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 7298
    :cond_1c
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$z$a;->B()V

    .line 7299
    iget-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->n:Lcom/tapjoy/internal/ds;

    invoke-static {p1}, Lcom/tapjoy/internal/gl$z;->l(Lcom/tapjoy/internal/gl$z;)Lcom/tapjoy/internal/ds;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/ds;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/tapjoy/internal/gl$z$a;
    .locals 1

    .prologue
    .line 8661
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$z$a;->B()V

    .line 8662
    iget-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->n:Lcom/tapjoy/internal/ds;

    invoke-static {p1, v0}, Lcom/tapjoy/internal/dh$a;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8665
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$z$a;
    .locals 1

    .prologue
    .line 7417
    if-nez p1, :cond_0

    .line 7418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7420
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7421
    iput-object p1, p0, Lcom/tapjoy/internal/gl$z$a;->q:Ljava/lang/Object;

    .line 7423
    return-object p0
.end method

.method public final a(Z)Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8062
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8063
    iput-boolean p1, p0, Lcom/tapjoy/internal/gl$z$a;->B:Z

    .line 8065
    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    .prologue
    .line 6990
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$z$a;->A()Lcom/tapjoy/internal/gl$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(D)Lcom/tapjoy/internal/gl$z$a;
    .locals 1

    .prologue
    .line 7954
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7955
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$z$a;->e:D

    .line 7957
    return-object p0
.end method

.method public final b(I)Lcom/tapjoy/internal/gl$z$a;
    .locals 1

    .prologue
    .line 7497
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7498
    iput p1, p0, Lcom/tapjoy/internal/gl$z$a;->s:I

    .line 7500
    return-object p0
.end method

.method public final b(J)Lcom/tapjoy/internal/gl$z$a;
    .locals 1

    .prologue
    .line 7686
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7687
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$z$a;->u:J

    .line 7689
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$z$a;
    .locals 1

    .prologue
    .line 7810
    if-nez p1, :cond_0

    .line 7811
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7813
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7814
    iput-object p1, p0, Lcom/tapjoy/internal/gl$z$a;->x:Ljava/lang/Object;

    .line 7816
    return-object p0
.end method

.method public final b(Z)Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8707
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8708
    iput-boolean p1, p0, Lcom/tapjoy/internal/gl$z$a;->o:Z

    .line 8710
    return-object p0
.end method

.method public final c(I)Lcom/tapjoy/internal/gl$t;
    .locals 1

    .prologue
    .line 7537
    iget-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$t;

    return-object v0
.end method

.method public final c(J)Lcom/tapjoy/internal/gl$z$a;
    .locals 1

    .prologue
    .line 7718
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7719
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$z$a;->v:J

    .line 7721
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$z$a;
    .locals 1

    .prologue
    .line 8014
    if-nez p1, :cond_0

    .line 8015
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8017
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8018
    iput-object p1, p0, Lcom/tapjoy/internal/gl$z$a;->A:Ljava/lang/Object;

    .line 8020
    return-object p0
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 7312
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z$a;->f()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 7313
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$z$a;->c(I)Lcom/tapjoy/internal/gl$t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$t;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7318
    :goto_1
    return v1

    .line 7312
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7318
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6990
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$z$a;->A()Lcom/tapjoy/internal/gl$z$a;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)Lcom/tapjoy/internal/gl$z$a;
    .locals 1

    .prologue
    .line 7654
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7655
    iput p1, p0, Lcom/tapjoy/internal/gl$z$a;->t:I

    .line 7657
    return-object p0
.end method

.method public final d(J)Lcom/tapjoy/internal/gl$z$a;
    .locals 1

    .prologue
    .line 7750
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7751
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$z$a;->w:J

    .line 7753
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8122
    if-nez p1, :cond_0

    .line 8123
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8125
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8126
    iput-object p1, p0, Lcom/tapjoy/internal/gl$z$a;->f:Ljava/lang/Object;

    .line 8128
    return-object p0
.end method

.method public final d()Lcom/tapjoy/internal/gl$z;
    .locals 11

    .prologue
    const/high16 v10, 0x80000

    const/high16 v9, 0x40000

    const/high16 v8, 0x20000

    const/high16 v7, 0x10000

    const v6, 0x8000

    .line 7081
    new-instance v1, Lcom/tapjoy/internal/gl$z;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/tapjoy/internal/gl$z;-><init>(Lcom/tapjoy/internal/do$a;B)V

    .line 7082
    iget v2, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7083
    const/4 v0, 0x0

    .line 7084
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 7085
    const/4 v0, 0x1

    .line 7087
    :cond_0
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$z$a;->p:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$z;->a(Lcom/tapjoy/internal/gl$z;J)J

    .line 7088
    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 7089
    or-int/lit8 v0, v0, 0x2

    .line 7091
    :cond_1
    iget-object v3, p0, Lcom/tapjoy/internal/gl$z$a;->q:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->a(Lcom/tapjoy/internal/gl$z;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7092
    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 7093
    or-int/lit8 v0, v0, 0x4

    .line 7095
    :cond_2
    iget v3, p0, Lcom/tapjoy/internal/gl$z$a;->r:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->a(Lcom/tapjoy/internal/gl$z;I)I

    .line 7096
    and-int/lit8 v3, v2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 7097
    or-int/lit8 v0, v0, 0x8

    .line 7099
    :cond_3
    iget v3, p0, Lcom/tapjoy/internal/gl$z$a;->s:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->b(Lcom/tapjoy/internal/gl$z;I)I

    .line 7100
    iget v3, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 7101
    iget-object v3, p0, Lcom/tapjoy/internal/gl$z$a;->c:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/internal/gl$z$a;->c:Ljava/util/List;

    .line 7102
    iget v3, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7104
    :cond_4
    iget-object v3, p0, Lcom/tapjoy/internal/gl$z$a;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->a(Lcom/tapjoy/internal/gl$z;Ljava/util/List;)Ljava/util/List;

    .line 7105
    and-int/lit8 v3, v2, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 7106
    or-int/lit8 v0, v0, 0x10

    .line 7108
    :cond_5
    iget v3, p0, Lcom/tapjoy/internal/gl$z$a;->t:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->c(Lcom/tapjoy/internal/gl$z;I)I

    .line 7109
    and-int/lit8 v3, v2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 7110
    or-int/lit8 v0, v0, 0x20

    .line 7112
    :cond_6
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$z$a;->u:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$z;->b(Lcom/tapjoy/internal/gl$z;J)J

    .line 7113
    and-int/lit16 v3, v2, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 7114
    or-int/lit8 v0, v0, 0x40

    .line 7116
    :cond_7
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$z$a;->v:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$z;->c(Lcom/tapjoy/internal/gl$z;J)J

    .line 7117
    and-int/lit16 v3, v2, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 7118
    or-int/lit16 v0, v0, 0x80

    .line 7120
    :cond_8
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$z$a;->w:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$z;->d(Lcom/tapjoy/internal/gl$z;J)J

    .line 7121
    and-int/lit16 v3, v2, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 7122
    or-int/lit16 v0, v0, 0x100

    .line 7124
    :cond_9
    iget-object v3, p0, Lcom/tapjoy/internal/gl$z$a;->x:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->b(Lcom/tapjoy/internal/gl$z;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7125
    and-int/lit16 v3, v2, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 7126
    or-int/lit16 v0, v0, 0x200

    .line 7128
    :cond_a
    iget v3, p0, Lcom/tapjoy/internal/gl$z$a;->y:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->d(Lcom/tapjoy/internal/gl$z;I)I

    .line 7129
    and-int/lit16 v3, v2, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 7130
    or-int/lit16 v0, v0, 0x400

    .line 7132
    :cond_b
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$z$a;->z:D

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$z;->a(Lcom/tapjoy/internal/gl$z;D)D

    .line 7133
    and-int/lit16 v3, v2, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 7134
    or-int/lit16 v0, v0, 0x800

    .line 7136
    :cond_c
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$z$a;->d:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$z;->e(Lcom/tapjoy/internal/gl$z;J)J

    .line 7137
    and-int/lit16 v3, v2, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 7138
    or-int/lit16 v0, v0, 0x1000

    .line 7140
    :cond_d
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$z$a;->e:D

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$z;->b(Lcom/tapjoy/internal/gl$z;D)D

    .line 7141
    and-int/lit16 v3, v2, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 7142
    or-int/lit16 v0, v0, 0x2000

    .line 7144
    :cond_e
    iget-object v3, p0, Lcom/tapjoy/internal/gl$z$a;->A:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->c(Lcom/tapjoy/internal/gl$z;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7145
    and-int v3, v2, v6

    if-ne v3, v6, :cond_f

    .line 7146
    or-int/lit16 v0, v0, 0x4000

    .line 7148
    :cond_f
    iget-boolean v3, p0, Lcom/tapjoy/internal/gl$z$a;->B:Z

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->a(Lcom/tapjoy/internal/gl$z;Z)Z

    .line 7149
    and-int v3, v2, v7

    if-ne v3, v7, :cond_10

    .line 7150
    or-int/2addr v0, v6

    .line 7152
    :cond_10
    iget-object v3, p0, Lcom/tapjoy/internal/gl$z$a;->f:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->d(Lcom/tapjoy/internal/gl$z;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7153
    and-int v3, v2, v8

    if-ne v3, v8, :cond_11

    .line 7154
    or-int/2addr v0, v7

    .line 7156
    :cond_11
    iget v3, p0, Lcom/tapjoy/internal/gl$z$a;->g:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->e(Lcom/tapjoy/internal/gl$z;I)I

    .line 7157
    and-int v3, v2, v9

    if-ne v3, v9, :cond_12

    .line 7158
    or-int/2addr v0, v8

    .line 7160
    :cond_12
    iget v3, p0, Lcom/tapjoy/internal/gl$z$a;->h:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->f(Lcom/tapjoy/internal/gl$z;I)I

    .line 7161
    and-int v3, v2, v10

    if-ne v3, v10, :cond_13

    .line 7162
    or-int/2addr v0, v9

    .line 7164
    :cond_13
    iget-object v3, p0, Lcom/tapjoy/internal/gl$z$a;->i:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->e(Lcom/tapjoy/internal/gl$z;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7165
    const/high16 v3, 0x100000

    and-int/2addr v3, v2

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_14

    .line 7166
    or-int/2addr v0, v10

    .line 7168
    :cond_14
    iget-object v3, p0, Lcom/tapjoy/internal/gl$z$a;->j:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->f(Lcom/tapjoy/internal/gl$z;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7169
    const/high16 v3, 0x200000

    and-int/2addr v3, v2

    const/high16 v4, 0x200000

    if-ne v3, v4, :cond_15

    .line 7170
    const/high16 v3, 0x100000

    or-int/2addr v0, v3

    .line 7172
    :cond_15
    iget-object v3, p0, Lcom/tapjoy/internal/gl$z$a;->k:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->g(Lcom/tapjoy/internal/gl$z;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7173
    const/high16 v3, 0x400000

    and-int/2addr v3, v2

    const/high16 v4, 0x400000

    if-ne v3, v4, :cond_16

    .line 7174
    const/high16 v3, 0x200000

    or-int/2addr v0, v3

    .line 7176
    :cond_16
    iget-object v3, p0, Lcom/tapjoy/internal/gl$z$a;->l:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->h(Lcom/tapjoy/internal/gl$z;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7177
    const/high16 v3, 0x800000

    and-int/2addr v3, v2

    const/high16 v4, 0x800000

    if-ne v3, v4, :cond_17

    .line 7178
    const/high16 v3, 0x400000

    or-int/2addr v0, v3

    .line 7180
    :cond_17
    iget-object v3, p0, Lcom/tapjoy/internal/gl$z$a;->m:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->i(Lcom/tapjoy/internal/gl$z;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7181
    iget v3, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    const/high16 v4, 0x1000000

    if-ne v3, v4, :cond_18

    .line 7182
    iget-object v3, p0, Lcom/tapjoy/internal/gl$z$a;->n:Lcom/tapjoy/internal/ds;

    invoke-interface {v3}, Lcom/tapjoy/internal/ds;->b()Lcom/tapjoy/internal/ds;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/internal/gl$z$a;->n:Lcom/tapjoy/internal/ds;

    .line 7183
    iget v3, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const v4, -0x1000001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7185
    :cond_18
    iget-object v3, p0, Lcom/tapjoy/internal/gl$z$a;->n:Lcom/tapjoy/internal/ds;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$z;->a(Lcom/tapjoy/internal/gl$z;Lcom/tapjoy/internal/ds;)Lcom/tapjoy/internal/ds;

    .line 7186
    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    const/high16 v3, 0x2000000

    if-ne v2, v3, :cond_19

    .line 7187
    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    .line 7189
    :cond_19
    iget-boolean v2, p0, Lcom/tapjoy/internal/gl$z$a;->o:Z

    invoke-static {v1, v2}, Lcom/tapjoy/internal/gl$z;->b(Lcom/tapjoy/internal/gl$z;Z)Z

    .line 7190
    invoke-static {v1, v0}, Lcom/tapjoy/internal/gl$z;->g(Lcom/tapjoy/internal/gl$z;I)I

    .line 7191
    return-object v1
.end method

.method public final e(I)Lcom/tapjoy/internal/gl$z$a;
    .locals 1

    .prologue
    .line 7858
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7859
    iput p1, p0, Lcom/tapjoy/internal/gl$z$a;->y:I

    .line 7861
    return-object p0
.end method

.method public final e(J)Lcom/tapjoy/internal/gl$z$a;
    .locals 1

    .prologue
    .line 7922
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7923
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$z$a;->d:J

    .line 7925
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8262
    if-nez p1, :cond_0

    .line 8263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8265
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8266
    iput-object p1, p0, Lcom/tapjoy/internal/gl$z$a;->i:Ljava/lang/Object;

    .line 8268
    return-object p0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 7515
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 7516
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/gl$z$a;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->c:Ljava/util/List;

    .line 7517
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 7519
    :cond_0
    return-void
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 7531
    iget-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final f(I)Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8170
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8171
    iput p1, p0, Lcom/tapjoy/internal/gl$z$a;->g:I

    .line 8173
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8338
    if-nez p1, :cond_0

    .line 8339
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8341
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8342
    iput-object p1, p0, Lcom/tapjoy/internal/gl$z$a;->j:Ljava/lang/Object;

    .line 8344
    return-object p0
.end method

.method public final g()Lcom/tapjoy/internal/gl$z$a;
    .locals 1

    .prologue
    .line 8026
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8027
    invoke-static {}, Lcom/tapjoy/internal/gl$z;->d()Lcom/tapjoy/internal/gl$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$z;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->A:Ljava/lang/Object;

    .line 8029
    return-object p0
.end method

.method public final g(I)Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8202
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8203
    iput p1, p0, Lcom/tapjoy/internal/gl$z$a;->h:I

    .line 8205
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8414
    if-nez p1, :cond_0

    .line 8415
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8417
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8418
    iput-object p1, p0, Lcom/tapjoy/internal/gl$z$a;->k:Ljava/lang/Object;

    .line 8420
    return-object p0
.end method

.method public final h()Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8071
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8072
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/gl$z$a;->B:Z

    .line 8074
    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8490
    if-nez p1, :cond_0

    .line 8491
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8493
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8494
    iput-object p1, p0, Lcom/tapjoy/internal/gl$z$a;->l:Ljava/lang/Object;

    .line 8496
    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8566
    if-nez p1, :cond_0

    .line 8567
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8569
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8570
    iput-object p1, p0, Lcom/tapjoy/internal/gl$z$a;->m:Ljava/lang/Object;

    .line 8572
    return-object p0
.end method

.method public final i()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 8082
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8134
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8135
    invoke-static {}, Lcom/tapjoy/internal/gl$z;->d()Lcom/tapjoy/internal/gl$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$z;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->f:Ljava/lang/Object;

    .line 8137
    return-object p0
.end method

.method public final k()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000

    .line 8158
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8179
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8180
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->g:I

    .line 8182
    return-object p0
.end method

.method public final m()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000

    .line 8190
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8211
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8212
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->h:I

    .line 8214
    return-object p0
.end method

.method public final o()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80000

    .line 8222
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8274
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8275
    invoke-static {}, Lcom/tapjoy/internal/gl$z;->d()Lcom/tapjoy/internal/gl$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$z;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->i:Ljava/lang/Object;

    .line 8277
    return-object p0
.end method

.method public final q()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100000

    .line 8298
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8350
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8351
    invoke-static {}, Lcom/tapjoy/internal/gl$z;->d()Lcom/tapjoy/internal/gl$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$z;->E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->j:Ljava/lang/Object;

    .line 8353
    return-object p0
.end method

.method public final s()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200000

    .line 8374
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8426
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8427
    invoke-static {}, Lcom/tapjoy/internal/gl$z;->d()Lcom/tapjoy/internal/gl$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$z;->G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->k:Ljava/lang/Object;

    .line 8429
    return-object p0
.end method

.method public final u()Z
    .locals 2

    .prologue
    const/high16 v1, 0x400000

    .line 8450
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v()Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8502
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8503
    invoke-static {}, Lcom/tapjoy/internal/gl$z;->d()Lcom/tapjoy/internal/gl$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$z;->I()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->l:Ljava/lang/Object;

    .line 8505
    return-object p0
.end method

.method public final w()Z
    .locals 2

    .prologue
    const/high16 v1, 0x800000

    .line 8526
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x()Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8578
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8579
    invoke-static {}, Lcom/tapjoy/internal/gl$z;->d()Lcom/tapjoy/internal/gl$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$z;->K()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->m:Ljava/lang/Object;

    .line 8581
    return-object p0
.end method

.method public final y()Lcom/tapjoy/internal/gl$z$a;
    .locals 2

    .prologue
    .line 8671
    sget-object v0, Lcom/tapjoy/internal/dr;->a:Lcom/tapjoy/internal/ds;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$z$a;->n:Lcom/tapjoy/internal/ds;

    .line 8672
    iget v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 8674
    return-object p0
.end method

.class public final Lcom/tapjoy/internal/gl$r$a;
.super Lcom/tapjoy/internal/do$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$r;
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

    .prologue
    .line 11102
    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    .line 11321
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->c:Ljava/lang/Object;

    .line 11397
    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->h:I

    .line 11461
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->d:Ljava/lang/Object;

    .line 11537
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->j:Ljava/lang/Object;

    .line 11613
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->k:Ljava/lang/Object;

    .line 11689
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->l:Ljava/lang/Object;

    .line 11765
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->m:Ljava/lang/Object;

    .line 11905
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->e:Ljava/lang/Object;

    .line 11981
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->p:Ljava/lang/Object;

    .line 12057
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->f:Ljava/lang/Object;

    .line 12133
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->g:Ljava/lang/Object;

    .line 11104
    return-void
.end method

.method static synthetic e()Lcom/tapjoy/internal/gl$r$a;
    .locals 1

    .prologue
    .line 17109
    new-instance v0, Lcom/tapjoy/internal/gl$r$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$r$a;-><init>()V

    .line 11095
    return-object v0
.end method

.method private f()Lcom/tapjoy/internal/gl$r$a;
    .locals 2

    .prologue
    .line 13109
    new-instance v0, Lcom/tapjoy/internal/gl$r$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$r$a;-><init>()V

    .line 11146
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$r$a;->d()Lcom/tapjoy/internal/gl$r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$r$a;->a(Lcom/tapjoy/internal/gl$r;)Lcom/tapjoy/internal/gl$r$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    .prologue
    .line 11095
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r$a;->f()Lcom/tapjoy/internal/gl$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(D)Lcom/tapjoy/internal/gl$r$a;
    .locals 1

    .prologue
    .line 11446
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 11447
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$r$a;->i:D

    .line 11449
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$r;)Lcom/tapjoy/internal/gl$r$a;
    .locals 3

    .prologue
    .line 11226
    invoke-static {}, Lcom/tapjoy/internal/gl$r;->d()Lcom/tapjoy/internal/gl$r;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 11291
    :goto_0
    return-object p0

    .line 11227
    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11228
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 11229
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->b(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->c:Ljava/lang/Object;

    .line 11232
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13298
    iget v0, p1, Lcom/tapjoy/internal/gl$r;->c:I

    .line 13414
    iget v1, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 13415
    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->h:I

    .line 11235
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14313
    iget-wide v0, p1, Lcom/tapjoy/internal/gl$r;->d:D

    .line 11236
    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gl$r$a;->a(D)Lcom/tapjoy/internal/gl$r$a;

    .line 11238
    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11239
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 11240
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->c(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->d:Ljava/lang/Object;

    .line 11243
    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11244
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 11245
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->d(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->j:Ljava/lang/Object;

    .line 11248
    :cond_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11249
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 11250
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->e(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->k:Ljava/lang/Object;

    .line 11253
    :cond_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11254
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 11255
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->f(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->l:Ljava/lang/Object;

    .line 11258
    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 11259
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 11260
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->g(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->m:Ljava/lang/Object;

    .line 11263
    :cond_8
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 14538
    iget v0, p1, Lcom/tapjoy/internal/gl$r;->e:I

    .line 14858
    iget v1, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 14859
    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->n:I

    .line 11266
    :cond_9
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->t()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 15553
    iget-wide v0, p1, Lcom/tapjoy/internal/gl$r;->f:J

    .line 15890
    iget v2, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 15891
    iput-wide v0, p0, Lcom/tapjoy/internal/gl$r$a;->o:J

    .line 11269
    :cond_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->u()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 11270
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 11271
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->h(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->e:Ljava/lang/Object;

    .line 11274
    :cond_b
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->w()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 11275
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 11276
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->i(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->p:Ljava/lang/Object;

    .line 11279
    :cond_c
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->y()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 11280
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 11281
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->j(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->f:Ljava/lang/Object;

    .line 11284
    :cond_d
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$r;->A()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 11285
    iget v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 11286
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->k(Lcom/tapjoy/internal/gl$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$r$a;->g:Ljava/lang/Object;

    .line 16123
    :cond_e
    iget-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 11289
    invoke-static {p1}, Lcom/tapjoy/internal/gl$r;->l(Lcom/tapjoy/internal/gl$r;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    .line 16127
    iput-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto/16 :goto_0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    .prologue
    .line 11095
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r$a;->f()Lcom/tapjoy/internal/gl$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 11295
    .line 16326
    iget v2, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    move v2, v1

    .line 11295
    :goto_0
    if-nez v2, :cond_1

    .line 11299
    :goto_1
    return v0

    :cond_0
    move v2, v0

    .line 16326
    goto :goto_0

    :cond_1
    move v0, v1

    .line 11299
    goto :goto_1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11095
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$r$a;->f()Lcom/tapjoy/internal/gl$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gl$r;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11162
    new-instance v2, Lcom/tapjoy/internal/gl$r;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gl$r;-><init>(Lcom/tapjoy/internal/do$a;B)V

    .line 11163
    iget v3, p0, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 11165
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_d

    .line 11168
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->a(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11169
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 11170
    or-int/lit8 v0, v0, 0x2

    .line 11172
    :cond_0
    iget v1, p0, Lcom/tapjoy/internal/gl$r$a;->h:I

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->a(Lcom/tapjoy/internal/gl$r;I)I

    .line 11173
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 11174
    or-int/lit8 v0, v0, 0x4

    .line 11176
    :cond_1
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$r$a;->i:D

    invoke-static {v2, v4, v5}, Lcom/tapjoy/internal/gl$r;->a(Lcom/tapjoy/internal/gl$r;D)D

    .line 11177
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 11178
    or-int/lit8 v0, v0, 0x8

    .line 11180
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->b(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11181
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 11182
    or-int/lit8 v0, v0, 0x10

    .line 11184
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->j:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->c(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11185
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 11186
    or-int/lit8 v0, v0, 0x20

    .line 11188
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->k:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->d(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11189
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 11190
    or-int/lit8 v0, v0, 0x40

    .line 11192
    :cond_5
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->l:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->e(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11193
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 11194
    or-int/lit16 v0, v0, 0x80

    .line 11196
    :cond_6
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->m:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->f(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11197
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    .line 11198
    or-int/lit16 v0, v0, 0x100

    .line 11200
    :cond_7
    iget v1, p0, Lcom/tapjoy/internal/gl$r$a;->n:I

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->b(Lcom/tapjoy/internal/gl$r;I)I

    .line 11201
    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    .line 11202
    or-int/lit16 v0, v0, 0x200

    .line 11204
    :cond_8
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$r$a;->o:J

    invoke-static {v2, v4, v5}, Lcom/tapjoy/internal/gl$r;->a(Lcom/tapjoy/internal/gl$r;J)J

    .line 11205
    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    .line 11206
    or-int/lit16 v0, v0, 0x400

    .line 11208
    :cond_9
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->g(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11209
    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    .line 11210
    or-int/lit16 v0, v0, 0x800

    .line 11212
    :cond_a
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->p:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->h(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11213
    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    .line 11214
    or-int/lit16 v0, v0, 0x1000

    .line 11216
    :cond_b
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->i(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11217
    and-int/lit16 v1, v3, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_c

    .line 11218
    or-int/lit16 v0, v0, 0x2000

    .line 11220
    :cond_c
    iget-object v1, p0, Lcom/tapjoy/internal/gl$r$a;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$r;->j(Lcom/tapjoy/internal/gl$r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11221
    invoke-static {v2, v0}, Lcom/tapjoy/internal/gl$r;->c(Lcom/tapjoy/internal/gl$r;I)I

    .line 11222
    return-object v2

    :cond_d
    move v0, v1

    goto/16 :goto_0
.end method

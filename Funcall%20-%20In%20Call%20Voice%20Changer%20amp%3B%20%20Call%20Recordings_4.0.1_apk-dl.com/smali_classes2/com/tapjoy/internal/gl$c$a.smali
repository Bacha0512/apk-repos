.class public final Lcom/tapjoy/internal/gl$c$a;
.super Lcom/tapjoy/internal/do$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private A:J

.field public b:I

.field public c:Lcom/tapjoy/internal/gl$i;

.field public d:Ljava/lang/Object;

.field public e:J

.field public f:Ljava/lang/Object;

.field public g:Lcom/tapjoy/internal/gl$l;

.field public h:Lcom/tapjoy/internal/gl$a;

.field public i:Lcom/tapjoy/internal/gl$z;

.field public j:Lcom/tapjoy/internal/gl$f;

.field public k:Lcom/tapjoy/internal/gl$r;

.field public l:Lcom/tapjoy/internal/gl$p;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field private q:J

.field private r:J

.field private s:J

.field private t:I

.field private u:I

.field private v:Ljava/lang/Object;

.field private w:Ljava/lang/Object;

.field private x:Ljava/util/List;

.field private y:I

.field private z:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16094
    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    .line 16448
    sget-object v0, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->c:Lcom/tapjoy/internal/gl$i;

    .line 16483
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->d:Ljava/lang/Object;

    .line 16623
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->f:Ljava/lang/Object;

    .line 16763
    invoke-static {}, Lcom/tapjoy/internal/gl$l;->d()Lcom/tapjoy/internal/gl$l;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->g:Lcom/tapjoy/internal/gl$l;

    .line 16823
    invoke-static {}, Lcom/tapjoy/internal/gl$a;->d()Lcom/tapjoy/internal/gl$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->h:Lcom/tapjoy/internal/gl$a;

    .line 16883
    invoke-static {}, Lcom/tapjoy/internal/gl$z;->d()Lcom/tapjoy/internal/gl$z;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->i:Lcom/tapjoy/internal/gl$z;

    .line 17007
    invoke-static {}, Lcom/tapjoy/internal/gl$f;->d()Lcom/tapjoy/internal/gl$f;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->j:Lcom/tapjoy/internal/gl$f;

    .line 17067
    invoke-static {}, Lcom/tapjoy/internal/gl$r;->d()Lcom/tapjoy/internal/gl$r;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->k:Lcom/tapjoy/internal/gl$r;

    .line 17127
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->v:Ljava/lang/Object;

    .line 17203
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->w:Ljava/lang/Object;

    .line 17279
    invoke-static {}, Lcom/tapjoy/internal/gl$p;->d()Lcom/tapjoy/internal/gl$p;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->l:Lcom/tapjoy/internal/gl$p;

    .line 17339
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->m:Ljava/lang/Object;

    .line 17415
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->n:Ljava/lang/Object;

    .line 17491
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->o:Ljava/lang/Object;

    .line 17567
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->x:Ljava/util/List;

    .line 17692
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->p:Ljava/lang/Object;

    .line 16096
    return-void
.end method

.method static synthetic e()Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 29101
    new-instance v0, Lcom/tapjoy/internal/gl$c$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$c$a;-><init>()V

    .line 16087
    return-object v0
.end method

.method private f()Lcom/tapjoy/internal/gl$c$a;
    .locals 6

    .prologue
    const/high16 v5, 0x10000

    .line 18101
    new-instance v0, Lcom/tapjoy/internal/gl$c$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$c$a;-><init>()V

    .line 16160
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c$a;->d()Lcom/tapjoy/internal/gl$c;

    move-result-object v1

    .line 18285
    invoke-static {}, Lcom/tapjoy/internal/gl$c;->d()Lcom/tapjoy/internal/gl$c;

    move-result-object v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    .line 18286
    :cond_0
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18898
    iget-object v2, v1, Lcom/tapjoy/internal/gl$c;->c:Lcom/tapjoy/internal/gl$i;

    .line 18287
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/gl$c$a;->a(Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$c$a;

    .line 18289
    :cond_1
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18290
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 18291
    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->d:Ljava/lang/Object;

    .line 18294
    :cond_2
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18955
    iget-wide v2, v1, Lcom/tapjoy/internal/gl$c;->d:J

    .line 18295
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/gl$c$a;->a(J)Lcom/tapjoy/internal/gl$c$a;

    .line 18297
    :cond_3
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18970
    iget-wide v2, v1, Lcom/tapjoy/internal/gl$c;->e:J

    .line 18298
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/gl$c$a;->b(J)Lcom/tapjoy/internal/gl$c$a;

    .line 18300
    :cond_4
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 18301
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 18302
    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->b(Lcom/tapjoy/internal/gl$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->f:Ljava/lang/Object;

    .line 18305
    :cond_5
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->l()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19027
    iget-wide v2, v1, Lcom/tapjoy/internal/gl$c;->f:J

    .line 18306
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/gl$c$a;->c(J)Lcom/tapjoy/internal/gl$c$a;

    .line 18308
    :cond_6
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->m()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 19042
    iget-wide v2, v1, Lcom/tapjoy/internal/gl$c;->g:J

    .line 18309
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/gl$c$a;->d(J)Lcom/tapjoy/internal/gl$c$a;

    .line 18311
    :cond_7
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->n()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 19057
    iget-object v2, v1, Lcom/tapjoy/internal/gl$c;->h:Lcom/tapjoy/internal/gl$l;

    .line 19802
    iget v3, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1a

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->g:Lcom/tapjoy/internal/gl$l;

    invoke-static {}, Lcom/tapjoy/internal/gl$l;->d()Lcom/tapjoy/internal/gl$l;

    move-result-object v4

    if-eq v3, v4, :cond_1a

    .line 19804
    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->g:Lcom/tapjoy/internal/gl$l;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$l;->a(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$l$a;->a(Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$l$a;->d()Lcom/tapjoy/internal/gl$l;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->g:Lcom/tapjoy/internal/gl$l;

    .line 19810
    :goto_1
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 18314
    :cond_8
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->o()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 20072
    iget-object v2, v1, Lcom/tapjoy/internal/gl$c;->i:Lcom/tapjoy/internal/gl$a;

    .line 20862
    iget v3, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_1b

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->h:Lcom/tapjoy/internal/gl$a;

    invoke-static {}, Lcom/tapjoy/internal/gl$a;->d()Lcom/tapjoy/internal/gl$a;

    move-result-object v4

    if-eq v3, v4, :cond_1b

    .line 20864
    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->h:Lcom/tapjoy/internal/gl$a;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$a;->a(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$a$a;->a(Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$a$a;->d()Lcom/tapjoy/internal/gl$a;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->h:Lcom/tapjoy/internal/gl$a;

    .line 20870
    :goto_2
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 18317
    :cond_9
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->p()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 21087
    iget-object v2, v1, Lcom/tapjoy/internal/gl$c;->j:Lcom/tapjoy/internal/gl$z;

    .line 21922
    iget v3, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_1c

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->i:Lcom/tapjoy/internal/gl$z;

    invoke-static {}, Lcom/tapjoy/internal/gl$z;->d()Lcom/tapjoy/internal/gl$z;

    move-result-object v4

    if-eq v3, v4, :cond_1c

    .line 21924
    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->i:Lcom/tapjoy/internal/gl$z;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$z;->a(Lcom/tapjoy/internal/gl$z;)Lcom/tapjoy/internal/gl$z$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$z$a;->a(Lcom/tapjoy/internal/gl$z;)Lcom/tapjoy/internal/gl$z$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$z$a;->d()Lcom/tapjoy/internal/gl$z;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->i:Lcom/tapjoy/internal/gl$z;

    .line 21930
    :goto_3
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 18320
    :cond_a
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->q()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 22102
    iget v2, v1, Lcom/tapjoy/internal/gl$c;->k:I

    .line 22960
    iget v3, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 22961
    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->t:I

    .line 18323
    :cond_b
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->r()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 23117
    iget v2, v1, Lcom/tapjoy/internal/gl$c;->l:I

    .line 18324
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/gl$c$a;->a(I)Lcom/tapjoy/internal/gl$c$a;

    .line 18326
    :cond_c
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->s()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 23132
    iget-object v2, v1, Lcom/tapjoy/internal/gl$c;->m:Lcom/tapjoy/internal/gl$f;

    .line 24046
    iget v3, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_1d

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->j:Lcom/tapjoy/internal/gl$f;

    invoke-static {}, Lcom/tapjoy/internal/gl$f;->d()Lcom/tapjoy/internal/gl$f;

    move-result-object v4

    if-eq v3, v4, :cond_1d

    .line 24048
    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->j:Lcom/tapjoy/internal/gl$f;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$f;->a(Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/gl$f$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$f$a;->a(Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/gl$f$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$f$a;->d()Lcom/tapjoy/internal/gl$f;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->j:Lcom/tapjoy/internal/gl$f;

    .line 24054
    :goto_4
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 18329
    :cond_d
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->t()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 24147
    iget-object v2, v1, Lcom/tapjoy/internal/gl$c;->n:Lcom/tapjoy/internal/gl$r;

    .line 25106
    iget v3, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_1e

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->k:Lcom/tapjoy/internal/gl$r;

    invoke-static {}, Lcom/tapjoy/internal/gl$r;->d()Lcom/tapjoy/internal/gl$r;

    move-result-object v4

    if-eq v3, v4, :cond_1e

    .line 25108
    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->k:Lcom/tapjoy/internal/gl$r;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$r;->a(Lcom/tapjoy/internal/gl$r;)Lcom/tapjoy/internal/gl$r$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$r$a;->a(Lcom/tapjoy/internal/gl$r;)Lcom/tapjoy/internal/gl$r$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$r$a;->d()Lcom/tapjoy/internal/gl$r;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->k:Lcom/tapjoy/internal/gl$r;

    .line 25114
    :goto_5
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 18332
    :cond_e
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->u()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 18333
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 18334
    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->c(Lcom/tapjoy/internal/gl$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->v:Ljava/lang/Object;

    .line 18337
    :cond_f
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->w()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 18338
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 18339
    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->d(Lcom/tapjoy/internal/gl$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->w:Ljava/lang/Object;

    .line 18342
    :cond_10
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->y()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 25246
    iget-object v2, v1, Lcom/tapjoy/internal/gl$c;->o:Lcom/tapjoy/internal/gl$p;

    .line 25318
    iget v3, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_1f

    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->l:Lcom/tapjoy/internal/gl$p;

    invoke-static {}, Lcom/tapjoy/internal/gl$p;->d()Lcom/tapjoy/internal/gl$p;

    move-result-object v4

    if-eq v3, v4, :cond_1f

    .line 25320
    iget-object v3, v0, Lcom/tapjoy/internal/gl$c$a;->l:Lcom/tapjoy/internal/gl$p;

    invoke-static {v3}, Lcom/tapjoy/internal/gl$p;->a(Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/gl$p$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$p$a;->a(Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/gl$p$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$p$a;->e()Lcom/tapjoy/internal/gl$p;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->l:Lcom/tapjoy/internal/gl$p;

    .line 25326
    :goto_6
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/2addr v2, v5

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 18345
    :cond_11
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->z()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 18346
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 18347
    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->e(Lcom/tapjoy/internal/gl$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->m:Ljava/lang/Object;

    .line 18350
    :cond_12
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->B()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 18351
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v3, 0x40000

    or-int/2addr v2, v3

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 18352
    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->f(Lcom/tapjoy/internal/gl$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->n:Ljava/lang/Object;

    .line 18355
    :cond_13
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->D()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 18356
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 18357
    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->g(Lcom/tapjoy/internal/gl$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->o:Ljava/lang/Object;

    .line 18360
    :cond_14
    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->h(Lcom/tapjoy/internal/gl$c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 18361
    iget-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 18362
    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->h(Lcom/tapjoy/internal/gl$c;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->x:Ljava/util/List;

    .line 18363
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 18370
    :cond_15
    :goto_7
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->G()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 18371
    iget v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 18372
    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->i(Lcom/tapjoy/internal/gl$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->p:Ljava/lang/Object;

    .line 18375
    :cond_16
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->I()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 25464
    iget v2, v1, Lcom/tapjoy/internal/gl$c;->q:I

    .line 18376
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/gl$c$a;->b(I)Lcom/tapjoy/internal/gl$c$a;

    .line 18378
    :cond_17
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->J()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 25479
    iget-wide v2, v1, Lcom/tapjoy/internal/gl$c;->r:J

    .line 18379
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/gl$c$a;->e(J)Lcom/tapjoy/internal/gl$c$a;

    .line 18381
    :cond_18
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->K()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 25494
    iget-wide v2, v1, Lcom/tapjoy/internal/gl$c;->s:J

    .line 18382
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/gl$c$a;->f(J)Lcom/tapjoy/internal/gl$c$a;

    .line 26123
    :cond_19
    iget-object v2, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 18384
    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->j(Lcom/tapjoy/internal/gl$c;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    .line 26127
    iput-object v1, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto/16 :goto_0

    .line 19807
    :cond_1a
    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->g:Lcom/tapjoy/internal/gl$l;

    goto/16 :goto_1

    .line 20867
    :cond_1b
    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->h:Lcom/tapjoy/internal/gl$a;

    goto/16 :goto_2

    .line 21927
    :cond_1c
    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->i:Lcom/tapjoy/internal/gl$z;

    goto/16 :goto_3

    .line 24051
    :cond_1d
    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->j:Lcom/tapjoy/internal/gl$f;

    goto/16 :goto_4

    .line 25111
    :cond_1e
    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->k:Lcom/tapjoy/internal/gl$r;

    goto/16 :goto_5

    .line 25323
    :cond_1f
    iput-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->l:Lcom/tapjoy/internal/gl$p;

    goto/16 :goto_6

    .line 18365
    :cond_20
    invoke-direct {v0}, Lcom/tapjoy/internal/gl$c$a;->g()V

    .line 18366
    iget-object v2, v0, Lcom/tapjoy/internal/gl$c$a;->x:Ljava/util/List;

    invoke-static {v1}, Lcom/tapjoy/internal/gl$c;->h(Lcom/tapjoy/internal/gl$c;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7
.end method

.method private g()V
    .locals 3

    .prologue
    const/high16 v2, 0x100000

    .line 17570
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 17571
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/gl$c$a;->x:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->x:Ljava/util/List;

    .line 17572
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 17574
    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    .prologue
    .line 16087
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$c$a;->f()Lcom/tapjoy/internal/gl$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 16992
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 16993
    iput p1, p0, Lcom/tapjoy/internal/gl$c$a;->u:I

    .line 16995
    return-object p0
.end method

.method public final a(J)Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 16576
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 16577
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$c$a;->e:J

    .line 16579
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 16465
    if-nez p1, :cond_0

    .line 16466
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16468
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 16469
    iput-object p1, p0, Lcom/tapjoy/internal/gl$c$a;->c:Lcom/tapjoy/internal/gl$i;

    .line 16471
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$j$a;)Lcom/tapjoy/internal/gl$c$a;
    .locals 3

    .prologue
    .line 17647
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$c$a;->g()V

    .line 17648
    iget-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->x:Ljava/util/List;

    .line 27602
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$j$a;->d()Lcom/tapjoy/internal/gl$j;

    move-result-object v1

    .line 27603
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$j;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 28316
    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    .line 27604
    throw v0

    .line 17648
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17650
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gl$p$a;)Lcom/tapjoy/internal/gl$c$a;
    .locals 2

    .prologue
    .line 17309
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$p$a;->d()Lcom/tapjoy/internal/gl$p;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->l:Lcom/tapjoy/internal/gl$p;

    .line 17311
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 17312
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;
    .locals 2

    .prologue
    .line 17248
    if-nez p1, :cond_0

    .line 17249
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17251
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 17252
    iput-object p1, p0, Lcom/tapjoy/internal/gl$c$a;->w:Ljava/lang/Object;

    .line 17254
    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    .prologue
    .line 16087
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$c$a;->f()Lcom/tapjoy/internal/gl$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/tapjoy/internal/gl$c$a;
    .locals 2

    .prologue
    .line 17785
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 17786
    iput p1, p0, Lcom/tapjoy/internal/gl$c$a;->y:I

    .line 17788
    return-object p0
.end method

.method public final b(J)Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 16608
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 16609
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$c$a;->q:J

    .line 16611
    return-object p0
.end method

.method public final c(J)Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 16716
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 16717
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$c$a;->r:J

    .line 16719
    return-object p0
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16390
    .line 26453
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_1

    move v0, v3

    .line 16390
    :goto_0
    if-nez v0, :cond_2

    .line 16426
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 26453
    goto :goto_0

    .line 26488
    :cond_2
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    move v0, v3

    .line 16394
    :goto_2
    if-eqz v0, :cond_0

    .line 26564
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    move v0, v3

    .line 16398
    :goto_3
    if-eqz v0, :cond_0

    .line 26888
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_8

    move v0, v3

    .line 16402
    :goto_4
    if-eqz v0, :cond_3

    .line 26894
    iget-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->i:Lcom/tapjoy/internal/gl$z;

    .line 16403
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27012
    :cond_3
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_9

    move v0, v3

    .line 16408
    :goto_5
    if-eqz v0, :cond_4

    .line 27018
    iget-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->j:Lcom/tapjoy/internal/gl$f;

    .line 16409
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27072
    :cond_4
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    move v0, v3

    .line 16414
    :goto_6
    if-eqz v0, :cond_5

    .line 27078
    iget-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->k:Lcom/tapjoy/internal/gl$r;

    .line 16415
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$r;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    move v1, v2

    .line 27586
    :goto_7
    iget-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 16420
    if-ge v1, v0, :cond_b

    .line 27592
    iget-object v0, p0, Lcom/tapjoy/internal/gl$c$a;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$j;

    .line 16421
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16420
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_6
    move v0, v2

    .line 26488
    goto :goto_2

    :cond_7
    move v0, v2

    .line 26564
    goto :goto_3

    :cond_8
    move v0, v2

    .line 26888
    goto :goto_4

    :cond_9
    move v0, v2

    .line 27012
    goto :goto_5

    :cond_a
    move v0, v2

    .line 27072
    goto :goto_6

    :cond_b
    move v2, v3

    .line 16426
    goto :goto_1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16087
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$c$a;->f()Lcom/tapjoy/internal/gl$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final d(J)Lcom/tapjoy/internal/gl$c$a;
    .locals 1

    .prologue
    .line 16748
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 16749
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$c$a;->s:J

    .line 16751
    return-object p0
.end method

.method public final d()Lcom/tapjoy/internal/gl$c;
    .locals 11

    .prologue
    const/high16 v10, 0x80000

    const/high16 v9, 0x40000

    const/high16 v8, 0x20000

    const/high16 v7, 0x10000

    const v6, 0x8000

    .line 16176
    new-instance v1, Lcom/tapjoy/internal/gl$c;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/tapjoy/internal/gl$c;-><init>(Lcom/tapjoy/internal/do$a;B)V

    .line 16177
    iget v2, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 16178
    const/4 v0, 0x0

    .line 16179
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 16180
    const/4 v0, 0x1

    .line 16182
    :cond_0
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->c:Lcom/tapjoy/internal/gl$i;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$i;

    .line 16183
    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 16184
    or-int/lit8 v0, v0, 0x2

    .line 16186
    :cond_1
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->d:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16187
    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 16188
    or-int/lit8 v0, v0, 0x4

    .line 16190
    :cond_2
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$c$a;->e:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;J)J

    .line 16191
    and-int/lit8 v3, v2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 16192
    or-int/lit8 v0, v0, 0x8

    .line 16194
    :cond_3
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$c$a;->q:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$c;->b(Lcom/tapjoy/internal/gl$c;J)J

    .line 16195
    and-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 16196
    or-int/lit8 v0, v0, 0x10

    .line 16198
    :cond_4
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->f:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->b(Lcom/tapjoy/internal/gl$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16199
    and-int/lit8 v3, v2, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 16200
    or-int/lit8 v0, v0, 0x20

    .line 16202
    :cond_5
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$c$a;->r:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$c;->c(Lcom/tapjoy/internal/gl$c;J)J

    .line 16203
    and-int/lit8 v3, v2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 16204
    or-int/lit8 v0, v0, 0x40

    .line 16206
    :cond_6
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$c$a;->s:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$c;->d(Lcom/tapjoy/internal/gl$c;J)J

    .line 16207
    and-int/lit16 v3, v2, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 16208
    or-int/lit16 v0, v0, 0x80

    .line 16210
    :cond_7
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->g:Lcom/tapjoy/internal/gl$l;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Lcom/tapjoy/internal/gl$l;)Lcom/tapjoy/internal/gl$l;

    .line 16211
    and-int/lit16 v3, v2, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 16212
    or-int/lit16 v0, v0, 0x100

    .line 16214
    :cond_8
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->h:Lcom/tapjoy/internal/gl$a;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Lcom/tapjoy/internal/gl$a;)Lcom/tapjoy/internal/gl$a;

    .line 16215
    and-int/lit16 v3, v2, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 16216
    or-int/lit16 v0, v0, 0x200

    .line 16218
    :cond_9
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->i:Lcom/tapjoy/internal/gl$z;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Lcom/tapjoy/internal/gl$z;)Lcom/tapjoy/internal/gl$z;

    .line 16219
    and-int/lit16 v3, v2, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 16220
    or-int/lit16 v0, v0, 0x400

    .line 16222
    :cond_a
    iget v3, p0, Lcom/tapjoy/internal/gl$c$a;->t:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;I)I

    .line 16223
    and-int/lit16 v3, v2, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 16224
    or-int/lit16 v0, v0, 0x800

    .line 16226
    :cond_b
    iget v3, p0, Lcom/tapjoy/internal/gl$c$a;->u:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->b(Lcom/tapjoy/internal/gl$c;I)I

    .line 16227
    and-int/lit16 v3, v2, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 16228
    or-int/lit16 v0, v0, 0x1000

    .line 16230
    :cond_c
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->j:Lcom/tapjoy/internal/gl$f;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/gl$f;

    .line 16231
    and-int/lit16 v3, v2, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 16232
    or-int/lit16 v0, v0, 0x2000

    .line 16234
    :cond_d
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->k:Lcom/tapjoy/internal/gl$r;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Lcom/tapjoy/internal/gl$r;)Lcom/tapjoy/internal/gl$r;

    .line 16235
    and-int/lit16 v3, v2, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 16236
    or-int/lit16 v0, v0, 0x4000

    .line 16238
    :cond_e
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->v:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->c(Lcom/tapjoy/internal/gl$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16239
    and-int v3, v2, v6

    if-ne v3, v6, :cond_f

    .line 16240
    or-int/2addr v0, v6

    .line 16242
    :cond_f
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->w:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->d(Lcom/tapjoy/internal/gl$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16243
    and-int v3, v2, v7

    if-ne v3, v7, :cond_10

    .line 16244
    or-int/2addr v0, v7

    .line 16246
    :cond_10
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->l:Lcom/tapjoy/internal/gl$p;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/gl$p;

    .line 16247
    and-int v3, v2, v8

    if-ne v3, v8, :cond_11

    .line 16248
    or-int/2addr v0, v8

    .line 16250
    :cond_11
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->m:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->e(Lcom/tapjoy/internal/gl$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16251
    and-int v3, v2, v9

    if-ne v3, v9, :cond_12

    .line 16252
    or-int/2addr v0, v9

    .line 16254
    :cond_12
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->n:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->f(Lcom/tapjoy/internal/gl$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16255
    and-int v3, v2, v10

    if-ne v3, v10, :cond_13

    .line 16256
    or-int/2addr v0, v10

    .line 16258
    :cond_13
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->o:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->g(Lcom/tapjoy/internal/gl$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16259
    iget v3, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_14

    .line 16260
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->x:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->x:Ljava/util/List;

    .line 16261
    iget v3, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const v4, -0x100001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 16263
    :cond_14
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->x:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->a(Lcom/tapjoy/internal/gl$c;Ljava/util/List;)Ljava/util/List;

    .line 16264
    const/high16 v3, 0x200000

    and-int/2addr v3, v2

    const/high16 v4, 0x200000

    if-ne v3, v4, :cond_15

    .line 16265
    const/high16 v3, 0x100000

    or-int/2addr v0, v3

    .line 16267
    :cond_15
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c$a;->p:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->h(Lcom/tapjoy/internal/gl$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16268
    const/high16 v3, 0x400000

    and-int/2addr v3, v2

    const/high16 v4, 0x400000

    if-ne v3, v4, :cond_16

    .line 16269
    const/high16 v3, 0x200000

    or-int/2addr v0, v3

    .line 16271
    :cond_16
    iget v3, p0, Lcom/tapjoy/internal/gl$c$a;->y:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gl$c;->c(Lcom/tapjoy/internal/gl$c;I)I

    .line 16272
    const/high16 v3, 0x800000

    and-int/2addr v3, v2

    const/high16 v4, 0x800000

    if-ne v3, v4, :cond_17

    .line 16273
    const/high16 v3, 0x400000

    or-int/2addr v0, v3

    .line 16275
    :cond_17
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$c$a;->z:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gl$c;->e(Lcom/tapjoy/internal/gl$c;J)J

    .line 16276
    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_18

    .line 16277
    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    .line 16279
    :cond_18
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$c$a;->A:J

    invoke-static {v1, v2, v3}, Lcom/tapjoy/internal/gl$c;->f(Lcom/tapjoy/internal/gl$c;J)J

    .line 16280
    invoke-static {v1, v0}, Lcom/tapjoy/internal/gl$c;->d(Lcom/tapjoy/internal/gl$c;I)I

    .line 16281
    return-object v1
.end method

.method public final e(J)Lcom/tapjoy/internal/gl$c$a;
    .locals 3

    .prologue
    .line 17817
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 17818
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$c$a;->z:J

    .line 17820
    return-object p0
.end method

.method public final f(J)Lcom/tapjoy/internal/gl$c$a;
    .locals 3

    .prologue
    .line 17849
    iget v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 17850
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$c$a;->A:J

    .line 17852
    return-object p0
.end method

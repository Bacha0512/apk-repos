.class public final Lcom/tapjoy/internal/gd$c$a;
.super Lcom/tapjoy/internal/do$a;

# interfaces
.implements Lcom/tapjoy/internal/gd$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:I

.field public c:Lcom/tapjoy/internal/gd$i;

.field public d:Ljava/lang/Object;

.field public e:J

.field public f:Ljava/lang/Object;

.field public g:Lcom/tapjoy/internal/gd$l;

.field public h:Lcom/tapjoy/internal/gd$a;

.field public i:Lcom/tapjoy/internal/gd$z;

.field public j:Lcom/tapjoy/internal/gd$f;

.field public k:Lcom/tapjoy/internal/gd$r;

.field public l:Lcom/tapjoy/internal/gd$p;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Object;

.field public p:Ljava/util/List;

.field private q:J

.field private r:J

.field private s:J

.field private t:I

.field private u:I

.field private v:Ljava/lang/Object;

.field private w:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    sget-object v0, Lcom/tapjoy/internal/gd$i;->a:Lcom/tapjoy/internal/gd$i;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->c:Lcom/tapjoy/internal/gd$i;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->d:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->f:Ljava/lang/Object;

    invoke-static {}, Lcom/tapjoy/internal/gd$l;->d()Lcom/tapjoy/internal/gd$l;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->g:Lcom/tapjoy/internal/gd$l;

    invoke-static {}, Lcom/tapjoy/internal/gd$a;->d()Lcom/tapjoy/internal/gd$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->h:Lcom/tapjoy/internal/gd$a;

    invoke-static {}, Lcom/tapjoy/internal/gd$z;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->i:Lcom/tapjoy/internal/gd$z;

    invoke-static {}, Lcom/tapjoy/internal/gd$f;->d()Lcom/tapjoy/internal/gd$f;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->j:Lcom/tapjoy/internal/gd$f;

    invoke-static {}, Lcom/tapjoy/internal/gd$r;->d()Lcom/tapjoy/internal/gd$r;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->k:Lcom/tapjoy/internal/gd$r;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->v:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->w:Ljava/lang/Object;

    invoke-static {}, Lcom/tapjoy/internal/gd$p;->d()Lcom/tapjoy/internal/gd$p;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->l:Lcom/tapjoy/internal/gd$p;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->m:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->n:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->o:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->p:Ljava/util/List;

    return-void
.end method

.method static synthetic f()Lcom/tapjoy/internal/gd$c$a;
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gd$c$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$c$a;-><init>()V

    return-object v0
.end method

.method private g()Lcom/tapjoy/internal/gd$c$a;
    .locals 6

    const/high16 v5, 0x10000

    new-instance v0, Lcom/tapjoy/internal/gd$c$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$c$a;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c$a;->d()Lcom/tapjoy/internal/gd$c;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/internal/gd$c;->d()Lcom/tapjoy/internal/gd$c;

    move-result-object v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/tapjoy/internal/gd$c;->c:Lcom/tapjoy/internal/gd$i;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/gd$c$a;->a(Lcom/tapjoy/internal/gd$i;)Lcom/tapjoy/internal/gd$c$a;

    :cond_1
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    invoke-static {v1}, Lcom/tapjoy/internal/gd$c;->a(Lcom/tapjoy/internal/gd$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->d:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, v1, Lcom/tapjoy/internal/gd$c;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/gd$c$a;->a(J)Lcom/tapjoy/internal/gd$c$a;

    :cond_3
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, v1, Lcom/tapjoy/internal/gd$c;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/gd$c$a;->b(J)Lcom/tapjoy/internal/gd$c$a;

    :cond_4
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    invoke-static {v1}, Lcom/tapjoy/internal/gd$c;->b(Lcom/tapjoy/internal/gd$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->f:Ljava/lang/Object;

    :cond_5
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->l()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-wide v2, v1, Lcom/tapjoy/internal/gd$c;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/gd$c$a;->c(J)Lcom/tapjoy/internal/gd$c$a;

    :cond_6
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->m()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-wide v2, v1, Lcom/tapjoy/internal/gd$c;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/gd$c$a;->d(J)Lcom/tapjoy/internal/gd$c$a;

    :cond_7
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->n()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/tapjoy/internal/gd$c;->h:Lcom/tapjoy/internal/gd$l;

    iget v3, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_16

    iget-object v3, v0, Lcom/tapjoy/internal/gd$c$a;->g:Lcom/tapjoy/internal/gd$l;

    invoke-static {}, Lcom/tapjoy/internal/gd$l;->d()Lcom/tapjoy/internal/gd$l;

    move-result-object v4

    if-eq v3, v4, :cond_16

    iget-object v3, v0, Lcom/tapjoy/internal/gd$c$a;->g:Lcom/tapjoy/internal/gd$l;

    invoke-static {v3}, Lcom/tapjoy/internal/gd$l;->a(Lcom/tapjoy/internal/gd$l;)Lcom/tapjoy/internal/gd$l$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gd$l$a;->a(Lcom/tapjoy/internal/gd$l;)Lcom/tapjoy/internal/gd$l$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$l$a;->d()Lcom/tapjoy/internal/gd$l;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->g:Lcom/tapjoy/internal/gd$l;

    :goto_1
    iget v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    :cond_8
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->o()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/tapjoy/internal/gd$c;->i:Lcom/tapjoy/internal/gd$a;

    iget v3, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_17

    iget-object v3, v0, Lcom/tapjoy/internal/gd$c$a;->h:Lcom/tapjoy/internal/gd$a;

    invoke-static {}, Lcom/tapjoy/internal/gd$a;->d()Lcom/tapjoy/internal/gd$a;

    move-result-object v4

    if-eq v3, v4, :cond_17

    iget-object v3, v0, Lcom/tapjoy/internal/gd$c$a;->h:Lcom/tapjoy/internal/gd$a;

    invoke-static {v3}, Lcom/tapjoy/internal/gd$a;->a(Lcom/tapjoy/internal/gd$a;)Lcom/tapjoy/internal/gd$a$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gd$a$a;->a(Lcom/tapjoy/internal/gd$a;)Lcom/tapjoy/internal/gd$a$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$a$a;->d()Lcom/tapjoy/internal/gd$a;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->h:Lcom/tapjoy/internal/gd$a;

    :goto_2
    iget v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    :cond_9
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->p()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/tapjoy/internal/gd$c;->j:Lcom/tapjoy/internal/gd$z;

    iget v3, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_18

    iget-object v3, v0, Lcom/tapjoy/internal/gd$c$a;->i:Lcom/tapjoy/internal/gd$z;

    invoke-static {}, Lcom/tapjoy/internal/gd$z;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v4

    if-eq v3, v4, :cond_18

    iget-object v3, v0, Lcom/tapjoy/internal/gd$c$a;->i:Lcom/tapjoy/internal/gd$z;

    invoke-static {v3}, Lcom/tapjoy/internal/gd$z;->a(Lcom/tapjoy/internal/gd$z;)Lcom/tapjoy/internal/gd$z$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gd$z$a;->a(Lcom/tapjoy/internal/gd$z;)Lcom/tapjoy/internal/gd$z$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$z$a;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->i:Lcom/tapjoy/internal/gd$z;

    :goto_3
    iget v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    :cond_a
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->q()Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, v1, Lcom/tapjoy/internal/gd$c;->k:I

    iget v3, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    iput v2, v0, Lcom/tapjoy/internal/gd$c$a;->t:I

    :cond_b
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->r()Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, v1, Lcom/tapjoy/internal/gd$c;->l:I

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/gd$c$a;->a(I)Lcom/tapjoy/internal/gd$c$a;

    :cond_c
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->s()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v1, Lcom/tapjoy/internal/gd$c;->m:Lcom/tapjoy/internal/gd$f;

    iget v3, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_19

    iget-object v3, v0, Lcom/tapjoy/internal/gd$c$a;->j:Lcom/tapjoy/internal/gd$f;

    invoke-static {}, Lcom/tapjoy/internal/gd$f;->d()Lcom/tapjoy/internal/gd$f;

    move-result-object v4

    if-eq v3, v4, :cond_19

    iget-object v3, v0, Lcom/tapjoy/internal/gd$c$a;->j:Lcom/tapjoy/internal/gd$f;

    invoke-static {v3}, Lcom/tapjoy/internal/gd$f;->a(Lcom/tapjoy/internal/gd$f;)Lcom/tapjoy/internal/gd$f$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gd$f$a;->a(Lcom/tapjoy/internal/gd$f;)Lcom/tapjoy/internal/gd$f$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$f$a;->d()Lcom/tapjoy/internal/gd$f;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->j:Lcom/tapjoy/internal/gd$f;

    :goto_4
    iget v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    :cond_d
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->t()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/tapjoy/internal/gd$c;->n:Lcom/tapjoy/internal/gd$r;

    iget v3, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_1a

    iget-object v3, v0, Lcom/tapjoy/internal/gd$c$a;->k:Lcom/tapjoy/internal/gd$r;

    invoke-static {}, Lcom/tapjoy/internal/gd$r;->d()Lcom/tapjoy/internal/gd$r;

    move-result-object v4

    if-eq v3, v4, :cond_1a

    iget-object v3, v0, Lcom/tapjoy/internal/gd$c$a;->k:Lcom/tapjoy/internal/gd$r;

    invoke-static {v3}, Lcom/tapjoy/internal/gd$r;->a(Lcom/tapjoy/internal/gd$r;)Lcom/tapjoy/internal/gd$r$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gd$r$a;->a(Lcom/tapjoy/internal/gd$r;)Lcom/tapjoy/internal/gd$r$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$r$a;->d()Lcom/tapjoy/internal/gd$r;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->k:Lcom/tapjoy/internal/gd$r;

    :goto_5
    iget v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    :cond_e
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->u()Z

    move-result v2

    if-eqz v2, :cond_f

    iget v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    invoke-static {v1}, Lcom/tapjoy/internal/gd$c;->c(Lcom/tapjoy/internal/gd$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->v:Ljava/lang/Object;

    :cond_f
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->w()Z

    move-result v2

    if-eqz v2, :cond_10

    iget v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    invoke-static {v1}, Lcom/tapjoy/internal/gd$c;->d(Lcom/tapjoy/internal/gd$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->w:Ljava/lang/Object;

    :cond_10
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->y()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v1, Lcom/tapjoy/internal/gd$c;->o:Lcom/tapjoy/internal/gd$p;

    iget v3, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_1b

    iget-object v3, v0, Lcom/tapjoy/internal/gd$c$a;->l:Lcom/tapjoy/internal/gd$p;

    invoke-static {}, Lcom/tapjoy/internal/gd$p;->d()Lcom/tapjoy/internal/gd$p;

    move-result-object v4

    if-eq v3, v4, :cond_1b

    iget-object v3, v0, Lcom/tapjoy/internal/gd$c$a;->l:Lcom/tapjoy/internal/gd$p;

    invoke-static {v3}, Lcom/tapjoy/internal/gd$p;->a(Lcom/tapjoy/internal/gd$p;)Lcom/tapjoy/internal/gd$p$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gd$p$a;->a(Lcom/tapjoy/internal/gd$p;)Lcom/tapjoy/internal/gd$p$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$p$a;->e()Lcom/tapjoy/internal/gd$p;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->l:Lcom/tapjoy/internal/gd$p;

    :goto_6
    iget v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/2addr v2, v5

    iput v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    :cond_11
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->z()Z

    move-result v2

    if-eqz v2, :cond_12

    iget v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    invoke-static {v1}, Lcom/tapjoy/internal/gd$c;->e(Lcom/tapjoy/internal/gd$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->m:Ljava/lang/Object;

    :cond_12
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->B()Z

    move-result v2

    if-eqz v2, :cond_13

    iget v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    const/high16 v3, 0x40000

    or-int/2addr v2, v3

    iput v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    invoke-static {v1}, Lcom/tapjoy/internal/gd$c;->f(Lcom/tapjoy/internal/gd$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->n:Ljava/lang/Object;

    :cond_13
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->D()Z

    move-result v2

    if-eqz v2, :cond_14

    iget v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    invoke-static {v1}, Lcom/tapjoy/internal/gd$c;->g(Lcom/tapjoy/internal/gd$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->o:Ljava/lang/Object;

    :cond_14
    invoke-static {v1}, Lcom/tapjoy/internal/gd$c;->h(Lcom/tapjoy/internal/gd$c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {v1}, Lcom/tapjoy/internal/gd$c;->h(Lcom/tapjoy/internal/gd$c;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->p:Ljava/util/List;

    iget v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    :cond_15
    :goto_7
    iget-object v2, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    invoke-static {v1}, Lcom/tapjoy/internal/gd$c;->i(Lcom/tapjoy/internal/gd$c;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto/16 :goto_0

    :cond_16
    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->g:Lcom/tapjoy/internal/gd$l;

    goto/16 :goto_1

    :cond_17
    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->h:Lcom/tapjoy/internal/gd$a;

    goto/16 :goto_2

    :cond_18
    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->i:Lcom/tapjoy/internal/gd$z;

    goto/16 :goto_3

    :cond_19
    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->j:Lcom/tapjoy/internal/gd$f;

    goto/16 :goto_4

    :cond_1a
    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->k:Lcom/tapjoy/internal/gd$r;

    goto/16 :goto_5

    :cond_1b
    iput-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->l:Lcom/tapjoy/internal/gd$p;

    goto/16 :goto_6

    :cond_1c
    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$c$a;->e()V

    iget-object v2, v0, Lcom/tapjoy/internal/gd$c$a;->p:Ljava/util/List;

    invoke-static {v1}, Lcom/tapjoy/internal/gd$c;->h(Lcom/tapjoy/internal/gd$c;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$c$a;->g()Lcom/tapjoy/internal/gd$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/tapjoy/internal/gd$c$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    iput p1, p0, Lcom/tapjoy/internal/gd$c$a;->u:I

    return-object p0
.end method

.method public final a(J)Lcom/tapjoy/internal/gd$c$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$c$a;->e:J

    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gd$i;)Lcom/tapjoy/internal/gd$c$a;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$c$a;->c:Lcom/tapjoy/internal/gd$i;

    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gd$p$a;)Lcom/tapjoy/internal/gd$c$a;
    .locals 2

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$p$a;->d()Lcom/tapjoy/internal/gd$p;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->l:Lcom/tapjoy/internal/gd$p;

    iget v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gd$c$a;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$c$a;->w:Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$c$a;->g()Lcom/tapjoy/internal/gd$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Lcom/tapjoy/internal/gd$c$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$c$a;->q:J

    return-object p0
.end method

.method public final c(J)Lcom/tapjoy/internal/gd$c$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$c$a;->r:J

    return-object p0
.end method

.method public final c()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_1

    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    move v0, v3

    :goto_2
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    move v0, v3

    :goto_3
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_8

    move v0, v3

    :goto_4
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->i:Lcom/tapjoy/internal/gd$z;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_9

    move v0, v3

    :goto_5
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->j:Lcom/tapjoy/internal/gd$f;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    iget v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    move v0, v3

    :goto_6
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->k:Lcom/tapjoy/internal/gd$r;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$r;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    move v1, v2

    :goto_7
    iget-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    iget-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gd$j;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_5

    :cond_a
    move v0, v2

    goto :goto_6

    :cond_b
    move v2, v3

    goto :goto_1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$c$a;->g()Lcom/tapjoy/internal/gd$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final d(J)Lcom/tapjoy/internal/gd$c$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$c$a;->s:J

    return-object p0
.end method

.method public final d()Lcom/tapjoy/internal/gd$c;
    .locals 11

    const/high16 v10, 0x80000

    const/high16 v9, 0x40000

    const/high16 v8, 0x20000

    const/high16 v7, 0x10000

    const v6, 0x8000

    new-instance v1, Lcom/tapjoy/internal/gd$c;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/tapjoy/internal/gd$c;-><init>(Lcom/tapjoy/internal/do$a;B)V

    iget v2, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    const/4 v0, 0x0

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v3, p0, Lcom/tapjoy/internal/gd$c$a;->c:Lcom/tapjoy/internal/gd$i;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$c;->a(Lcom/tapjoy/internal/gd$c;Lcom/tapjoy/internal/gd$i;)Lcom/tapjoy/internal/gd$i;

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget-object v3, p0, Lcom/tapjoy/internal/gd$c$a;->d:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$c;->a(Lcom/tapjoy/internal/gd$c;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    iget-wide v4, p0, Lcom/tapjoy/internal/gd$c$a;->e:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gd$c;->a(Lcom/tapjoy/internal/gd$c;J)J

    and-int/lit8 v3, v2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    iget-wide v4, p0, Lcom/tapjoy/internal/gd$c$a;->q:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gd$c;->b(Lcom/tapjoy/internal/gd$c;J)J

    and-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    or-int/lit8 v0, v0, 0x10

    :cond_4
    iget-object v3, p0, Lcom/tapjoy/internal/gd$c$a;->f:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$c;->b(Lcom/tapjoy/internal/gd$c;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    or-int/lit8 v0, v0, 0x20

    :cond_5
    iget-wide v4, p0, Lcom/tapjoy/internal/gd$c$a;->r:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gd$c;->c(Lcom/tapjoy/internal/gd$c;J)J

    and-int/lit8 v3, v2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    or-int/lit8 v0, v0, 0x40

    :cond_6
    iget-wide v4, p0, Lcom/tapjoy/internal/gd$c$a;->s:J

    invoke-static {v1, v4, v5}, Lcom/tapjoy/internal/gd$c;->d(Lcom/tapjoy/internal/gd$c;J)J

    and-int/lit16 v3, v2, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    or-int/lit16 v0, v0, 0x80

    :cond_7
    iget-object v3, p0, Lcom/tapjoy/internal/gd$c$a;->g:Lcom/tapjoy/internal/gd$l;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$c;->a(Lcom/tapjoy/internal/gd$c;Lcom/tapjoy/internal/gd$l;)Lcom/tapjoy/internal/gd$l;

    and-int/lit16 v3, v2, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    or-int/lit16 v0, v0, 0x100

    :cond_8
    iget-object v3, p0, Lcom/tapjoy/internal/gd$c$a;->h:Lcom/tapjoy/internal/gd$a;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$c;->a(Lcom/tapjoy/internal/gd$c;Lcom/tapjoy/internal/gd$a;)Lcom/tapjoy/internal/gd$a;

    and-int/lit16 v3, v2, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    or-int/lit16 v0, v0, 0x200

    :cond_9
    iget-object v3, p0, Lcom/tapjoy/internal/gd$c$a;->i:Lcom/tapjoy/internal/gd$z;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$c;->a(Lcom/tapjoy/internal/gd$c;Lcom/tapjoy/internal/gd$z;)Lcom/tapjoy/internal/gd$z;

    and-int/lit16 v3, v2, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    or-int/lit16 v0, v0, 0x400

    :cond_a
    iget v3, p0, Lcom/tapjoy/internal/gd$c$a;->t:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$c;->a(Lcom/tapjoy/internal/gd$c;I)I

    and-int/lit16 v3, v2, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    or-int/lit16 v0, v0, 0x800

    :cond_b
    iget v3, p0, Lcom/tapjoy/internal/gd$c$a;->u:I

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$c;->b(Lcom/tapjoy/internal/gd$c;I)I

    and-int/lit16 v3, v2, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    or-int/lit16 v0, v0, 0x1000

    :cond_c
    iget-object v3, p0, Lcom/tapjoy/internal/gd$c$a;->j:Lcom/tapjoy/internal/gd$f;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$c;->a(Lcom/tapjoy/internal/gd$c;Lcom/tapjoy/internal/gd$f;)Lcom/tapjoy/internal/gd$f;

    and-int/lit16 v3, v2, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    or-int/lit16 v0, v0, 0x2000

    :cond_d
    iget-object v3, p0, Lcom/tapjoy/internal/gd$c$a;->k:Lcom/tapjoy/internal/gd$r;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$c;->a(Lcom/tapjoy/internal/gd$c;Lcom/tapjoy/internal/gd$r;)Lcom/tapjoy/internal/gd$r;

    and-int/lit16 v3, v2, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    or-int/lit16 v0, v0, 0x4000

    :cond_e
    iget-object v3, p0, Lcom/tapjoy/internal/gd$c$a;->v:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$c;->c(Lcom/tapjoy/internal/gd$c;Ljava/lang/Object;)Ljava/lang/Object;

    and-int v3, v2, v6

    if-ne v3, v6, :cond_f

    or-int/2addr v0, v6

    :cond_f
    iget-object v3, p0, Lcom/tapjoy/internal/gd$c$a;->w:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$c;->d(Lcom/tapjoy/internal/gd$c;Ljava/lang/Object;)Ljava/lang/Object;

    and-int v3, v2, v7

    if-ne v3, v7, :cond_10

    or-int/2addr v0, v7

    :cond_10
    iget-object v3, p0, Lcom/tapjoy/internal/gd$c$a;->l:Lcom/tapjoy/internal/gd$p;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$c;->a(Lcom/tapjoy/internal/gd$c;Lcom/tapjoy/internal/gd$p;)Lcom/tapjoy/internal/gd$p;

    and-int v3, v2, v8

    if-ne v3, v8, :cond_11

    or-int/2addr v0, v8

    :cond_11
    iget-object v3, p0, Lcom/tapjoy/internal/gd$c$a;->m:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$c;->e(Lcom/tapjoy/internal/gd$c;Ljava/lang/Object;)Ljava/lang/Object;

    and-int v3, v2, v9

    if-ne v3, v9, :cond_12

    or-int/2addr v0, v9

    :cond_12
    iget-object v3, p0, Lcom/tapjoy/internal/gd$c$a;->n:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gd$c;->f(Lcom/tapjoy/internal/gd$c;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_13

    or-int/2addr v0, v10

    :cond_13
    iget-object v2, p0, Lcom/tapjoy/internal/gd$c$a;->o:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tapjoy/internal/gd$c;->g(Lcom/tapjoy/internal/gd$c;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    const/high16 v3, 0x100000

    if-ne v2, v3, :cond_14

    iget-object v2, p0, Lcom/tapjoy/internal/gd$c$a;->p:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/gd$c$a;->p:Ljava/util/List;

    iget v2, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    :cond_14
    iget-object v2, p0, Lcom/tapjoy/internal/gd$c$a;->p:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/tapjoy/internal/gd$c;->a(Lcom/tapjoy/internal/gd$c;Ljava/util/List;)Ljava/util/List;

    invoke-static {v1, v0}, Lcom/tapjoy/internal/gd$c;->c(Lcom/tapjoy/internal/gd$c;I)I

    return-object v1
.end method

.method public final e()V
    .locals 3

    const/high16 v2, 0x100000

    iget v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/gd$c$a;->p:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gd$c$a;->p:Ljava/util/List;

    iget v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/tapjoy/internal/gd$c$a;->b:I

    :cond_0
    return-void
.end method

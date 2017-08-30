.class public final Lcom/tapjoy/internal/gh;
.super Lcom/tapjoy/internal/ge;


# static fields
.field public static final n:Lcom/tapjoy/internal/bm;


# instance fields
.field public a:Lcom/tapjoy/internal/gk;

.field public b:Lcom/tapjoy/internal/gk;

.field public c:Lcom/tapjoy/internal/gk;

.field public d:Landroid/graphics/Point;

.field public e:Lcom/tapjoy/internal/gk;

.field public f:Lcom/tapjoy/internal/gk;

.field public g:Ljava/lang/String;

.field public h:Lcom/tapjoy/internal/ey;

.field public i:Ljava/util/ArrayList;

.field public j:Ljava/util/ArrayList;

.field public k:Ljava/util/Map;

.field public l:J

.field public m:Lcom/tapjoy/internal/gi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gh$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gh$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gh;->n:Lcom/tapjoy/internal/bm;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/ge;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/gh;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/gh;->j:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lcom/tapjoy/internal/br;)V
    .locals 10

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tapjoy/internal/ge;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/internal/gh;->i:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/internal/gh;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->h()V

    move-object v1, v0

    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v0

    const-string v3, "frame"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->h()V

    :goto_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v0

    const-string v3, "portrait"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Lcom/tapjoy/internal/gk;->c:Lcom/tapjoy/internal/bm;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gk;

    iput-object v0, p0, Lcom/tapjoy/internal/gh;->a:Lcom/tapjoy/internal/gk;

    goto :goto_1

    :cond_0
    const-string v3, "landscape"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/tapjoy/internal/gk;->c:Lcom/tapjoy/internal/bm;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gk;

    iput-object v0, p0, Lcom/tapjoy/internal/gh;->b:Lcom/tapjoy/internal/gk;

    goto :goto_1

    :cond_1
    const-string v3, "close_button"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Lcom/tapjoy/internal/gk;->c:Lcom/tapjoy/internal/bm;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gk;

    iput-object v0, p0, Lcom/tapjoy/internal/gh;->c:Lcom/tapjoy/internal/gk;

    goto :goto_1

    :cond_2
    const-string v3, "close_button_offset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tapjoy/internal/bn;->a:Lcom/tapjoy/internal/bm;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/tapjoy/internal/gh;->d:Landroid/graphics/Point;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->i()V

    goto :goto_0

    :cond_5
    const-string v3, "creative"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->h()V

    :goto_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v0

    const-string v3, "portrait"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v0, Lcom/tapjoy/internal/gk;->c:Lcom/tapjoy/internal/bm;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gk;

    iput-object v0, p0, Lcom/tapjoy/internal/gh;->e:Lcom/tapjoy/internal/gk;

    goto :goto_2

    :cond_6
    const-string v3, "landscape"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/tapjoy/internal/gk;->c:Lcom/tapjoy/internal/bm;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gk;

    iput-object v0, p0, Lcom/tapjoy/internal/gh;->f:Lcom/tapjoy/internal/gk;

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->i()V

    goto/16 :goto_0

    :cond_9
    const-string v3, "url"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gh;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    invoke-static {v0}, Lcom/tapjoy/internal/gb;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v0, p1}, Lcom/tapjoy/internal/gb;->a(Ljava/lang/String;Lcom/tapjoy/internal/br;)Lcom/tapjoy/internal/gb;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gh;->h:Lcom/tapjoy/internal/ey;

    goto/16 :goto_0

    :cond_b
    const-string v3, "mappings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->h()V

    :goto_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v0

    const-string v3, "portrait"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v0, p0, Lcom/tapjoy/internal/gh;->i:Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/internal/gg;->h:Lcom/tapjoy/internal/bm;

    invoke-virtual {p1, v0, v3}, Lcom/tapjoy/internal/br;->a(Ljava/util/List;Lcom/tapjoy/internal/bm;)V

    goto :goto_3

    :cond_c
    const-string v3, "landscape"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tapjoy/internal/gh;->j:Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/internal/gg;->h:Lcom/tapjoy/internal/bm;

    invoke-virtual {p1, v0, v3}, Lcom/tapjoy/internal/br;->a(Ljava/util/List;Lcom/tapjoy/internal/bm;)V

    goto :goto_3

    :cond_d
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto :goto_3

    :cond_e
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->i()V

    goto/16 :goto_0

    :cond_f
    const-string v3, "meta"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gh;->k:Ljava/util/Map;

    goto/16 :goto_0

    :cond_10
    const-string v3, "ttl"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->p()D

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v8

    double-to-long v4, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tapjoy/internal/gh;->l:J

    goto/16 :goto_0

    :cond_11
    const-string v3, "no_more_today"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v0, Lcom/tapjoy/internal/gi;->d:Lcom/tapjoy/internal/bm;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gi;

    iput-object v0, p0, Lcom/tapjoy/internal/gh;->m:Lcom/tapjoy/internal/gi;

    goto/16 :goto_0

    :cond_12
    const-string v3, "ad_content"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_13
    const-string v3, "redirect_url"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->b()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->i()V

    iget-object v0, p0, Lcom/tapjoy/internal/gh;->g:Ljava/lang/String;

    if-nez v0, :cond_16

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gh;->g:Ljava/lang/String;

    :cond_16
    iget-object v0, p0, Lcom/tapjoy/internal/gh;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/tapjoy/internal/gh;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gg;

    iget-object v4, v0, Lcom/tapjoy/internal/gg;->f:Ljava/lang/String;

    if-nez v4, :cond_18

    iput-object v1, v0, Lcom/tapjoy/internal/gg;->f:Ljava/lang/String;

    :cond_18
    iget-object v4, v0, Lcom/tapjoy/internal/gg;->e:Ljava/lang/String;

    if-nez v4, :cond_17

    iput-object v2, v0, Lcom/tapjoy/internal/gg;->e:Ljava/lang/String;

    goto :goto_4

    :cond_19
    iget-object v0, p0, Lcom/tapjoy/internal/gh;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/tapjoy/internal/gh;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gg;

    iget-object v4, v0, Lcom/tapjoy/internal/gg;->f:Ljava/lang/String;

    if-nez v4, :cond_1b

    iput-object v1, v0, Lcom/tapjoy/internal/gg;->f:Ljava/lang/String;

    :cond_1b
    iget-object v4, v0, Lcom/tapjoy/internal/gg;->e:Ljava/lang/String;

    if-nez v4, :cond_1a

    iput-object v2, v0, Lcom/tapjoy/internal/gg;->e:Ljava/lang/String;

    goto :goto_5

    :cond_1c
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gh;->c:Lcom/tapjoy/internal/gk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gh;->a:Lcom/tapjoy/internal/gk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gh;->e:Lcom/tapjoy/internal/gk;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gh;->c:Lcom/tapjoy/internal/gk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gh;->b:Lcom/tapjoy/internal/gk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gh;->f:Lcom/tapjoy/internal/gk;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

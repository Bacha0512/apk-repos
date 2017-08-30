.class public final Lcom/tapjoy/internal/gn;
.super Ljava/lang/Object;


# static fields
.field public static final d:Lcom/tapjoy/internal/bm;


# instance fields
.field public a:Lcom/tapjoy/internal/af;

.field public b:Landroid/graphics/PointF;

.field public c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gn$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gn$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gn;->d:Lcom/tapjoy/internal/bm;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/br;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tapjoy/internal/af;->a:Lcom/tapjoy/internal/af;

    iput-object v0, p0, Lcom/tapjoy/internal/gn;->a:Lcom/tapjoy/internal/af;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/gn;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->h()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buttons"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->k()Lcom/tapjoy/internal/bw;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bw;->a:Lcom/tapjoy/internal/bw;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/gn;->c:Ljava/util/ArrayList;

    sget-object v1, Lcom/tapjoy/internal/gm;->n:Lcom/tapjoy/internal/bm;

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/br;->a(Ljava/util/List;Lcom/tapjoy/internal/bm;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto :goto_0

    :cond_3
    const-string v1, "window_aspect_ratio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->h()V

    :goto_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->p()D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :cond_4
    const-string v2, "height"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->p()D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->i()V

    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/tapjoy/internal/gn;->b:Landroid/graphics/PointF;

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto/16 :goto_0

    :cond_8
    const-string v1, "orientation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lcom/tapjoy/internal/af;->c:Lcom/tapjoy/internal/af;

    iput-object v0, p0, Lcom/tapjoy/internal/gn;->a:Lcom/tapjoy/internal/af;

    goto/16 :goto_0

    :cond_9
    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    iput-object v0, p0, Lcom/tapjoy/internal/gn;->a:Lcom/tapjoy/internal/af;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->i()V

    return-void
.end method

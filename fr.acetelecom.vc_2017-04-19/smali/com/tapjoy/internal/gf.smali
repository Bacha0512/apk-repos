.class public final Lcom/tapjoy/internal/gf;
.super Lcom/tapjoy/internal/ge;


# static fields
.field public static final d:Lcom/tapjoy/internal/bm;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Ljava/util/Map;

.field public c:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gf$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gf$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gf;->d:Lcom/tapjoy/internal/bm;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/br;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tapjoy/internal/ge;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->h()V

    move-object v1, v0

    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v0

    const-string v3, "layouts"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/internal/gn;->d:Lcom/tapjoy/internal/bm;

    invoke-virtual {p1, v0, v3}, Lcom/tapjoy/internal/br;->a(Ljava/util/List;Lcom/tapjoy/internal/bm;)V

    goto :goto_0

    :cond_0
    const-string v3, "meta"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->b:Ljava/util/Map;

    goto :goto_0

    :cond_1
    const-string v3, "max_show_time"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->p()D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lcom/tapjoy/internal/gf;->c:F

    goto :goto_0

    :cond_2
    const-string v3, "ad_content"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->b()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_3
    const-string v3, "redirect_url"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->i()V

    iget-object v0, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gn;

    iget-object v4, v0, Lcom/tapjoy/internal/gn;->c:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    iget-object v0, v0, Lcom/tapjoy/internal/gn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gm;

    iget-object v5, v0, Lcom/tapjoy/internal/gm;->i:Ljava/lang/String;

    if-nez v5, :cond_8

    iput-object v2, v0, Lcom/tapjoy/internal/gm;->i:Ljava/lang/String;

    :cond_8
    iget-object v5, v0, Lcom/tapjoy/internal/gm;->h:Ljava/lang/String;

    if-nez v5, :cond_7

    iput-object v1, v0, Lcom/tapjoy/internal/gm;->h:Ljava/lang/String;

    goto :goto_1

    :cond_9
    return-void
.end method

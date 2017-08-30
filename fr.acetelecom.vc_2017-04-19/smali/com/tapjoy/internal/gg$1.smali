.class final Lcom/tapjoy/internal/gg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/bm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;
    .locals 9

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->h()V

    move-object v6, v7

    move-object v5, v7

    move-object v2, v7

    move-object v1, v7

    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v0

    const-string v8, "region"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v0, Lcom/tapjoy/internal/bn;->b:Lcom/tapjoy/internal/bm;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v8, "value"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v8, "dismiss"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->n()Z

    move-result v3

    goto :goto_0

    :cond_2
    const-string v8, "url"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const-string v8, "redirect_url"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->b()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_4
    const-string v8, "ad_content"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->b()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/tapjoy/internal/gb;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v0, p1}, Lcom/tapjoy/internal/gb;->a(Ljava/lang/String;Lcom/tapjoy/internal/br;)Lcom/tapjoy/internal/gb;

    move-result-object v7

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->i()V

    new-instance v0, Lcom/tapjoy/internal/gg;

    invoke-direct/range {v0 .. v7}, Lcom/tapjoy/internal/gg;-><init>(Landroid/graphics/Rect;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/ey;)V

    return-object v0
.end method

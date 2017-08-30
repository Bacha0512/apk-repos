.class final Lcom/tapjoy/internal/gj$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/bm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gj;
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
    .locals 4

    const-string v1, ""

    const-string v0, ""

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->h()V

    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v2

    const-string v3, "campaign_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/br;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v3, "product_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/br;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->i()V

    new-instance v2, Lcom/tapjoy/internal/gj;

    invoke-direct {v2, v1, v0}, Lcom/tapjoy/internal/gj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

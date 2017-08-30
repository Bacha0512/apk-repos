.class public final Lcom/tapjoy/internal/h;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/tapjoy/internal/br;->b(Ljava/lang/String;)Lcom/tapjoy/internal/br;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/br;->h()V

    :goto_0
    invoke-virtual {v0}, Lcom/tapjoy/internal/br;->j()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "orderId"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/h;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "packageName"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/h;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, "productId"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/h;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, "purchaseTime"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/tapjoy/internal/br;->q()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tapjoy/internal/h;->d:J

    goto :goto_0

    :cond_3
    const-string v2, "purchaseState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/tapjoy/internal/br;->r()I

    move-result v1

    iput v1, p0, Lcom/tapjoy/internal/h;->e:I

    goto :goto_0

    :cond_4
    const-string v2, "developerPayload"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/h;->f:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v2, "purchaseToken"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/h;->g:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/tapjoy/internal/br;->s()V

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/tapjoy/internal/br;->i()V

    return-void
.end method

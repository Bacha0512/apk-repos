.class public final Lcom/tapjoy/internal/gc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gc$1;
    }
.end annotation


# direct methods
.method public static a(Lcom/tapjoy/internal/gd$a;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/tapjoy/internal/bl;

    invoke-direct {v0}, Lcom/tapjoy/internal/bl;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pkg_ver"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$a;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "pkg_rev"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/internal/gd$a;->c:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$a;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "data_ver"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$a;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "installer"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$a;->l()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "store"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_4
    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/tapjoy/internal/gd$c;ZZZ)Ljava/lang/String;
    .locals 8

    new-instance v0, Lcom/tapjoy/internal/bl;

    invoke-direct {v0}, Lcom/tapjoy/internal/bl;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/gd$c;->c:Lcom/tapjoy/internal/gd$i;

    invoke-static {v1}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/gd$i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    const-string v0, "time"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->i()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$c;->d:J

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    const-string v0, "systime"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$c;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "duration"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$c;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "info"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/gd$c;->h:Lcom/tapjoy/internal/gd$l;

    invoke-static {v3}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/gd$l;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->a(Lcom/tapjoy/internal/bp;)Lcom/tapjoy/internal/bl;

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "app"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/gd$c;->i:Lcom/tapjoy/internal/gd$a;

    invoke-static {v3}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/gd$a;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->a(Lcom/tapjoy/internal/bp;)Lcom/tapjoy/internal/bl;

    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "user"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/gd$c;->j:Lcom/tapjoy/internal/gd$z;

    invoke-static {v3, p0}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/gd$z;Lcom/tapjoy/internal/gd$c;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->a(Lcom/tapjoy/internal/bp;)Lcom/tapjoy/internal/bl;

    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "event_seq"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget v2, p0, Lcom/tapjoy/internal/gd$c;->l:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_4
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->s()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "event_prev"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/gd$c;->m:Lcom/tapjoy/internal/gd$f;

    new-instance v4, Lcom/tapjoy/internal/bl;

    invoke-direct {v4}, Lcom/tapjoy/internal/bl;-><init>()V

    invoke-virtual {v4}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v4

    iget-object v5, v3, Lcom/tapjoy/internal/gd$f;->c:Lcom/tapjoy/internal/gd$i;

    invoke-static {v5}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/gd$i;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$f;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$f;->h()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "category"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$f;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_5
    invoke-virtual {v4}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tapjoy/internal/bl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->a(Lcom/tapjoy/internal/bp;)Lcom/tapjoy/internal/bl;

    :cond_6
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->t()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "purchase"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/gd$c;->n:Lcom/tapjoy/internal/gd$r;

    new-instance v4, Lcom/tapjoy/internal/bl;

    invoke-direct {v4}, Lcom/tapjoy/internal/bl;-><init>()V

    invoke-virtual {v4}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    move-result-object v4

    const-string v5, "product_id"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->g()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "product_quantity"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    iget v6, v3, Lcom/tapjoy/internal/gd$r;->c:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_7
    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->h()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "product_price"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    iget-wide v6, v3, Lcom/tapjoy/internal/gd$r;->d:D

    invoke-virtual {v5, v6, v7}, Lcom/tapjoy/internal/bl;->a(D)Lcom/tapjoy/internal/bl;

    :cond_8
    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->i()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "product_price_currency"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_9
    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->w()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "currency_price"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_a
    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->k()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "product_type"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_b
    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->m()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "product_title"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_c
    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->o()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "product_description"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_d
    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->q()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "transaction_id"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_e
    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->s()Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "transaction_state"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    iget v6, v3, Lcom/tapjoy/internal/gd$r;->e:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_f
    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->t()Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "transaction_date"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    iget-wide v6, v3, Lcom/tapjoy/internal/gd$r;->f:J

    invoke-virtual {v5, v6, v7}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_10
    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->u()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "campaign_id"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_11
    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->y()Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "receipt"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->z()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_12
    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->A()Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "signature"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$r;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_13
    invoke-virtual {v4}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tapjoy/internal/bl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->a(Lcom/tapjoy/internal/bp;)Lcom/tapjoy/internal/bl;

    :cond_14
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->u()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "exception"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_15
    :try_start_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->y()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->w()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/br;->b(Ljava/lang/String;)Lcom/tapjoy/internal/br;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/br;->a(Ljava/util/Map;)V

    :cond_16
    iget-object v2, p0, Lcom/tapjoy/internal/gd$c;->o:Lcom/tapjoy/internal/gd$p;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$p;->e()Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "fq7_change"

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$p;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$p;->g()Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "fq30_change"

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$p;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$p;->i()Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "push_id"

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$p;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const-string v2, "meta"

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/util/Map;)Lcom/tapjoy/internal/bl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1a
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->z()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "category"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_1b
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->B()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "p1"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_1c
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->D()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "p2"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_1d
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->F()I

    move-result v0

    if-lez v0, :cond_22

    const-string v0, "values"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    iget-object v0, p0, Lcom/tapjoy/internal/gd$c;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gd$j;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$j;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v3

    iget-wide v4, v0, Lcom/tapjoy/internal/gd$j;->c:J

    invoke-virtual {v3, v4, v5}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    goto :goto_2

    :cond_1e
    invoke-static {}, Lcom/tapjoy/internal/y;->c()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->j()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->l()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/tapjoy/internal/fp;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$c;->f:J

    invoke-static {v2, v3}, Lcom/tapjoy/internal/y;->a(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    const-string v0, "systime"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$c;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    goto/16 :goto_0

    :cond_1f
    iget-wide v2, p0, Lcom/tapjoy/internal/gd$c;->d:J

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    goto/16 :goto_0

    :cond_20
    :try_start_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->w()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "meta"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bq;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$c;->x()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->a(Lcom/tapjoy/internal/bp;)Lcom/tapjoy/internal/bl;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_21
    invoke-virtual {v1}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    :cond_22
    invoke-virtual {v1}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/tapjoy/internal/gd$d;)Ljava/lang/String;
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/tapjoy/internal/bl;

    invoke-direct {v0}, Lcom/tapjoy/internal/bl;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->a()Lcom/tapjoy/internal/bl;

    move-result-object v9

    iget-object v0, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v4, v1

    move-object v5, v1

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gd$c;

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$c;->n()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/tapjoy/internal/gd$c;->h:Lcom/tapjoy/internal/gd$l;

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/gd$l;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_0
    iget-object v6, v0, Lcom/tapjoy/internal/gd$c;->h:Lcom/tapjoy/internal/gd$l;

    move v8, v3

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$c;->o()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/tapjoy/internal/gd$c;->i:Lcom/tapjoy/internal/gd$a;

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/gd$a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_1
    iget-object v5, v0, Lcom/tapjoy/internal/gd$c;->i:Lcom/tapjoy/internal/gd$a;

    move v7, v3

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$c;->p()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/tapjoy/internal/gd$c;->j:Lcom/tapjoy/internal/gd$z;

    invoke-virtual {v1, v4}, Lcom/tapjoy/internal/gd$z;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_2
    iget-object v1, v0, Lcom/tapjoy/internal/gd$c;->j:Lcom/tapjoy/internal/gd$z;

    move-object v4, v1

    move v1, v3

    :goto_3
    new-instance v11, Lcom/tapjoy/internal/bq;

    invoke-static {v0, v8, v7, v1}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/gd$c;ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lcom/tapjoy/internal/bl;->a(Lcom/tapjoy/internal/bp;)Lcom/tapjoy/internal/bl;

    move-object v1, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_0

    :cond_3
    move v8, v2

    move-object v6, v5

    goto :goto_1

    :cond_4
    move v7, v2

    move-object v5, v4

    goto :goto_2

    :cond_5
    move-object v4, v1

    move v1, v2

    goto :goto_3

    :cond_6
    invoke-virtual {v9}, Lcom/tapjoy/internal/bl;->b()Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/tapjoy/internal/gd$i;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/tapjoy/internal/gc$1;->a:[I

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_0
    const-string v0, "app"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "campaign"

    goto :goto_0

    :pswitch_2
    const-string v0, "custom"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/tapjoy/internal/gd$l;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/tapjoy/internal/bl;

    invoke-direct {v0}, Lcom/tapjoy/internal/bl;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "os_name"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "os_ver"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "device_id"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "device_maker"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "device_model"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "pkg_id"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "pkg_sign"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "display_d"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget v1, p0, Lcom/tapjoy/internal/gd$l;->c:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "display_w"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget v1, p0, Lcom/tapjoy/internal/gd$l;->d:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "display_h"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget v1, p0, Lcom/tapjoy/internal/gd$l;->e:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "timezone"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mac"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "country_sim"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->F()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "country_net"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->H()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "imei"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$l;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_3
    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/tapjoy/internal/gd$z;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/gd$z;Lcom/tapjoy/internal/gd$c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/tapjoy/internal/gd$z;Lcom/tapjoy/internal/gd$c;)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x1

    const-wide/16 v6, 0x1

    new-instance v0, Lcom/tapjoy/internal/bl;

    invoke-direct {v0}, Lcom/tapjoy/internal/bl;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "installed"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$z;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "referrer"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "idfa"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tapjoy/internal/gd$z;->o:Z

    if-eqz v0, :cond_2

    const-string v0, "idfa_optout"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "fq7"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget v2, p0, Lcom/tapjoy/internal/gd$z;->d:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "fq30"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget v2, p0, Lcom/tapjoy/internal/gd$z;->e:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_4
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->j()I

    move-result v0

    if-lez v0, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->j()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/tapjoy/internal/gd$z;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gd$t;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$t;->h()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$t;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$c;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tapjoy/internal/fp;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tapjoy/internal/ga;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "idfa"

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    invoke-static {}, Lcom/tapjoy/internal/ga;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "idfa_optout"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "push"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->a()Lcom/tapjoy/internal/bl;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Lcom/tapjoy/internal/bl;->b()Lcom/tapjoy/internal/bl;

    :cond_9
    const-string v0, "session"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "total_count"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget v2, p0, Lcom/tapjoy/internal/gd$z;->g:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_a
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->l()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "total_length"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$z;->h:J

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_b
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "last_at"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$z;->i:J

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_c
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->n()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "last_length"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$z;->j:J

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_d
    invoke-virtual {v1}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    const-string v0, "purchase"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "currency"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_e
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->q()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "total_count"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget v2, p0, Lcom/tapjoy/internal/gd$z;->k:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_f
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->r()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "total_price"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$z;->l:D

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(D)Lcom/tapjoy/internal/bl;

    :cond_10
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->s()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "last_at"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$z;->m:J

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_11
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->t()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "last_price"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$z;->n:D

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(D)Lcom/tapjoy/internal/bl;

    :cond_12
    invoke-virtual {v1}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->x()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "user_id"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_13
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->z()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "user_level"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget v2, p0, Lcom/tapjoy/internal/gd$z;->p:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_14
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->A()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "friend_count"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget v2, p0, Lcom/tapjoy/internal/gd$z;->q:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_15
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->B()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "uv1"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_16
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->D()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "uv2"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_17
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->F()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "uv3"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_18
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->H()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "uv4"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_19
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->J()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "uv5"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    :cond_1a
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$z;->L()I

    move-result v0

    if-lez v0, :cond_1b

    const-string v0, "tags"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/gd$z;->r:Lcom/tapjoy/internal/ds;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->a(Ljava/util/Collection;)Lcom/tapjoy/internal/bl;

    :cond_1b
    iget-boolean v0, p0, Lcom/tapjoy/internal/gd$z;->s:Z

    if-eqz v0, :cond_1c

    const-string v0, "push_optout"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    :cond_1c
    invoke-virtual {v1}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

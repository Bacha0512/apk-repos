.class public final Lcom/tapjoy/internal/gk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gk$1;
    }
.end annotation


# direct methods
.method public static a(Lcom/tapjoy/internal/gl$a;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lcom/tapjoy/internal/bl;

    invoke-direct {v0}, Lcom/tapjoy/internal/bl;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "pkg_ver"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const-string v1, "pkg_rev"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    .line 19206
    iget v2, p0, Lcom/tapjoy/internal/gl$a;->c:I

    .line 65
    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    const-string v1, "data_ver"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    const-string v1, "installer"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->l()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    const-string v1, "store"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 76
    :cond_4
    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/tapjoy/internal/gl$c;ZZZ)Ljava/lang/String;
    .locals 8

    .prologue
    .line 263
    new-instance v0, Lcom/tapjoy/internal/bl;

    invoke-direct {v0}, Lcom/tapjoy/internal/bl;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 21898
    iget-object v1, p0, Lcom/tapjoy/internal/gl$c;->c:Lcom/tapjoy/internal/gl$i;

    .line 263
    invoke-static {v1}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    .line 267
    const-string v0, "time"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 268
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->i()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 21955
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$c;->d:J

    .line 269
    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 270
    const-string v0, "systime"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 21970
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$c;->e:J

    .line 270
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 279
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "duration"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 24042
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$c;->g:J

    .line 280
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 283
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    const-string v0, "info"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bq;

    .line 24057
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c;->h:Lcom/tapjoy/internal/gl$l;

    .line 284
    invoke-static {v3}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$l;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->a(Lcom/tapjoy/internal/bp;)Lcom/tapjoy/internal/bl;

    .line 286
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    const-string v0, "app"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bq;

    .line 24072
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c;->i:Lcom/tapjoy/internal/gl$a;

    .line 287
    invoke-static {v3}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$a;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->a(Lcom/tapjoy/internal/bp;)Lcom/tapjoy/internal/bl;

    .line 289
    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    const-string v0, "user"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bq;

    .line 24087
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c;->j:Lcom/tapjoy/internal/gl$z;

    .line 290
    invoke-static {v3, p0}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$z;Lcom/tapjoy/internal/gl$c;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->a(Lcom/tapjoy/internal/bp;)Lcom/tapjoy/internal/bl;

    .line 293
    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    const-string v0, "event_seq"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 24117
    iget v2, p0, Lcom/tapjoy/internal/gl$c;->l:I

    .line 294
    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 296
    :cond_4
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->s()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 297
    const-string v0, "event_prev"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bq;

    .line 24132
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c;->m:Lcom/tapjoy/internal/gl$f;

    .line 24248
    new-instance v4, Lcom/tapjoy/internal/bl;

    invoke-direct {v4}, Lcom/tapjoy/internal/bl;-><init>()V

    invoke-virtual {v4}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v4

    .line 24951
    iget-object v5, v3, Lcom/tapjoy/internal/gl$f;->c:Lcom/tapjoy/internal/gl$i;

    .line 24248
    invoke-static {v5}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$i;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$f;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v4

    .line 24251
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$f;->h()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 24252
    const-string v5, "category"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$f;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 24254
    :cond_5
    invoke-virtual {v4}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tapjoy/internal/bl;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->a(Lcom/tapjoy/internal/bp;)Lcom/tapjoy/internal/bl;

    .line 301
    :cond_6
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->t()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 302
    const-string v0, "purchase"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bq;

    .line 25147
    iget-object v3, p0, Lcom/tapjoy/internal/gl$c;->n:Lcom/tapjoy/internal/gl$r;

    .line 25203
    new-instance v4, Lcom/tapjoy/internal/bl;

    invoke-direct {v4}, Lcom/tapjoy/internal/bl;-><init>()V

    invoke-virtual {v4}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    move-result-object v4

    const-string v5, "product_id"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v4

    .line 25205
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->g()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 25206
    const-string v5, "product_quantity"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    .line 25298
    iget v6, v3, Lcom/tapjoy/internal/gl$r;->c:I

    .line 25206
    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 25208
    :cond_7
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->h()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 25209
    const-string v5, "product_price"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    .line 25313
    iget-wide v6, v3, Lcom/tapjoy/internal/gl$r;->d:D

    .line 25209
    invoke-virtual {v5, v6, v7}, Lcom/tapjoy/internal/bl;->a(D)Lcom/tapjoy/internal/bl;

    .line 25211
    :cond_8
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->i()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 25212
    const-string v5, "product_price_currency"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 25214
    :cond_9
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->w()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 25215
    const-string v5, "currency_price"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 25217
    :cond_a
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->k()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 25218
    const-string v5, "product_type"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 25220
    :cond_b
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->m()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 25221
    const-string v5, "product_title"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 25223
    :cond_c
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->o()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 25224
    const-string v5, "product_description"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 25226
    :cond_d
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->q()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 25227
    const-string v5, "transaction_id"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 25229
    :cond_e
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->s()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 25230
    const-string v5, "transaction_state"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    .line 25538
    iget v6, v3, Lcom/tapjoy/internal/gl$r;->e:I

    .line 25230
    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 25232
    :cond_f
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->t()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 25233
    const-string v5, "transaction_date"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    .line 25553
    iget-wide v6, v3, Lcom/tapjoy/internal/gl$r;->f:J

    .line 25233
    invoke-virtual {v5, v6, v7}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 25235
    :cond_10
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->u()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 25236
    const-string v5, "campaign_id"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 25238
    :cond_11
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->y()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 25239
    const-string v5, "receipt"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->z()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 25241
    :cond_12
    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->A()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 25242
    const-string v5, "signature"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$r;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 25244
    :cond_13
    invoke-virtual {v4}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tapjoy/internal/bl;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->a(Lcom/tapjoy/internal/bp;)Lcom/tapjoy/internal/bl;

    .line 306
    :cond_14
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->u()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 307
    const-string v0, "exception"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 312
    :cond_15
    :try_start_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->y()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 313
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 314
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->w()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 315
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/br;->b(Ljava/lang/String;)Lcom/tapjoy/internal/br;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/br;->a(Ljava/util/Map;)V

    .line 26246
    :cond_16
    iget-object v2, p0, Lcom/tapjoy/internal/gl$c;->o:Lcom/tapjoy/internal/gl$p;

    .line 318
    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$p;->e()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 319
    const-string v3, "fq7_change"

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$p;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_17
    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$p;->g()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 322
    const-string v3, "fq30_change"

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$p;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_18
    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$p;->i()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 325
    const-string v3, "push_id"

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl$p;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_19
    const-string v2, "meta"

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/util/Map;)Lcom/tapjoy/internal/bl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_1a
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->G()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 336
    const-string v0, "dimensions"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bq;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->H()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->a(Lcom/tapjoy/internal/bp;)Lcom/tapjoy/internal/bl;

    .line 338
    :cond_1b
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->I()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 339
    const-string v0, "count"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 26464
    iget v2, p0, Lcom/tapjoy/internal/gl$c;->q:I

    .line 339
    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 341
    :cond_1c
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->J()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 342
    const-string v0, "first_time"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 26479
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$c;->r:J

    .line 342
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 344
    :cond_1d
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->K()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 345
    const-string v0, "last_time"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 26494
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$c;->s:J

    .line 345
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 349
    :cond_1e
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->z()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 350
    const-string v0, "category"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 352
    :cond_1f
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->B()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 353
    const-string v0, "p1"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 355
    :cond_20
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->D()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 356
    const-string v0, "p2"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 358
    :cond_21
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->F()I

    move-result v0

    if-lez v0, :cond_26

    .line 359
    const-string v0, "values"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    .line 27381
    iget-object v0, p0, Lcom/tapjoy/internal/gl$c;->p:Ljava/util/List;

    .line 360
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$j;

    .line 361
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$j;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v3

    .line 27396
    iget-wide v4, v0, Lcom/tapjoy/internal/gl$j;->c:J

    .line 361
    invoke-virtual {v3, v4, v5}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    goto :goto_2

    .line 271
    :cond_22
    invoke-static {}, Lcom/tapjoy/internal/y;->c()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->j()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->l()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/tapjoy/internal/fx;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 22027
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$c;->f:J

    .line 273
    invoke-static {v2, v3}, Lcom/tapjoy/internal/y;->a(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 274
    const-string v0, "systime"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 22955
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$c;->d:J

    .line 274
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    goto/16 :goto_0

    .line 23955
    :cond_23
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$c;->d:J

    .line 276
    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    goto/16 :goto_0

    .line 328
    :cond_24
    :try_start_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->w()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 329
    const-string v0, "meta"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/bq;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$c;->x()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->a(Lcom/tapjoy/internal/bp;)Lcom/tapjoy/internal/bl;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 363
    :cond_25
    invoke-virtual {v1}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    .line 366
    :cond_26
    invoke-virtual {v1}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/tapjoy/internal/gl$d;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 370
    new-instance v0, Lcom/tapjoy/internal/bl;

    invoke-direct {v0}, Lcom/tapjoy/internal/bl;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->a()Lcom/tapjoy/internal/bl;

    move-result-object v9

    .line 27993
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    .line 377
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

    check-cast v0, Lcom/tapjoy/internal/gl$c;

    .line 378
    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c;->n()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 28057
    iget-object v6, v0, Lcom/tapjoy/internal/gl$c;->h:Lcom/tapjoy/internal/gl$l;

    .line 378
    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/gl$l;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 29057
    :cond_0
    iget-object v6, v0, Lcom/tapjoy/internal/gl$c;->h:Lcom/tapjoy/internal/gl$l;

    move v8, v3

    .line 384
    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c;->o()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 29072
    iget-object v5, v0, Lcom/tapjoy/internal/gl$c;->i:Lcom/tapjoy/internal/gl$a;

    .line 384
    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/gl$a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 30072
    :cond_1
    iget-object v5, v0, Lcom/tapjoy/internal/gl$c;->i:Lcom/tapjoy/internal/gl$a;

    move v7, v3

    .line 390
    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c;->p()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 30087
    iget-object v4, v0, Lcom/tapjoy/internal/gl$c;->j:Lcom/tapjoy/internal/gl$z;

    .line 390
    invoke-virtual {v1, v4}, Lcom/tapjoy/internal/gl$z;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 31087
    :cond_2
    iget-object v1, v0, Lcom/tapjoy/internal/gl$c;->j:Lcom/tapjoy/internal/gl$z;

    move-object v4, v1

    move v1, v3

    .line 396
    :goto_3
    new-instance v11, Lcom/tapjoy/internal/bq;

    invoke-static {v0, v8, v7, v1}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$c;ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lcom/tapjoy/internal/bl;->a(Lcom/tapjoy/internal/bp;)Lcom/tapjoy/internal/bl;

    move-object v1, v4

    move-object v4, v5

    move-object v5, v6

    .line 398
    goto :goto_0

    :cond_3
    move v8, v2

    move-object v6, v5

    .line 382
    goto :goto_1

    :cond_4
    move v7, v2

    move-object v5, v4

    .line 388
    goto :goto_2

    :cond_5
    move-object v4, v1

    move v1, v2

    .line 394
    goto :goto_3

    .line 399
    :cond_6
    invoke-virtual {v9}, Lcom/tapjoy/internal/bl;->b()Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/tapjoy/internal/gl$i;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    sget-object v0, Lcom/tapjoy/internal/gk$1;->a:[I

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 413
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 405
    :pswitch_0
    const-string v0, "app"

    .line 411
    :goto_0
    return-object v0

    .line 407
    :pswitch_1
    const-string v0, "campaign"

    goto :goto_0

    .line 409
    :pswitch_2
    const-string v0, "custom"

    goto :goto_0

    .line 411
    :pswitch_3
    const-string v0, "usages"

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lcom/tapjoy/internal/gl$l;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcom/tapjoy/internal/bl;

    invoke-direct {v0}, Lcom/tapjoy/internal/bl;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "os_name"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "os_ver"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "device_id"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "device_maker"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "device_model"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "pkg_id"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "pkg_sign"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "display_d"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 18759
    iget v1, p0, Lcom/tapjoy/internal/gl$l;->c:I

    .line 30
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "display_w"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 18774
    iget v1, p0, Lcom/tapjoy/internal/gl$l;->d:I

    .line 30
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "display_h"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 18789
    iget v1, p0, Lcom/tapjoy/internal/gl$l;->e:I

    .line 30
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    const-string v1, "timezone"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const-string v1, "mac"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const-string v1, "country_sim"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->F()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    const-string v1, "country_net"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->H()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    const-string v1, "imei"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$l;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 56
    :cond_3
    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/tapjoy/internal/gl$z;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$z;Lcom/tapjoy/internal/gl$c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/tapjoy/internal/gl$z;Lcom/tapjoy/internal/gl$c;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const-wide/16 v6, 0x1

    .line 83
    new-instance v0, Lcom/tapjoy/internal/bl;

    invoke-direct {v0}, Lcom/tapjoy/internal/bl;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    move-result-object v1

    .line 84
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "installed"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 19750
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$z;->c:J

    .line 85
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-string v0, "referrer"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 92
    const-string v0, "idfa"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 93
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20076
    iget-boolean v0, p0, Lcom/tapjoy/internal/gl$z;->o:Z

    .line 93
    if-eqz v0, :cond_2

    .line 94
    const-string v0, "idfa_optout"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 107
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    const-string v0, "fq7"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 20807
    iget v2, p0, Lcom/tapjoy/internal/gl$z;->d:I

    .line 108
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 110
    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    const-string v0, "fq30"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 20822
    iget v2, p0, Lcom/tapjoy/internal/gl$z;->e:I

    .line 111
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 114
    :cond_4
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->j()I

    move-result v0

    if-lez v0, :cond_9

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->j()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 20831
    iget-object v0, p0, Lcom/tapjoy/internal/gl$z;->f:Ljava/util/List;

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$t;

    .line 117
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$t;->h()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 118
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$t;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    :cond_6
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$c;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tapjoy/internal/fx;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-static {}, Lcom/tapjoy/internal/gi;->b()Ljava/lang/String;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    const-string v2, "idfa"

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 101
    invoke-static {}, Lcom/tapjoy/internal/gi;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const-string v0, "idfa_optout"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    goto/16 :goto_0

    .line 121
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 122
    const-string v0, "push"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->a()Lcom/tapjoy/internal/bl;

    .line 123
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    goto :goto_2

    .line 126
    :cond_8
    invoke-virtual {v1}, Lcom/tapjoy/internal/bl;->b()Lcom/tapjoy/internal/bl;

    .line 130
    :cond_9
    const-string v0, "session"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    .line 132
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 133
    const-string v0, "total_count"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 20872
    iget v2, p0, Lcom/tapjoy/internal/gl$z;->g:I

    .line 133
    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 135
    :cond_a
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->l()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 136
    const-string v0, "total_length"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 20887
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$z;->h:J

    .line 136
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 138
    :cond_b
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 139
    const-string v0, "last_at"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 20902
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$z;->i:J

    .line 139
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 141
    :cond_c
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->n()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 142
    const-string v0, "last_length"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 20917
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$z;->j:J

    .line 142
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 145
    :cond_d
    invoke-virtual {v1}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    .line 147
    const-string v0, "purchase"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->c()Lcom/tapjoy/internal/bl;

    .line 149
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    const-string v0, "currency"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 152
    :cond_e
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->q()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 153
    const-string v0, "total_count"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 20974
    iget v2, p0, Lcom/tapjoy/internal/gl$z;->k:I

    .line 153
    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 155
    :cond_f
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->r()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 156
    const-string v0, "total_price"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 20989
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$z;->l:D

    .line 156
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(D)Lcom/tapjoy/internal/bl;

    .line 158
    :cond_10
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->s()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 159
    const-string v0, "last_at"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 21004
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$z;->m:J

    .line 159
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 161
    :cond_11
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->t()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 162
    const-string v0, "last_price"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 21019
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$z;->n:D

    .line 162
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(D)Lcom/tapjoy/internal/bl;

    .line 165
    :cond_12
    invoke-virtual {v1}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    .line 167
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->x()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 168
    const-string v0, "user_id"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 170
    :cond_13
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->z()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 171
    const-string v0, "user_level"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 21133
    iget v2, p0, Lcom/tapjoy/internal/gl$z;->p:I

    .line 171
    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 173
    :cond_14
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->A()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 174
    const-string v0, "friend_count"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 21148
    iget v2, p0, Lcom/tapjoy/internal/gl$z;->q:I

    .line 174
    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 176
    :cond_15
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->B()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 177
    const-string v0, "uv1"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 179
    :cond_16
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->D()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 180
    const-string v0, "uv2"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 182
    :cond_17
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->F()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 183
    const-string v0, "uv3"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 185
    :cond_18
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->H()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 186
    const-string v0, "uv4"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 188
    :cond_19
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->J()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 189
    const-string v0, "uv5"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    .line 191
    :cond_1a
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$z;->L()I

    move-result v0

    if-lez v0, :cond_1b

    .line 192
    const-string v0, "tags"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 21368
    iget-object v2, p0, Lcom/tapjoy/internal/gl$z;->r:Lcom/tapjoy/internal/ds;

    .line 192
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bl;->a(Ljava/util/Collection;)Lcom/tapjoy/internal/bl;

    .line 21402
    :cond_1b
    iget-boolean v0, p0, Lcom/tapjoy/internal/gl$z;->s:Z

    .line 195
    if-eqz v0, :cond_1c

    .line 196
    const-string v0, "push_optout"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/tapjoy/internal/bl;->a(J)Lcom/tapjoy/internal/bl;

    .line 199
    :cond_1c
    invoke-virtual {v1}, Lcom/tapjoy/internal/bl;->d()Lcom/tapjoy/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

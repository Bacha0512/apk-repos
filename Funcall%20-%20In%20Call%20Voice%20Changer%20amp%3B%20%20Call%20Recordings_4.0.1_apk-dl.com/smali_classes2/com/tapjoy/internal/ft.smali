.class public final Lcom/tapjoy/internal/ft;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/tapjoy/internal/fx;

.field final b:Lcom/tapjoy/internal/fs;

.field c:J

.field private d:I

.field private final e:Lcom/tapjoy/internal/gl$f$a;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fx;Lcom/tapjoy/internal/fs;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/ft;->d:I

    .line 59
    invoke-static {}, Lcom/tapjoy/internal/gl$f;->j()Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ft;->e:Lcom/tapjoy/internal/gl$f$a;

    .line 64
    iput-object p1, p0, Lcom/tapjoy/internal/ft;->a:Lcom/tapjoy/internal/fx;

    .line 65
    iput-object p2, p0, Lcom/tapjoy/internal/ft;->b:Lcom/tapjoy/internal/fs;

    .line 66
    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;
    .locals 6

    .prologue
    .line 299
    iget-object v0, p0, Lcom/tapjoy/internal/ft;->a:Lcom/tapjoy/internal/fx;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fx;->b()Lcom/tapjoy/internal/gl$n;

    move-result-object v0

    .line 300
    invoke-static {}, Lcom/tapjoy/internal/gl$c;->L()Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/internal/fx;->a:Ljava/lang/String;

    .line 24668
    if-nez v2, :cond_0

    .line 24669
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24671
    :cond_0
    iget v3, v1, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 24672
    iput-object v2, v1, Lcom/tapjoy/internal/gl$c$a;->f:Ljava/lang/Object;

    .line 300
    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gl$c$a;->a(Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    .line 25528
    if-nez p2, :cond_1

    .line 25529
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25531
    :cond_1
    iget v2, v1, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 25532
    iput-object p2, v1, Lcom/tapjoy/internal/gl$c$a;->d:Ljava/lang/Object;

    .line 305
    invoke-static {}, Lcom/tapjoy/internal/y;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 306
    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/gl$c$a;->a(J)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/tapjoy/internal/gl$c$a;->b(J)Lcom/tapjoy/internal/gl$c$a;

    .line 26385
    :goto_0
    iget-object v2, v0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 26780
    if-nez v2, :cond_3

    .line 26781
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 309
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/gl$c$a;->a(J)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/tapjoy/internal/gl$c$a;->c(J)Lcom/tapjoy/internal/gl$c$a;

    goto :goto_0

    .line 26783
    :cond_3
    iput-object v2, v1, Lcom/tapjoy/internal/gl$c$a;->g:Lcom/tapjoy/internal/gl$l;

    .line 26785
    iget v2, v1, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 27400
    iget-object v2, v0, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    .line 27840
    if-nez v2, :cond_4

    .line 27841
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27843
    :cond_4
    iput-object v2, v1, Lcom/tapjoy/internal/gl$c$a;->h:Lcom/tapjoy/internal/gl$a;

    .line 27845
    iget v2, v1, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 28415
    iget-object v0, v0, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 28900
    if-nez v0, :cond_5

    .line 28901
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28903
    :cond_5
    iput-object v0, v1, Lcom/tapjoy/internal/gl$c$a;->i:Lcom/tapjoy/internal/gl$z;

    .line 28905
    iget v0, v1, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, v1, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 316
    return-object v1
.end method

.method public final declared-synchronized a(Lcom/tapjoy/internal/gl$c$a;)V
    .locals 6

    .prologue
    const/high16 v5, 0x20000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 320
    monitor-enter p0

    .line 29459
    :try_start_0
    iget-object v0, p1, Lcom/tapjoy/internal/gl$c$a;->c:Lcom/tapjoy/internal/gl$i;

    .line 320
    sget-object v3, Lcom/tapjoy/internal/gl$i;->d:Lcom/tapjoy/internal/gl$i;

    if-eq v0, v3, :cond_9

    .line 321
    iget v0, p0, Lcom/tapjoy/internal/ft;->d:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/tapjoy/internal/ft;->d:I

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/gl$c$a;->a(I)Lcom/tapjoy/internal/gl$c$a;

    .line 322
    iget-object v0, p0, Lcom/tapjoy/internal/ft;->e:Lcom/tapjoy/internal/gl$f$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$f$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/tapjoy/internal/ft;->e:Lcom/tapjoy/internal/gl$f$a;

    .line 30260
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$f$a;->d()Lcom/tapjoy/internal/gl$f;

    move-result-object v0

    .line 30261
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$f;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 30316
    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    .line 30262
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 30037
    :cond_0
    :try_start_1
    iput-object v0, p1, Lcom/tapjoy/internal/gl$c$a;->j:Lcom/tapjoy/internal/gl$f;

    .line 30039
    iget v0, p1, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p1, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/ft;->e:Lcom/tapjoy/internal/gl$f$a;

    .line 30459
    iget-object v3, p1, Lcom/tapjoy/internal/gl$c$a;->c:Lcom/tapjoy/internal/gl$i;

    .line 325
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gl$f$a;->a(Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$f$a;

    .line 326
    iget-object v4, p0, Lcom/tapjoy/internal/ft;->e:Lcom/tapjoy/internal/gl$f$a;

    .line 30494
    iget-object v0, p1, Lcom/tapjoy/internal/gl$c$a;->d:Ljava/lang/Object;

    .line 30495
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_3

    .line 30496
    check-cast v0, Lcom/tapjoy/internal/dk;

    .line 30498
    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v3

    .line 30499
    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30500
    iput-object v3, p1, Lcom/tapjoy/internal/gl$c$a;->d:Ljava/lang/Object;

    :cond_2
    move-object v0, v3

    .line 31418
    :goto_0
    if-nez v0, :cond_4

    .line 31419
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30504
    :cond_3
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 31421
    :cond_4
    iget v3, v4, Lcom/tapjoy/internal/gl$f$a;->b:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v4, Lcom/tapjoy/internal/gl$f$a;->b:I

    .line 31422
    iput-object v0, v4, Lcom/tapjoy/internal/gl$f$a;->c:Ljava/lang/Object;

    .line 32344
    iget v0, p1, Lcom/tapjoy/internal/gl$c$a;->b:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_6

    move v0, v1

    .line 327
    :goto_1
    if-eqz v0, :cond_a

    .line 328
    iget-object v2, p0, Lcom/tapjoy/internal/ft;->e:Lcom/tapjoy/internal/gl$f$a;

    .line 32350
    iget-object v0, p1, Lcom/tapjoy/internal/gl$c$a;->m:Ljava/lang/Object;

    .line 32351
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_7

    .line 32352
    check-cast v0, Lcom/tapjoy/internal/dk;

    .line 32354
    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v1

    .line 32355
    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32356
    iput-object v1, p1, Lcom/tapjoy/internal/gl$c$a;->m:Ljava/lang/Object;

    :cond_5
    move-object v0, v1

    .line 32494
    :goto_2
    if-nez v0, :cond_8

    .line 32495
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_6
    move v0, v2

    .line 32344
    goto :goto_1

    .line 32360
    :cond_7
    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 32497
    :cond_8
    iget v1, v2, Lcom/tapjoy/internal/gl$f$a;->b:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v2, Lcom/tapjoy/internal/gl$f$a;->b:I

    .line 32498
    iput-object v0, v2, Lcom/tapjoy/internal/gl$f$a;->d:Ljava/lang/Object;

    .line 333
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/tapjoy/internal/ft;->b:Lcom/tapjoy/internal/fs;

    .line 33168
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$c$a;->d()Lcom/tapjoy/internal/gl$c;

    move-result-object v1

    .line 33169
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c;->c()Z

    move-result v2

    if-nez v2, :cond_b

    .line 33316
    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    .line 33170
    throw v0

    .line 330
    :cond_a
    iget-object v0, p0, Lcom/tapjoy/internal/ft;->e:Lcom/tapjoy/internal/gl$f$a;

    .line 32506
    iget v1, v0, Lcom/tapjoy/internal/gl$f$a;->b:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Lcom/tapjoy/internal/gl$f$a;->b:I

    .line 32507
    invoke-static {}, Lcom/tapjoy/internal/gl$f;->d()Lcom/tapjoy/internal/gl$f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$f;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/gl$f$a;->d:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 34216
    :cond_b
    :try_start_2
    iget-object v2, v0, Lcom/tapjoy/internal/fs;->a:Lcom/tapjoy/internal/gg;

    .line 35108
    iget-object v3, v2, Lcom/tapjoy/internal/gg;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35110
    :try_start_3
    iget-object v4, v2, Lcom/tapjoy/internal/gg;->b:Lcom/tapjoy/internal/bb;

    invoke-interface {v4, v1}, Lcom/tapjoy/internal/bb;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35119
    :goto_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 34222
    :try_start_5
    iget-object v2, v0, Lcom/tapjoy/internal/fs;->b:Lcom/tapjoy/internal/ch;

    if-eqz v2, :cond_e

    .line 36017
    sget-boolean v2, Lcom/tapjoy/internal/fr;->a:Z

    .line 34223
    if-nez v2, :cond_c

    .line 36898
    iget-object v1, v1, Lcom/tapjoy/internal/gl$c;->c:Lcom/tapjoy/internal/gl$i;

    .line 34223
    sget-object v2, Lcom/tapjoy/internal/gl$i;->c:Lcom/tapjoy/internal/gl$i;

    if-eq v1, v2, :cond_d

    .line 34225
    :cond_c
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fs;->a(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 34228
    :goto_5
    monitor-exit p0

    return-void

    .line 35112
    :catch_0
    move-exception v4

    :try_start_6
    invoke-virtual {v2}, Lcom/tapjoy/internal/gg;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 35114
    :try_start_7
    iget-object v2, v2, Lcom/tapjoy/internal/gg;->b:Lcom/tapjoy/internal/bb;

    invoke-interface {v2, v1}, Lcom/tapjoy/internal/bb;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_4

    .line 35119
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 34219
    :catch_2
    move-exception v0

    goto :goto_5

    .line 34228
    :cond_d
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fs;->a(Z)V

    goto :goto_5

    .line 34231
    :cond_e
    iget-object v0, v0, Lcom/tapjoy/internal/fs;->a:Lcom/tapjoy/internal/gg;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gg;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 116
    iget-object v3, p0, Lcom/tapjoy/internal/ft;->a:Lcom/tapjoy/internal/fx;

    .line 18497
    monitor-enter v3

    .line 18500
    :try_start_0
    iget-object v1, v3, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ge;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 18501
    iget-object v1, v3, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v1, v1, Lcom/tapjoy/internal/ge;->l:Lcom/tapjoy/internal/q;

    invoke-virtual {v1}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18502
    iget-object v0, v3, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v0, v0, Lcom/tapjoy/internal/ge;->m:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->b()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 18503
    iget-object v0, v3, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v0, v0, Lcom/tapjoy/internal/ge;->m:Lcom/tapjoy/internal/m;

    invoke-virtual {v0, v4, v2}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences$Editor;I)Landroid/content/SharedPreferences$Editor;

    .line 18504
    iget-object v0, v3, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v0, v0, Lcom/tapjoy/internal/ge;->n:Lcom/tapjoy/internal/k;

    invoke-virtual {v0}, Lcom/tapjoy/internal/k;->a()D

    move-result-wide v0

    add-double/2addr v0, p3

    .line 18505
    iget-object v5, v3, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v5, v5, Lcom/tapjoy/internal/ge;->n:Lcom/tapjoy/internal/k;

    invoke-virtual {v5, v4, v0, v1}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;D)Landroid/content/SharedPreferences$Editor;

    .line 18506
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 18521
    :goto_0
    iget-object v4, v3, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gl$z$a;

    invoke-virtual {v4, v2}, Lcom/tapjoy/internal/gl$z$a;->e(I)Lcom/tapjoy/internal/gl$z$a;

    .line 18522
    iget-object v2, v3, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gl$z$a;

    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/internal/gl$z$a;->a(D)Lcom/tapjoy/internal/gl$z$a;

    .line 18523
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    sget-object v0, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    const-string v1, "purchase"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/tapjoy/internal/gl$r;->C()Lcom/tapjoy/internal/gl$r$a;

    move-result-object v1

    .line 19366
    if-nez p1, :cond_1

    .line 19367
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18508
    :cond_0
    :try_start_1
    iget-object v1, v3, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v1, v1, Lcom/tapjoy/internal/ge;->l:Lcom/tapjoy/internal/q;

    invoke-virtual {v1, v4, p2}, Lcom/tapjoy/internal/q;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18510
    iget-object v1, v3, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v1, v1, Lcom/tapjoy/internal/ge;->m:Lcom/tapjoy/internal/m;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences$Editor;I)Landroid/content/SharedPreferences$Editor;

    .line 18512
    iget-object v1, v3, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v1, v1, Lcom/tapjoy/internal/ge;->n:Lcom/tapjoy/internal/k;

    invoke-virtual {v1, v4, p3, p4}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;D)Landroid/content/SharedPreferences$Editor;

    .line 18513
    iget-object v1, v3, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v1, v1, Lcom/tapjoy/internal/ge;->o:Lcom/tapjoy/internal/n;

    invoke-virtual {v1, v4}, Lcom/tapjoy/internal/n;->a(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 18514
    iget-object v1, v3, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v1, v1, Lcom/tapjoy/internal/ge;->p:Lcom/tapjoy/internal/k;

    invoke-virtual {v1, v4}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 18515
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 18517
    iget-object v1, v3, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gl$z$a;

    invoke-virtual {v1, p2}, Lcom/tapjoy/internal/gl$z$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$z$a;

    .line 18518
    iget-object v1, v3, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gl$z$a;

    .line 18931
    iget v2, v1, Lcom/tapjoy/internal/gl$z$a;->b:I

    and-int/lit16 v2, v2, -0x1001

    iput v2, v1, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 18932
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/tapjoy/internal/gl$z$a;->d:J

    .line 18519
    iget-object v1, v3, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gl$z$a;

    .line 18963
    iget v2, v1, Lcom/tapjoy/internal/gl$z$a;->b:I

    and-int/lit16 v2, v2, -0x2001

    iput v2, v1, Lcom/tapjoy/internal/gl$z$a;->b:I

    .line 18964
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/tapjoy/internal/gl$z$a;->e:D

    move v2, v0

    move-wide v0, p3

    goto :goto_0

    .line 18523
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 19369
    :cond_1
    iget v2, v1, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 19370
    iput-object p1, v1, Lcom/tapjoy/internal/gl$r$a;->c:Ljava/lang/Object;

    .line 121
    if-eqz p2, :cond_3

    .line 19506
    if-nez p2, :cond_2

    .line 19507
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19509
    :cond_2
    iget v2, v1, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 19510
    iput-object p2, v1, Lcom/tapjoy/internal/gl$r$a;->d:Ljava/lang/Object;

    .line 124
    :cond_3
    invoke-virtual {v1, p3, p4}, Lcom/tapjoy/internal/gl$r$a;->a(D)Lcom/tapjoy/internal/gl$r$a;

    .line 125
    if-eqz p7, :cond_5

    .line 19950
    if-nez p7, :cond_4

    .line 19951
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19953
    :cond_4
    iget v2, v1, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 19954
    iput-object p7, v1, Lcom/tapjoy/internal/gl$r$a;->e:Ljava/lang/Object;

    .line 128
    :cond_5
    if-eqz p5, :cond_7

    .line 20102
    if-nez p5, :cond_6

    .line 20103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20105
    :cond_6
    iget v2, v1, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v1, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 20106
    iput-object p5, v1, Lcom/tapjoy/internal/gl$r$a;->f:Ljava/lang/Object;

    .line 131
    :cond_7
    if-eqz p6, :cond_9

    .line 20178
    if-nez p6, :cond_8

    .line 20179
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20181
    :cond_8
    iget v2, v1, Lcom/tapjoy/internal/gl$r$a;->b:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v1, Lcom/tapjoy/internal/gl$r$a;->b:I

    .line 20182
    iput-object p6, v1, Lcom/tapjoy/internal/gl$r$a;->g:Ljava/lang/Object;

    .line 21154
    :cond_9
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$r$a;->d()Lcom/tapjoy/internal/gl$r;

    move-result-object v1

    .line 21155
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$r;->c()Z

    move-result v2

    if-nez v2, :cond_a

    .line 21316
    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    .line 21156
    throw v0

    .line 21097
    :cond_a
    iput-object v1, v0, Lcom/tapjoy/internal/gl$c$a;->k:Lcom/tapjoy/internal/gl$r;

    .line 21099
    iget v1, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 135
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 137
    iget-object v1, p0, Lcom/tapjoy/internal/ft;->a:Lcom/tapjoy/internal/fx;

    .line 21570
    iget-wide v2, v0, Lcom/tapjoy/internal/gl$c$a;->e:J

    .line 22527
    monitor-enter v1

    .line 22528
    :try_start_2
    iget-object v0, v1, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ge;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 22529
    iget-object v4, v1, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v4, v4, Lcom/tapjoy/internal/ge;->o:Lcom/tapjoy/internal/n;

    invoke-virtual {v4, v0, v2, v3}, Lcom/tapjoy/internal/n;->a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;

    .line 22530
    iget-object v4, v1, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v4, v4, Lcom/tapjoy/internal/ge;->p:Lcom/tapjoy/internal/k;

    invoke-virtual {v4, v0, p3, p4}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;D)Landroid/content/SharedPreferences$Editor;

    .line 22531
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22533
    iget-object v0, v1, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gl$z$a;

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/gl$z$a;->e(J)Lcom/tapjoy/internal/gl$z$a;

    .line 22534
    iget-object v0, v1, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gl$z$a;

    invoke-virtual {v0, p3, p4}, Lcom/tapjoy/internal/gl$z$a;->b(D)Lcom/tapjoy/internal/gl$z$a;

    .line 22535
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IJJLjava/util/Map;)V
    .locals 6

    .prologue
    .line 285
    sget-object v0, Lcom/tapjoy/internal/gl$i;->d:Lcom/tapjoy/internal/gl$i;

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v2

    .line 23737
    if-nez p2, :cond_0

    .line 23738
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23740
    :cond_0
    iget v0, v2, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, v2, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 23741
    iput-object p2, v2, Lcom/tapjoy/internal/gl$c$a;->p:Ljava/lang/Object;

    .line 287
    invoke-virtual {v2, p3}, Lcom/tapjoy/internal/gl$c$a;->b(I)Lcom/tapjoy/internal/gl$c$a;

    .line 288
    invoke-virtual {v2, p4, p5}, Lcom/tapjoy/internal/gl$c$a;->e(J)Lcom/tapjoy/internal/gl$c$a;

    .line 289
    invoke-virtual {v2, p6, p7}, Lcom/tapjoy/internal/gl$c$a;->f(J)Lcom/tapjoy/internal/gl$c$a;

    .line 290
    if-eqz p8, :cond_1

    .line 291
    invoke-interface {p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 292
    invoke-static {}, Lcom/tapjoy/internal/gl$j;->h()Lcom/tapjoy/internal/gl$j$a;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/tapjoy/internal/gl$j$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$j$a;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/tapjoy/internal/gl$j$a;->a(J)Lcom/tapjoy/internal/gl$j$a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/gl$c$a;->a(Lcom/tapjoy/internal/gl$j$a;)Lcom/tapjoy/internal/gl$c$a;

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 296
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    .prologue
    .line 240
    sget-object v0, Lcom/tapjoy/internal/gl$i;->c:Lcom/tapjoy/internal/gl$i;

    invoke-virtual {p0, v0, p2}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v2

    .line 241
    if-eqz p1, :cond_1

    .line 23384
    if-nez p1, :cond_0

    .line 23385
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23387
    :cond_0
    iget v0, v2, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, v2, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 23388
    iput-object p1, v2, Lcom/tapjoy/internal/gl$c$a;->m:Ljava/lang/Object;

    .line 244
    :cond_1
    if-eqz p3, :cond_3

    .line 23460
    if-nez p3, :cond_2

    .line 23461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23463
    :cond_2
    iget v0, v2, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, v2, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 23464
    iput-object p3, v2, Lcom/tapjoy/internal/gl$c$a;->n:Ljava/lang/Object;

    .line 247
    :cond_3
    if-eqz p4, :cond_5

    .line 23536
    if-nez p4, :cond_4

    .line 23537
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23539
    :cond_4
    iget v0, v2, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, v2, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 23540
    iput-object p4, v2, Lcom/tapjoy/internal/gl$c$a;->o:Ljava/lang/Object;

    .line 250
    :cond_5
    if-eqz p5, :cond_6

    .line 251
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 252
    invoke-static {}, Lcom/tapjoy/internal/gl$j;->h()Lcom/tapjoy/internal/gl$j$a;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/tapjoy/internal/gl$j$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$j$a;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/tapjoy/internal/gl$j$a;->a(J)Lcom/tapjoy/internal/gl$j$a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/gl$c$a;->a(Lcom/tapjoy/internal/gl$j$a;)Lcom/tapjoy/internal/gl$c$a;

    goto :goto_0

    .line 255
    :cond_6
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 256
    return-void
.end method

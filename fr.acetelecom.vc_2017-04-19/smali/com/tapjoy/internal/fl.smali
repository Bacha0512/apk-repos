.class public final Lcom/tapjoy/internal/fl;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/tapjoy/internal/fp;

.field final b:Lcom/tapjoy/internal/fk;

.field c:J

.field private d:I

.field private final e:Lcom/tapjoy/internal/gd$f$a;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fp;Lcom/tapjoy/internal/fk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/fl;->d:I

    invoke-static {}, Lcom/tapjoy/internal/gd$f;->j()Lcom/tapjoy/internal/gd$f$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fl;->e:Lcom/tapjoy/internal/gd$f$a;

    iput-object p1, p0, Lcom/tapjoy/internal/fl;->a:Lcom/tapjoy/internal/fp;

    iput-object p2, p0, Lcom/tapjoy/internal/fl;->b:Lcom/tapjoy/internal/fk;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/gd$i;Ljava/lang/String;)Lcom/tapjoy/internal/gd$c$a;
    .locals 6

    iget-object v0, p0, Lcom/tapjoy/internal/fl;->a:Lcom/tapjoy/internal/fp;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fp;->b()Lcom/tapjoy/internal/gd$n;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/internal/gd$c;->G()Lcom/tapjoy/internal/gd$c$a;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/internal/fp;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v3, v1, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lcom/tapjoy/internal/gd$c$a;->b:I

    iput-object v2, v1, Lcom/tapjoy/internal/gd$c$a;->f:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gd$c$a;->a(Lcom/tapjoy/internal/gd$i;)Lcom/tapjoy/internal/gd$c$a;

    move-result-object v1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v2, v1, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/tapjoy/internal/gd$c$a;->b:I

    iput-object p2, v1, Lcom/tapjoy/internal/gd$c$a;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/tapjoy/internal/y;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/gd$c$a;->a(J)Lcom/tapjoy/internal/gd$c$a;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/tapjoy/internal/gd$c$a;->b(J)Lcom/tapjoy/internal/gd$c$a;

    :goto_0
    iget-object v2, v0, Lcom/tapjoy/internal/gd$n;->c:Lcom/tapjoy/internal/gd$l;

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/gd$c$a;->a(J)Lcom/tapjoy/internal/gd$c$a;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/tapjoy/internal/gd$c$a;->c(J)Lcom/tapjoy/internal/gd$c$a;

    goto :goto_0

    :cond_3
    iput-object v2, v1, Lcom/tapjoy/internal/gd$c$a;->g:Lcom/tapjoy/internal/gd$l;

    iget v2, v1, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Lcom/tapjoy/internal/gd$c$a;->b:I

    iget-object v2, v0, Lcom/tapjoy/internal/gd$n;->d:Lcom/tapjoy/internal/gd$a;

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    iput-object v2, v1, Lcom/tapjoy/internal/gd$c$a;->h:Lcom/tapjoy/internal/gd$a;

    iget v2, v1, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Lcom/tapjoy/internal/gd$c$a;->b:I

    iget-object v0, v0, Lcom/tapjoy/internal/gd$n;->e:Lcom/tapjoy/internal/gd$z;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iput-object v0, v1, Lcom/tapjoy/internal/gd$c$a;->i:Lcom/tapjoy/internal/gd$z;

    iget v0, v1, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, v1, Lcom/tapjoy/internal/gd$c$a;->b:I

    return-object v1
.end method

.method public final declared-synchronized a(Lcom/tapjoy/internal/gd$c$a;)V
    .locals 6

    const/high16 v5, 0x20000

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tapjoy/internal/fl;->d:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/tapjoy/internal/fl;->d:I

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/gd$c$a;->a(I)Lcom/tapjoy/internal/gd$c$a;

    iget-object v0, p0, Lcom/tapjoy/internal/fl;->e:Lcom/tapjoy/internal/gd$f$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$f$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/fl;->e:Lcom/tapjoy/internal/gd$f$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$f$a;->d()Lcom/tapjoy/internal/gd$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$f;->c()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-object v0, p1, Lcom/tapjoy/internal/gd$c$a;->j:Lcom/tapjoy/internal/gd$f;

    iget v0, p1, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p1, Lcom/tapjoy/internal/gd$c$a;->b:I

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/fl;->e:Lcom/tapjoy/internal/gd$f$a;

    iget-object v3, p1, Lcom/tapjoy/internal/gd$c$a;->c:Lcom/tapjoy/internal/gd$i;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gd$f$a;->a(Lcom/tapjoy/internal/gd$i;)Lcom/tapjoy/internal/gd$f$a;

    iget-object v4, p0, Lcom/tapjoy/internal/fl;->e:Lcom/tapjoy/internal/gd$f$a;

    iget-object v0, p1, Lcom/tapjoy/internal/gd$c$a;->d:Ljava/lang/Object;

    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_3

    check-cast v0, Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v3, p1, Lcom/tapjoy/internal/gd$c$a;->d:Ljava/lang/Object;

    :cond_2
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget v3, v4, Lcom/tapjoy/internal/gd$f$a;->b:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v4, Lcom/tapjoy/internal/gd$f$a;->b:I

    iput-object v0, v4, Lcom/tapjoy/internal/gd$f$a;->c:Ljava/lang/Object;

    iget v0, p1, Lcom/tapjoy/internal/gd$c$a;->b:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_6

    move v0, v1

    :goto_1
    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/tapjoy/internal/fl;->e:Lcom/tapjoy/internal/gd$f$a;

    iget-object v0, p1, Lcom/tapjoy/internal/gd$c$a;->m:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_7

    check-cast v0, Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object v1, p1, Lcom/tapjoy/internal/gd$c$a;->m:Ljava/lang/Object;

    :cond_5
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_8
    iget v1, v2, Lcom/tapjoy/internal/gd$f$a;->b:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v2, Lcom/tapjoy/internal/gd$f$a;->b:I

    iput-object v0, v2, Lcom/tapjoy/internal/gd$f$a;->d:Ljava/lang/Object;

    :goto_3
    iget-object v0, p0, Lcom/tapjoy/internal/fl;->b:Lcom/tapjoy/internal/fk;

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$c$a;->d()Lcom/tapjoy/internal/gd$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$c;->c()Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/tapjoy/internal/fl;->e:Lcom/tapjoy/internal/gd$f$a;

    iget v1, v0, Lcom/tapjoy/internal/gd$f$a;->b:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Lcom/tapjoy/internal/gd$f$a;->b:I

    invoke-static {}, Lcom/tapjoy/internal/gd$f;->d()Lcom/tapjoy/internal/gd$f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$f;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/gd$f$a;->d:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_a
    :try_start_2
    iget-object v2, v0, Lcom/tapjoy/internal/fk;->a:Lcom/tapjoy/internal/fy;

    iget-object v3, v2, Lcom/tapjoy/internal/fy;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, v2, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/bb;

    invoke-interface {v4, v1}, Lcom/tapjoy/internal/bb;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v2, v0, Lcom/tapjoy/internal/fk;->b:Lcom/tapjoy/internal/ch;

    if-eqz v2, :cond_d

    sget-boolean v2, Lcom/tapjoy/internal/fj;->a:Z

    if-nez v2, :cond_b

    iget-object v1, v1, Lcom/tapjoy/internal/gd$c;->c:Lcom/tapjoy/internal/gd$i;

    sget-object v2, Lcom/tapjoy/internal/gd$i;->c:Lcom/tapjoy/internal/gd$i;

    if-eq v1, v2, :cond_c

    :cond_b
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fk;->a(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    monitor-exit p0

    return-void

    :catch_0
    move-exception v4

    :try_start_6
    invoke-virtual {v2}, Lcom/tapjoy/internal/fy;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v2, v2, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/bb;

    invoke-interface {v2, v1}, Lcom/tapjoy/internal/bb;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_4

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

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_c
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fk;->a(Z)V

    goto :goto_5

    :cond_d
    iget-object v0, v0, Lcom/tapjoy/internal/fk;->a:Lcom/tapjoy/internal/fy;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fy;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/tapjoy/internal/fl;->a:Lcom/tapjoy/internal/fp;

    monitor-enter v3

    :try_start_0
    iget-object v1, v3, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fw;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v1, v3, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v1, v1, Lcom/tapjoy/internal/fw;->l:Lcom/tapjoy/internal/q;

    invoke-virtual {v1}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v3, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->m:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->b()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    iget-object v0, v3, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->m:Lcom/tapjoy/internal/m;

    invoke-virtual {v0, v4, v2}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences$Editor;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, v3, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->n:Lcom/tapjoy/internal/k;

    invoke-virtual {v0}, Lcom/tapjoy/internal/k;->a()D

    move-result-wide v0

    add-double/2addr v0, p3

    iget-object v5, v3, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v5, v5, Lcom/tapjoy/internal/fw;->n:Lcom/tapjoy/internal/k;

    invoke-virtual {v5, v4, v0, v1}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;D)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    iget-object v4, v3, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v4, v2}, Lcom/tapjoy/internal/gd$z$a;->e(I)Lcom/tapjoy/internal/gd$z$a;

    iget-object v2, v3, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/internal/gd$z$a;->a(D)Lcom/tapjoy/internal/gd$z$a;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/tapjoy/internal/gd$i;->a:Lcom/tapjoy/internal/gd$i;

    const-string v1, "purchase"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$i;Ljava/lang/String;)Lcom/tapjoy/internal/gd$c$a;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/internal/gd$r;->C()Lcom/tapjoy/internal/gd$r$a;

    move-result-object v1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    :try_start_1
    iget-object v1, v3, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v1, v1, Lcom/tapjoy/internal/fw;->l:Lcom/tapjoy/internal/q;

    invoke-virtual {v1, v4, p2}, Lcom/tapjoy/internal/q;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, v3, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v1, v1, Lcom/tapjoy/internal/fw;->m:Lcom/tapjoy/internal/m;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences$Editor;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, v3, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v1, v1, Lcom/tapjoy/internal/fw;->n:Lcom/tapjoy/internal/k;

    invoke-virtual {v1, v4, p3, p4}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;D)Landroid/content/SharedPreferences$Editor;

    iget-object v1, v3, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v1, v1, Lcom/tapjoy/internal/fw;->o:Lcom/tapjoy/internal/n;

    invoke-virtual {v1, v4}, Lcom/tapjoy/internal/n;->a(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, v3, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v1, v1, Lcom/tapjoy/internal/fw;->p:Lcom/tapjoy/internal/k;

    invoke-virtual {v1, v4}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, v3, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, p2}, Lcom/tapjoy/internal/gd$z$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    iget-object v1, v3, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget v2, v1, Lcom/tapjoy/internal/gd$z$a;->b:I

    and-int/lit16 v2, v2, -0x1001

    iput v2, v1, Lcom/tapjoy/internal/gd$z$a;->b:I

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/tapjoy/internal/gd$z$a;->d:J

    iget-object v1, v3, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget v2, v1, Lcom/tapjoy/internal/gd$z$a;->b:I

    and-int/lit16 v2, v2, -0x2001

    iput v2, v1, Lcom/tapjoy/internal/gd$z$a;->b:I

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/tapjoy/internal/gd$z$a;->e:D

    move v2, v0

    move-wide v0, p3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget v2, v1, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/tapjoy/internal/gd$r$a;->b:I

    iput-object p1, v1, Lcom/tapjoy/internal/gd$r$a;->c:Ljava/lang/Object;

    if-eqz p2, :cond_3

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iget v2, v1, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lcom/tapjoy/internal/gd$r$a;->b:I

    iput-object p2, v1, Lcom/tapjoy/internal/gd$r$a;->d:Ljava/lang/Object;

    :cond_3
    invoke-virtual {v1, p3, p4}, Lcom/tapjoy/internal/gd$r$a;->a(D)Lcom/tapjoy/internal/gd$r$a;

    if-eqz p7, :cond_5

    if-nez p7, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    iget v2, v1, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Lcom/tapjoy/internal/gd$r$a;->b:I

    iput-object p7, v1, Lcom/tapjoy/internal/gd$r$a;->e:Ljava/lang/Object;

    :cond_5
    if-eqz p5, :cond_7

    if-nez p5, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_6
    iget v2, v1, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v1, Lcom/tapjoy/internal/gd$r$a;->b:I

    iput-object p5, v1, Lcom/tapjoy/internal/gd$r$a;->f:Ljava/lang/Object;

    :cond_7
    if-eqz p6, :cond_9

    if-nez p6, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    iget v2, v1, Lcom/tapjoy/internal/gd$r$a;->b:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v1, Lcom/tapjoy/internal/gd$r$a;->b:I

    iput-object p6, v1, Lcom/tapjoy/internal/gd$r$a;->g:Ljava/lang/Object;

    :cond_9
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$r$a;->d()Lcom/tapjoy/internal/gd$r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$r;->c()Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    throw v0

    :cond_a
    iput-object v1, v0, Lcom/tapjoy/internal/gd$c$a;->k:Lcom/tapjoy/internal/gd$r;

    iget v1, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Lcom/tapjoy/internal/gd$c$a;->b:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$c$a;)V

    iget-object v1, p0, Lcom/tapjoy/internal/fl;->a:Lcom/tapjoy/internal/fp;

    iget-wide v2, v0, Lcom/tapjoy/internal/gd$c$a;->e:J

    monitor-enter v1

    :try_start_2
    iget-object v0, v1, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fw;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v4, v1, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v4, v4, Lcom/tapjoy/internal/fw;->o:Lcom/tapjoy/internal/n;

    invoke-virtual {v4, v0, v2, v3}, Lcom/tapjoy/internal/n;->a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;

    iget-object v4, v1, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v4, v4, Lcom/tapjoy/internal/fw;->p:Lcom/tapjoy/internal/k;

    invoke-virtual {v4, v0, p3, p4}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;D)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, v1, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/gd$z$a;->e(J)Lcom/tapjoy/internal/gd$z$a;

    iget-object v0, v1, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0, p3, p4}, Lcom/tapjoy/internal/gd$z$a;->b(D)Lcom/tapjoy/internal/gd$z$a;

    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    sget-object v0, Lcom/tapjoy/internal/gd$i;->c:Lcom/tapjoy/internal/gd$i;

    invoke-virtual {p0, v0, p2}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$i;Ljava/lang/String;)Lcom/tapjoy/internal/gd$c$a;

    move-result-object v2

    if-eqz p1, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, v2, Lcom/tapjoy/internal/gd$c$a;->b:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, v2, Lcom/tapjoy/internal/gd$c$a;->b:I

    iput-object p1, v2, Lcom/tapjoy/internal/gd$c$a;->m:Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_3

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iget v0, v2, Lcom/tapjoy/internal/gd$c$a;->b:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, v2, Lcom/tapjoy/internal/gd$c$a;->b:I

    iput-object p3, v2, Lcom/tapjoy/internal/gd$c$a;->n:Ljava/lang/Object;

    :cond_3
    if-eqz p4, :cond_5

    if-nez p4, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    iget v0, v2, Lcom/tapjoy/internal/gd$c$a;->b:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, v2, Lcom/tapjoy/internal/gd$c$a;->b:I

    iput-object p4, v2, Lcom/tapjoy/internal/gd$c$a;->o:Ljava/lang/Object;

    :cond_5
    if-eqz p5, :cond_8

    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/tapjoy/internal/gd$j;->h()Lcom/tapjoy/internal/gd$j$a;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_6
    iget v5, v4, Lcom/tapjoy/internal/gd$j$a;->b:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/tapjoy/internal/gd$j$a;->b:I

    iput-object v1, v4, Lcom/tapjoy/internal/gd$j$a;->c:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/tapjoy/internal/gd$j$a;->a(J)Lcom/tapjoy/internal/gd$j$a;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$c$a;->e()V

    iget-object v1, v2, Lcom/tapjoy/internal/gd$c$a;->p:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$j$a;->d()Lcom/tapjoy/internal/gd$j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$j;->c()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    throw v0

    :cond_7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$c$a;)V

    return-void
.end method

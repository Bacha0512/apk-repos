.class public Lb/a/b/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Lb/z;

.field final c:Lb/ab;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLb/z;Lb/ab;)V
    .locals 7

    const/4 v6, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Lb/a/b/b$a;->l:I

    iput-wide p1, p0, Lb/a/b/b$a;->a:J

    iput-object p3, p0, Lb/a/b/b$a;->b:Lb/z;

    iput-object p4, p0, Lb/a/b/b$a;->c:Lb/ab;

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Lb/ab;->e()Lb/r;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Lb/r;->a()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_7

    invoke-virtual {v1, v0}, Lb/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lb/r;->b(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Date"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lb/a/b/f;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lb/a/b/b$a;->d:Ljava/util/Date;

    iput-object v4, p0, Lb/a/b/b$a;->e:Ljava/lang/String;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "Expires"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lb/a/b/f;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lb/a/b/b$a;->h:Ljava/util/Date;

    goto :goto_1

    :cond_2
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lb/a/b/f;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lb/a/b/b$a;->f:Ljava/util/Date;

    iput-object v4, p0, Lb/a/b/b$a;->g:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v5, "ETag"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object v4, p0, Lb/a/b/b$a;->k:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v5, "Age"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v4, v6}, Lb/a/b/c;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lb/a/b/b$a;->l:I

    goto :goto_1

    :cond_5
    sget-object v5, Lb/a/b/j;->b:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lb/a/b/b$a;->i:J

    goto :goto_1

    :cond_6
    sget-object v5, Lb/a/b/j;->c:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lb/a/b/b$a;->j:J

    goto :goto_1

    :cond_7
    return-void
.end method

.method private static a(Lb/z;)Z
    .locals 1

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lb/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lb/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Lb/a/b/b;
    .locals 14

    const-wide/16 v4, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x0

    iget-object v0, p0, Lb/a/b/b$a;->c:Lb/ab;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/b/b;

    iget-object v1, p0, Lb/a/b/b$a;->b:Lb/z;

    invoke-direct {v0, v1, v12, v12}, Lb/a/b/b;-><init>(Lb/z;Lb/ab;Lb/a/b/b$1;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lb/a/b/b$a;->b:Lb/z;

    invoke-virtual {v0}, Lb/z;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/b/b$a;->c:Lb/ab;

    invoke-virtual {v0}, Lb/ab;->d()Lb/q;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lb/a/b/b;

    iget-object v1, p0, Lb/a/b/b$a;->b:Lb/z;

    invoke-direct {v0, v1, v12, v12}, Lb/a/b/b;-><init>(Lb/z;Lb/ab;Lb/a/b/b$1;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/a/b/b$a;->c:Lb/ab;

    iget-object v1, p0, Lb/a/b/b$a;->b:Lb/z;

    invoke-static {v0, v1}, Lb/a/b/b;->a(Lb/ab;Lb/z;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lb/a/b/b;

    iget-object v1, p0, Lb/a/b/b$a;->b:Lb/z;

    invoke-direct {v0, v1, v12, v12}, Lb/a/b/b;-><init>(Lb/z;Lb/ab;Lb/a/b/b$1;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lb/a/b/b$a;->b:Lb/z;

    invoke-virtual {v0}, Lb/z;->f()Lb/d;

    move-result-object v6

    invoke-virtual {v6}, Lb/d;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/a/b/b$a;->b:Lb/z;

    invoke-static {v0}, Lb/a/b/b$a;->a(Lb/z;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lb/a/b/b;

    iget-object v1, p0, Lb/a/b/b$a;->b:Lb/z;

    invoke-direct {v0, v1, v12, v12}, Lb/a/b/b;-><init>(Lb/z;Lb/ab;Lb/a/b/b$1;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lb/a/b/b$a;->d()J

    move-result-wide v8

    invoke-direct {p0}, Lb/a/b/b$a;->c()J

    move-result-wide v0

    invoke-virtual {v6}, Lb/d;->c()I

    move-result v2

    if-eq v2, v13, :cond_5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lb/d;->c()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_5
    invoke-virtual {v6}, Lb/d;->h()I

    move-result v2

    if-eq v2, v13, :cond_e

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lb/d;->h()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :goto_1
    iget-object v7, p0, Lb/a/b/b$a;->c:Lb/ab;

    invoke-virtual {v7}, Lb/ab;->i()Lb/d;

    move-result-object v7

    invoke-virtual {v7}, Lb/d;->f()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v6}, Lb/d;->g()I

    move-result v10

    if-eq v10, v13, :cond_6

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lb/d;->g()I

    move-result v5

    int-to-long v10, v5

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    :cond_6
    invoke-virtual {v7}, Lb/d;->a()Z

    move-result v6

    if-nez v6, :cond_9

    add-long v6, v8, v2

    add-long/2addr v4, v0

    cmp-long v4, v6, v4

    if-gez v4, :cond_9

    iget-object v4, p0, Lb/a/b/b$a;->c:Lb/ab;

    invoke-virtual {v4}, Lb/ab;->g()Lb/ab$a;

    move-result-object v4

    add-long/2addr v2, v8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_7

    const-string v0, "Warning"

    const-string v1, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v4, v0, v1}, Lb/ab$a;->b(Ljava/lang/String;Ljava/lang/String;)Lb/ab$a;

    :cond_7
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v8, v0

    if-lez v0, :cond_8

    invoke-direct {p0}, Lb/a/b/b$a;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Warning"

    const-string v1, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v4, v0, v1}, Lb/ab$a;->b(Ljava/lang/String;Ljava/lang/String;)Lb/ab$a;

    :cond_8
    new-instance v0, Lb/a/b/b;

    invoke-virtual {v4}, Lb/ab$a;->a()Lb/ab;

    move-result-object v1

    invoke-direct {v0, v12, v1, v12}, Lb/a/b/b;-><init>(Lb/z;Lb/ab;Lb/a/b/b$1;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lb/a/b/b$a;->b:Lb/z;

    invoke-virtual {v0}, Lb/z;->e()Lb/z$a;

    move-result-object v0

    iget-object v1, p0, Lb/a/b/b$a;->k:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v1, "If-None-Match"

    iget-object v2, p0, Lb/a/b/b$a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lb/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;

    :cond_a
    :goto_2
    invoke-virtual {v0}, Lb/z$a;->a()Lb/z;

    move-result-object v1

    invoke-static {v1}, Lb/a/b/b$a;->a(Lb/z;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lb/a/b/b;

    iget-object v2, p0, Lb/a/b/b$a;->c:Lb/ab;

    invoke-direct {v0, v1, v2, v12}, Lb/a/b/b;-><init>(Lb/z;Lb/ab;Lb/a/b/b$1;)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lb/a/b/b$a;->f:Ljava/util/Date;

    if-eqz v1, :cond_c

    const-string v1, "If-Modified-Since"

    iget-object v2, p0, Lb/a/b/b$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lb/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;

    goto :goto_2

    :cond_c
    iget-object v1, p0, Lb/a/b/b$a;->d:Ljava/util/Date;

    if-eqz v1, :cond_a

    const-string v1, "If-Modified-Since"

    iget-object v2, p0, Lb/a/b/b$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lb/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;

    goto :goto_2

    :cond_d
    new-instance v0, Lb/a/b/b;

    invoke-direct {v0, v1, v12, v12}, Lb/a/b/b;-><init>(Lb/z;Lb/ab;Lb/a/b/b$1;)V

    goto/16 :goto_0

    :cond_e
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method private c()J
    .locals 6

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lb/a/b/b$a;->c:Lb/ab;

    invoke-virtual {v0}, Lb/ab;->i()Lb/d;

    move-result-object v0

    invoke-virtual {v0}, Lb/d;->c()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lb/d;->c()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget-object v0, p0, Lb/a/b/b$a;->h:Ljava/util/Date;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/a/b/b$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/a/b/b$a;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_1
    iget-object v4, p0, Lb/a/b/b$a;->h:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    :goto_2
    move-wide v2, v0

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lb/a/b/b$a;->j:J

    goto :goto_1

    :cond_3
    move-wide v0, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lb/a/b/b$a;->f:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/b/b$a;->c:Lb/ab;

    invoke-virtual {v0}, Lb/ab;->a()Lb/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/z;->a()Lb/s;

    move-result-object v0

    invoke-virtual {v0}, Lb/s;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/b/b$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lb/a/b/b$a;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_3
    iget-object v4, p0, Lb/a/b/b$a;->f:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0xa

    div-long v2, v0, v2

    goto :goto_0

    :cond_5
    iget-wide v0, p0, Lb/a/b/b$a;->i:J

    goto :goto_3
.end method

.method private d()J
    .locals 8

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lb/a/b/b$a;->d:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lb/a/b/b$a;->j:J

    iget-object v4, p0, Lb/a/b/b$a;->d:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    iget v2, p0, Lb/a/b/b$a;->l:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lb/a/b/b$a;->l:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_1
    iget-wide v2, p0, Lb/a/b/b$a;->j:J

    iget-wide v4, p0, Lb/a/b/b$a;->i:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lb/a/b/b$a;->a:J

    iget-wide v6, p0, Lb/a/b/b$a;->j:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method private e()Z
    .locals 2

    iget-object v0, p0, Lb/a/b/b$a;->c:Lb/ab;

    invoke-virtual {v0}, Lb/ab;->i()Lb/d;

    move-result-object v0

    invoke-virtual {v0}, Lb/d;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/a/b/b$a;->h:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lb/a/b/b;
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lb/a/b/b$a;->b()Lb/a/b/b;

    move-result-object v0

    iget-object v1, v0, Lb/a/b/b;->a:Lb/z;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/b/b$a;->b:Lb/z;

    invoke-virtual {v1}, Lb/z;->f()Lb/d;

    move-result-object v1

    invoke-virtual {v1}, Lb/d;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lb/a/b/b;

    invoke-direct {v0, v2, v2, v2}, Lb/a/b/b;-><init>(Lb/z;Lb/ab;Lb/a/b/b$1;)V

    :cond_0
    return-object v0
.end method

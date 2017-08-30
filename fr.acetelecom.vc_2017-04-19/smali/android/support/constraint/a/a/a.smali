.class public Landroid/support/constraint/a/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/a/a/a$a;
    }
.end annotation


# static fields
.field private static h:Z


# instance fields
.field private final a:Landroid/support/constraint/a/a/c;

.field private b:Landroid/support/constraint/a/a/a$a;

.field private c:Landroid/support/constraint/a/a/a$a;

.field private d:Landroid/support/constraint/a/a/a$a;

.field private e:J

.field private f:J

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/constraint/a/a/a;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/a/a/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/constraint/a/a/a$a;

    invoke-direct {v0}, Landroid/support/constraint/a/a/a$a;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/a;->b:Landroid/support/constraint/a/a/a$a;

    new-instance v0, Landroid/support/constraint/a/a/a$a;

    invoke-direct {v0}, Landroid/support/constraint/a/a/a$a;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/a;->c:Landroid/support/constraint/a/a/a$a;

    new-instance v0, Landroid/support/constraint/a/a/a$a;

    invoke-direct {v0}, Landroid/support/constraint/a/a/a$a;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/a;->d:Landroid/support/constraint/a/a/a$a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/constraint/a/a/a;->e:J

    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Landroid/support/constraint/a/a/a;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/a/a/a;->g:Z

    iput-object p1, p0, Landroid/support/constraint/a/a/a;->a:Landroid/support/constraint/a/a/c;

    return-void
.end method

.method public static a(DDD)D
    .locals 10

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, p4, p2

    div-double/2addr v0, v8

    mul-double v2, p0, v8

    cmpg-double v4, v2, v6

    if-gez v4, :cond_0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v2

    add-double/2addr v0, p2

    :goto_0
    return-wide v0

    :cond_0
    sub-double/2addr v2, v6

    neg-double v0, v0

    sub-double v4, v2, v8

    mul-double/2addr v2, v4

    sub-double/2addr v2, v6

    mul-double/2addr v0, v2

    add-double/2addr v0, p2

    goto :goto_0
.end method

.method private static a(FFF)I
    .locals 6

    float-to-double v0, p0

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-static/range {v0 .. v5}, Landroid/support/constraint/a/a/a;->a(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Landroid/support/constraint/a/a/a;->h:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Landroid/support/constraint/a/a/a;->h:Z

    return v0
.end method


# virtual methods
.method public a(IIII)V
    .locals 5

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->d:Landroid/support/constraint/a/a/a$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/constraint/a/a/a$a;->a(IIII)V

    invoke-virtual {p0}, Landroid/support/constraint/a/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->a:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->e()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->a:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->f()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->a:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->g()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->a:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->h()I

    move-result v0

    if-eq p4, v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->c:Landroid/support/constraint/a/a/a$a;

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->a:Landroid/support/constraint/a/a/c;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/c;->e()I

    move-result v1

    iget-object v2, p0, Landroid/support/constraint/a/a/a;->a:Landroid/support/constraint/a/a/c;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/c;->f()I

    move-result v2

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->a:Landroid/support/constraint/a/a/c;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/c;->g()I

    move-result v3

    iget-object v4, p0, Landroid/support/constraint/a/a/a;->a:Landroid/support/constraint/a/a/c;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/c;->h()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/constraint/a/a/a$a;->a(IIII)V

    invoke-virtual {p0}, Landroid/support/constraint/a/a/a;->c()V

    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->b:Landroid/support/constraint/a/a/a$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/constraint/a/a/a$a;->a(IIII)V

    invoke-virtual {p0}, Landroid/support/constraint/a/a/a;->d()V

    :cond_2
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/constraint/a/a/a;->g:Z

    return v0
.end method

.method public c()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/constraint/a/a/a;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/a/a/a;->g:Z

    return-void
.end method

.method public d()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/constraint/a/a/a;->e:J

    iget-wide v4, p0, Landroid/support/constraint/a/a/a;->f:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Landroid/support/constraint/a/a/a;->e:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Landroid/support/constraint/a/a/a;->e:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v2, p0, Landroid/support/constraint/a/a/a;->f:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->d:Landroid/support/constraint/a/a/a$a;

    iget-object v2, p0, Landroid/support/constraint/a/a/a;->c:Landroid/support/constraint/a/a/a$a;

    iget v2, v2, Landroid/support/constraint/a/a/a$a;->a:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->b:Landroid/support/constraint/a/a/a$a;

    iget v3, v3, Landroid/support/constraint/a/a/a$a;->a:I

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Landroid/support/constraint/a/a/a;->a(FFF)I

    move-result v2

    iput v2, v1, Landroid/support/constraint/a/a/a$a;->a:I

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->d:Landroid/support/constraint/a/a/a$a;

    iget-object v2, p0, Landroid/support/constraint/a/a/a;->c:Landroid/support/constraint/a/a/a$a;

    iget v2, v2, Landroid/support/constraint/a/a/a$a;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->b:Landroid/support/constraint/a/a/a$a;

    iget v3, v3, Landroid/support/constraint/a/a/a$a;->b:I

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Landroid/support/constraint/a/a/a;->a(FFF)I

    move-result v2

    iput v2, v1, Landroid/support/constraint/a/a/a$a;->b:I

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->d:Landroid/support/constraint/a/a/a$a;

    iget-object v2, p0, Landroid/support/constraint/a/a/a;->c:Landroid/support/constraint/a/a/a$a;

    iget v2, v2, Landroid/support/constraint/a/a/a$a;->c:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->b:Landroid/support/constraint/a/a/a$a;

    iget v3, v3, Landroid/support/constraint/a/a/a$a;->c:I

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Landroid/support/constraint/a/a/a;->a(FFF)I

    move-result v2

    iput v2, v1, Landroid/support/constraint/a/a/a$a;->c:I

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->d:Landroid/support/constraint/a/a/a$a;

    iget-object v2, p0, Landroid/support/constraint/a/a/a;->c:Landroid/support/constraint/a/a/a$a;

    iget v2, v2, Landroid/support/constraint/a/a/a$a;->d:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->b:Landroid/support/constraint/a/a/a$a;

    iget v3, v3, Landroid/support/constraint/a/a/a$a;->d:I

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Landroid/support/constraint/a/a/a;->a(FFF)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/a/a/a$a;->d:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->d:Landroid/support/constraint/a/a/a$a;

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->b:Landroid/support/constraint/a/a/a$a;

    iget v1, v1, Landroid/support/constraint/a/a/a$a;->a:I

    iput v1, v0, Landroid/support/constraint/a/a/a$a;->a:I

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->d:Landroid/support/constraint/a/a/a$a;

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->b:Landroid/support/constraint/a/a/a$a;

    iget v1, v1, Landroid/support/constraint/a/a/a$a;->c:I

    iput v1, v0, Landroid/support/constraint/a/a/a$a;->c:I

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->d:Landroid/support/constraint/a/a/a$a;

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->b:Landroid/support/constraint/a/a/a$a;

    iget v1, v1, Landroid/support/constraint/a/a/a$a;->b:I

    iput v1, v0, Landroid/support/constraint/a/a/a$a;->b:I

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->d:Landroid/support/constraint/a/a/a$a;

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->b:Landroid/support/constraint/a/a/a$a;

    iget v1, v1, Landroid/support/constraint/a/a/a$a;->d:I

    iput v1, v0, Landroid/support/constraint/a/a/a$a;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/a/a/a;->g:Z

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->d:Landroid/support/constraint/a/a/a$a;

    iget v0, v0, Landroid/support/constraint/a/a/a$a;->a:I

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->d:Landroid/support/constraint/a/a/a$a;

    iget v0, v0, Landroid/support/constraint/a/a/a$a;->c:I

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->d:Landroid/support/constraint/a/a/a$a;

    iget v0, v0, Landroid/support/constraint/a/a/a$a;->b:I

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->d:Landroid/support/constraint/a/a/a$a;

    iget v0, v0, Landroid/support/constraint/a/a/a$a;->d:I

    return v0
.end method

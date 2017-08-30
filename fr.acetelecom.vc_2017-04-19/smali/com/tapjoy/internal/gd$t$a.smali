.class public final Lcom/tapjoy/internal/gd$t$a;
.super Lcom/tapjoy/internal/do$a;

# interfaces
.implements Lcom/tapjoy/internal/gd$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field private d:J

.field private e:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$t$a;->c:Ljava/lang/Object;

    return-void
.end method

.method static synthetic e()Lcom/tapjoy/internal/gd$t$a;
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gd$t$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$t$a;-><init>()V

    return-object v0
.end method

.method private f()Lcom/tapjoy/internal/gd$t$a;
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/gd$t$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$t$a;-><init>()V

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$t$a;->g()Lcom/tapjoy/internal/gd$t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gd$t$a;->a(Lcom/tapjoy/internal/gd$t;)Lcom/tapjoy/internal/gd$t$a;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/tapjoy/internal/gd$t;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/tapjoy/internal/gd$t;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gd$t;-><init>(Lcom/tapjoy/internal/do$a;B)V

    iget v3, p0, Lcom/tapjoy/internal/gd$t$a;->b:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gd$t$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$t;->a(Lcom/tapjoy/internal/gd$t;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v4, p0, Lcom/tapjoy/internal/gd$t$a;->d:J

    invoke-static {v2, v4, v5}, Lcom/tapjoy/internal/gd$t;->a(Lcom/tapjoy/internal/gd$t;J)J

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcom/tapjoy/internal/gd$t$a;->e:J

    invoke-static {v2, v4, v5}, Lcom/tapjoy/internal/gd$t;->b(Lcom/tapjoy/internal/gd$t;J)J

    invoke-static {v2, v0}, Lcom/tapjoy/internal/gd$t;->a(Lcom/tapjoy/internal/gd$t;I)I

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$t$a;->f()Lcom/tapjoy/internal/gd$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/tapjoy/internal/gd$t$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$t$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gd$t$a;->b:I

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$t$a;->d:J

    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gd$t;)Lcom/tapjoy/internal/gd$t$a;
    .locals 2

    invoke-static {}, Lcom/tapjoy/internal/gd$t;->d()Lcom/tapjoy/internal/gd$t;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$t;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tapjoy/internal/gd$t$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gd$t$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$t;->b(Lcom/tapjoy/internal/gd$t;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$t$a;->c:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$t;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/tapjoy/internal/gd$t;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gd$t$a;->a(J)Lcom/tapjoy/internal/gd$t$a;

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$t;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lcom/tapjoy/internal/gd$t;->d:J

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gd$t$a;->b(J)Lcom/tapjoy/internal/gd$t$a;

    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    invoke-static {p1}, Lcom/tapjoy/internal/gd$t;->c(Lcom/tapjoy/internal/gd$t;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$t$a;->f()Lcom/tapjoy/internal/gd$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Lcom/tapjoy/internal/gd$t$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$t$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gd$t$a;->b:I

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$t$a;->e:J

    return-object p0
.end method

.method public final c()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/tapjoy/internal/gd$t$a;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/tapjoy/internal/gd$t$a;->b:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    move v2, v1

    :goto_2
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_2
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$t$a;->f()Lcom/tapjoy/internal/gd$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gd$t;
    .locals 2

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$t$a;->g()Lcom/tapjoy/internal/gd$t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$t;->c()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

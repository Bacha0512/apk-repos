.class public final Lcom/tapjoy/internal/gd$n$a;
.super Lcom/tapjoy/internal/do$a;

# interfaces
.implements Lcom/tapjoy/internal/gd$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:I

.field public c:Lcom/tapjoy/internal/gd$l;

.field public d:Lcom/tapjoy/internal/gd$a;

.field public e:Lcom/tapjoy/internal/gd$z;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    invoke-static {}, Lcom/tapjoy/internal/gd$l;->d()Lcom/tapjoy/internal/gd$l;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$n$a;->c:Lcom/tapjoy/internal/gd$l;

    invoke-static {}, Lcom/tapjoy/internal/gd$a;->d()Lcom/tapjoy/internal/gd$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$n$a;->d:Lcom/tapjoy/internal/gd$a;

    invoke-static {}, Lcom/tapjoy/internal/gd$z;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$n$a;->e:Lcom/tapjoy/internal/gd$z;

    return-void
.end method

.method static synthetic e()Lcom/tapjoy/internal/gd$n$a;
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gd$n$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$n$a;-><init>()V

    return-object v0
.end method

.method private f()Lcom/tapjoy/internal/gd$n$a;
    .locals 5

    new-instance v0, Lcom/tapjoy/internal/gd$n$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$n$a;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$n$a;->d()Lcom/tapjoy/internal/gd$n;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/internal/gd$n;->d()Lcom/tapjoy/internal/gd$n;

    move-result-object v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$n;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/tapjoy/internal/gd$n;->c:Lcom/tapjoy/internal/gd$l;

    iget v3, v0, Lcom/tapjoy/internal/gd$n$a;->b:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    iget-object v3, v0, Lcom/tapjoy/internal/gd$n$a;->c:Lcom/tapjoy/internal/gd$l;

    invoke-static {}, Lcom/tapjoy/internal/gd$l;->d()Lcom/tapjoy/internal/gd$l;

    move-result-object v4

    if-eq v3, v4, :cond_4

    iget-object v3, v0, Lcom/tapjoy/internal/gd$n$a;->c:Lcom/tapjoy/internal/gd$l;

    invoke-static {v3}, Lcom/tapjoy/internal/gd$l;->a(Lcom/tapjoy/internal/gd$l;)Lcom/tapjoy/internal/gd$l$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gd$l$a;->a(Lcom/tapjoy/internal/gd$l;)Lcom/tapjoy/internal/gd$l$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$l$a;->d()Lcom/tapjoy/internal/gd$l;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$n$a;->c:Lcom/tapjoy/internal/gd$l;

    :goto_1
    iget v2, v0, Lcom/tapjoy/internal/gd$n$a;->b:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tapjoy/internal/gd$n$a;->b:I

    :cond_1
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$n;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/tapjoy/internal/gd$n;->d:Lcom/tapjoy/internal/gd$a;

    iget v3, v0, Lcom/tapjoy/internal/gd$n$a;->b:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    iget-object v3, v0, Lcom/tapjoy/internal/gd$n$a;->d:Lcom/tapjoy/internal/gd$a;

    invoke-static {}, Lcom/tapjoy/internal/gd$a;->d()Lcom/tapjoy/internal/gd$a;

    move-result-object v4

    if-eq v3, v4, :cond_5

    iget-object v3, v0, Lcom/tapjoy/internal/gd$n$a;->d:Lcom/tapjoy/internal/gd$a;

    invoke-static {v3}, Lcom/tapjoy/internal/gd$a;->a(Lcom/tapjoy/internal/gd$a;)Lcom/tapjoy/internal/gd$a$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gd$a$a;->a(Lcom/tapjoy/internal/gd$a;)Lcom/tapjoy/internal/gd$a$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$a$a;->d()Lcom/tapjoy/internal/gd$a;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$n$a;->d:Lcom/tapjoy/internal/gd$a;

    :goto_2
    iget v2, v0, Lcom/tapjoy/internal/gd$n$a;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/tapjoy/internal/gd$n$a;->b:I

    :cond_2
    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$n;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/tapjoy/internal/gd$n;->e:Lcom/tapjoy/internal/gd$z;

    iget v3, v0, Lcom/tapjoy/internal/gd$n$a;->b:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    iget-object v3, v0, Lcom/tapjoy/internal/gd$n$a;->e:Lcom/tapjoy/internal/gd$z;

    invoke-static {}, Lcom/tapjoy/internal/gd$z;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v4

    if-eq v3, v4, :cond_6

    iget-object v3, v0, Lcom/tapjoy/internal/gd$n$a;->e:Lcom/tapjoy/internal/gd$z;

    invoke-static {v3}, Lcom/tapjoy/internal/gd$z;->a(Lcom/tapjoy/internal/gd$z;)Lcom/tapjoy/internal/gd$z$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gd$z$a;->a(Lcom/tapjoy/internal/gd$z;)Lcom/tapjoy/internal/gd$z$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$z$a;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gd$n$a;->e:Lcom/tapjoy/internal/gd$z;

    :goto_3
    iget v2, v0, Lcom/tapjoy/internal/gd$n$a;->b:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/tapjoy/internal/gd$n$a;->b:I

    :cond_3
    iget-object v2, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    invoke-static {v1}, Lcom/tapjoy/internal/gd$n;->a(Lcom/tapjoy/internal/gd$n;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto/16 :goto_0

    :cond_4
    iput-object v2, v0, Lcom/tapjoy/internal/gd$n$a;->c:Lcom/tapjoy/internal/gd$l;

    goto :goto_1

    :cond_5
    iput-object v2, v0, Lcom/tapjoy/internal/gd$n$a;->d:Lcom/tapjoy/internal/gd$a;

    goto :goto_2

    :cond_6
    iput-object v2, v0, Lcom/tapjoy/internal/gd$n$a;->e:Lcom/tapjoy/internal/gd$z;

    goto :goto_3
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$n$a;->f()Lcom/tapjoy/internal/gd$n$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$n$a;->f()Lcom/tapjoy/internal/gd$n$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/tapjoy/internal/gd$n$a;->b:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tapjoy/internal/gd$n$a;->e:Lcom/tapjoy/internal/gd$z;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$z;->c()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$n$a;->f()Lcom/tapjoy/internal/gd$n$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gd$n;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/tapjoy/internal/gd$n;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gd$n;-><init>(Lcom/tapjoy/internal/do$a;B)V

    iget v3, p0, Lcom/tapjoy/internal/gd$n$a;->b:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gd$n$a;->c:Lcom/tapjoy/internal/gd$l;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$n;->a(Lcom/tapjoy/internal/gd$n;Lcom/tapjoy/internal/gd$l;)Lcom/tapjoy/internal/gd$l;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gd$n$a;->d:Lcom/tapjoy/internal/gd$a;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$n;->a(Lcom/tapjoy/internal/gd$n;Lcom/tapjoy/internal/gd$a;)Lcom/tapjoy/internal/gd$a;

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/gd$n$a;->e:Lcom/tapjoy/internal/gd$z;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$n;->a(Lcom/tapjoy/internal/gd$n;Lcom/tapjoy/internal/gd$z;)Lcom/tapjoy/internal/gd$z;

    invoke-static {v2, v0}, Lcom/tapjoy/internal/gd$n;->a(Lcom/tapjoy/internal/gd$n;I)I

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.class public final Lcom/tapjoy/internal/gd$a$a;
.super Lcom/tapjoy/internal/do$a;

# interfaces
.implements Lcom/tapjoy/internal/gd$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field private g:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$a$a;->c:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$a$a;->d:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$a$a;->e:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$a$a;->f:Ljava/lang/Object;

    return-void
.end method

.method static synthetic g()Lcom/tapjoy/internal/gd$a$a;
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gd$a$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$a$a;-><init>()V

    return-object v0
.end method

.method private h()Lcom/tapjoy/internal/gd$a$a;
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/gd$a$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$a$a;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$a$a;->d()Lcom/tapjoy/internal/gd$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gd$a$a;->a(Lcom/tapjoy/internal/gd$a;)Lcom/tapjoy/internal/gd$a$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$a$a;->h()Lcom/tapjoy/internal/gd$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/tapjoy/internal/gd$a$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$a$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gd$a$a;->b:I

    iput p1, p0, Lcom/tapjoy/internal/gd$a$a;->g:I

    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/gd$a;)Lcom/tapjoy/internal/gd$a$a;
    .locals 2

    invoke-static {}, Lcom/tapjoy/internal/gd$a;->d()Lcom/tapjoy/internal/gd$a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tapjoy/internal/gd$a$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gd$a$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$a;->b(Lcom/tapjoy/internal/gd$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$a$a;->c:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$a;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/tapjoy/internal/gd$a;->c:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gd$a$a;->a(I)Lcom/tapjoy/internal/gd$a$a;

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$a;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/tapjoy/internal/gd$a$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gd$a$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$a;->c(Lcom/tapjoy/internal/gd$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$a$a;->d:Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$a;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/tapjoy/internal/gd$a$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tapjoy/internal/gd$a$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$a;->d(Lcom/tapjoy/internal/gd$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$a$a;->e:Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$a;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/tapjoy/internal/gd$a$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tapjoy/internal/gd$a$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$a;->e(Lcom/tapjoy/internal/gd$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$a$a;->f:Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    invoke-static {p1}, Lcom/tapjoy/internal/gd$a;->f(Lcom/tapjoy/internal/gd$a;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gd$a$a;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$a$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gd$a$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$a$a;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$a$a;->h()Lcom/tapjoy/internal/gd$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$a$a;->h()Lcom/tapjoy/internal/gd$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gd$a;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/tapjoy/internal/gd$a;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gd$a;-><init>(Lcom/tapjoy/internal/do$a;B)V

    iget v3, p0, Lcom/tapjoy/internal/gd$a$a;->b:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gd$a$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$a;->a(Lcom/tapjoy/internal/gd$a;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/tapjoy/internal/gd$a$a;->g:I

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$a;->a(Lcom/tapjoy/internal/gd$a;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/gd$a$a;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$a;->b(Lcom/tapjoy/internal/gd$a;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/gd$a$a;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$a;->c(Lcom/tapjoy/internal/gd$a;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gd$a$a;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$a;->d(Lcom/tapjoy/internal/gd$a;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/tapjoy/internal/gd$a;->b(Lcom/tapjoy/internal/gd$a;I)I

    return-object v2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$a$a;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/tapjoy/internal/gd$a$a;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$a$a;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/tapjoy/internal/gd$a$a;->b:I

    invoke-static {}, Lcom/tapjoy/internal/gd$a;->d()Lcom/tapjoy/internal/gd$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$a$a;->d:Ljava/lang/Object;

    return-object p0
.end method

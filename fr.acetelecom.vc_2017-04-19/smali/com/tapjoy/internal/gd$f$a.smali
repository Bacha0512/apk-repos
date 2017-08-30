.class public final Lcom/tapjoy/internal/gd$f$a;
.super Lcom/tapjoy/internal/do$a;

# interfaces
.implements Lcom/tapjoy/internal/gd$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field private e:Lcom/tapjoy/internal/gd$i;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    sget-object v0, Lcom/tapjoy/internal/gd$i;->a:Lcom/tapjoy/internal/gd$i;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$f$a;->e:Lcom/tapjoy/internal/gd$i;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$f$a;->c:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$f$a;->d:Ljava/lang/Object;

    return-void
.end method

.method static synthetic e()Lcom/tapjoy/internal/gd$f$a;
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gd$f$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$f$a;-><init>()V

    return-object v0
.end method

.method private f()Lcom/tapjoy/internal/gd$f$a;
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/gd$f$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$f$a;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$f$a;->d()Lcom/tapjoy/internal/gd$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gd$f$a;->a(Lcom/tapjoy/internal/gd$f;)Lcom/tapjoy/internal/gd$f$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$f$a;->f()Lcom/tapjoy/internal/gd$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/tapjoy/internal/gd$f;)Lcom/tapjoy/internal/gd$f$a;
    .locals 2

    invoke-static {}, Lcom/tapjoy/internal/gd$f;->d()Lcom/tapjoy/internal/gd$f;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tapjoy/internal/gd$f;->c:Lcom/tapjoy/internal/gd$i;

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gd$f$a;->a(Lcom/tapjoy/internal/gd$i;)Lcom/tapjoy/internal/gd$f$a;

    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$f;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tapjoy/internal/gd$f$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gd$f$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$f;->b(Lcom/tapjoy/internal/gd$f;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$f$a;->c:Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$f;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/tapjoy/internal/gd$f$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gd$f$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$f;->c(Lcom/tapjoy/internal/gd$f;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$f$a;->d:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    invoke-static {p1}, Lcom/tapjoy/internal/gd$f;->d(Lcom/tapjoy/internal/gd$f;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method public final a(Lcom/tapjoy/internal/gd$i;)Lcom/tapjoy/internal/gd$f$a;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$f$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gd$f$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$f$a;->e:Lcom/tapjoy/internal/gd$i;

    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$f$a;->f()Lcom/tapjoy/internal/gd$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/tapjoy/internal/gd$f$a;->b:I

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
    iget v2, p0, Lcom/tapjoy/internal/gd$f$a;->b:I

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

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$f$a;->f()Lcom/tapjoy/internal/gd$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gd$f;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/tapjoy/internal/gd$f;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gd$f;-><init>(Lcom/tapjoy/internal/do$a;B)V

    iget v3, p0, Lcom/tapjoy/internal/gd$f$a;->b:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gd$f$a;->e:Lcom/tapjoy/internal/gd$i;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$f;->a(Lcom/tapjoy/internal/gd$f;Lcom/tapjoy/internal/gd$i;)Lcom/tapjoy/internal/gd$i;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gd$f$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$f;->a(Lcom/tapjoy/internal/gd$f;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/gd$f$a;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$f;->b(Lcom/tapjoy/internal/gd$f;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/tapjoy/internal/gd$f;->a(Lcom/tapjoy/internal/gd$f;I)I

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

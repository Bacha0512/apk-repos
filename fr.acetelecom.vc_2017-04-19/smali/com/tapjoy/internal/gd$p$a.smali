.class public final Lcom/tapjoy/internal/gd$p$a;
.super Lcom/tapjoy/internal/do$a;

# interfaces
.implements Lcom/tapjoy/internal/gd$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$p$a;->c:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$p$a;->d:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$p$a;->e:Ljava/lang/Object;

    return-void
.end method

.method static synthetic f()Lcom/tapjoy/internal/gd$p$a;
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gd$p$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$p$a;-><init>()V

    return-object v0
.end method

.method private g()Lcom/tapjoy/internal/gd$p$a;
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/gd$p$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$p$a;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$p$a;->e()Lcom/tapjoy/internal/gd$p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gd$p$a;->a(Lcom/tapjoy/internal/gd$p;)Lcom/tapjoy/internal/gd$p$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$p$a;->g()Lcom/tapjoy/internal/gd$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/tapjoy/internal/gd$p;)Lcom/tapjoy/internal/gd$p$a;
    .locals 2

    invoke-static {}, Lcom/tapjoy/internal/gd$p;->d()Lcom/tapjoy/internal/gd$p;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$p;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tapjoy/internal/gd$p$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gd$p$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$p;->b(Lcom/tapjoy/internal/gd$p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$p$a;->c:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$p;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tapjoy/internal/gd$p$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gd$p$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$p;->c(Lcom/tapjoy/internal/gd$p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$p$a;->d:Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$p;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/tapjoy/internal/gd$p$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gd$p$a;->b:I

    invoke-static {p1}, Lcom/tapjoy/internal/gd$p;->d(Lcom/tapjoy/internal/gd$p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$p$a;->e:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    invoke-static {p1}, Lcom/tapjoy/internal/gd$p;->e(Lcom/tapjoy/internal/gd$p;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gd$p$a;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$p$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gd$p$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$p$a;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$p$a;->g()Lcom/tapjoy/internal/gd$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/gd$p$a;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$p$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gd$p$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$p$a;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/tapjoy/internal/gd$p$a;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$p$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gd$p$a;->b:I

    iput-object p1, p0, Lcom/tapjoy/internal/gd$p$a;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$p$a;->g()Lcom/tapjoy/internal/gd$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gd$p;
    .locals 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$p$a;->e()Lcom/tapjoy/internal/gd$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$p;->c()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final e()Lcom/tapjoy/internal/gd$p;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/tapjoy/internal/gd$p;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gd$p;-><init>(Lcom/tapjoy/internal/do$a;B)V

    iget v3, p0, Lcom/tapjoy/internal/gd$p$a;->b:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gd$p$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$p;->a(Lcom/tapjoy/internal/gd$p;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gd$p$a;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$p;->b(Lcom/tapjoy/internal/gd$p;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/gd$p$a;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gd$p;->c(Lcom/tapjoy/internal/gd$p;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/tapjoy/internal/gd$p;->a(Lcom/tapjoy/internal/gd$p;I)I

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

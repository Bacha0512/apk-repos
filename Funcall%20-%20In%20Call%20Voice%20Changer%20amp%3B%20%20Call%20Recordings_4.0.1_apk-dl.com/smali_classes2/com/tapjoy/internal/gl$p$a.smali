.class public final Lcom/tapjoy/internal/gl$p$a;
.super Lcom/tapjoy/internal/do$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$p;
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

    .prologue
    .line 13993
    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    .line 14095
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p$a;->c:Ljava/lang/Object;

    .line 14171
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p$a;->d:Ljava/lang/Object;

    .line 14247
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p$a;->e:Ljava/lang/Object;

    .line 13995
    return-void
.end method

.method static synthetic f()Lcom/tapjoy/internal/gl$p$a;
    .locals 1

    .prologue
    .line 17000
    new-instance v0, Lcom/tapjoy/internal/gl$p$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$p$a;-><init>()V

    .line 13986
    return-object v0
.end method

.method private g()Lcom/tapjoy/internal/gl$p$a;
    .locals 2

    .prologue
    .line 15000
    new-instance v0, Lcom/tapjoy/internal/gl$p$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$p$a;-><init>()V

    .line 14015
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p$a;->e()Lcom/tapjoy/internal/gl$p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$p$a;->a(Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/gl$p$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    .prologue
    .line 13986
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$p$a;->g()Lcom/tapjoy/internal/gl$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/gl$p$a;
    .locals 2

    .prologue
    .line 14051
    invoke-static {}, Lcom/tapjoy/internal/gl$p;->d()Lcom/tapjoy/internal/gl$p;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 14069
    :goto_0
    return-object p0

    .line 14052
    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$p;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14053
    iget v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    .line 14054
    invoke-static {p1}, Lcom/tapjoy/internal/gl$p;->b(Lcom/tapjoy/internal/gl$p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p$a;->c:Ljava/lang/Object;

    .line 14057
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$p;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14058
    iget v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    .line 14059
    invoke-static {p1}, Lcom/tapjoy/internal/gl$p;->c(Lcom/tapjoy/internal/gl$p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p$a;->d:Ljava/lang/Object;

    .line 14062
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$p;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14063
    iget v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    .line 14064
    invoke-static {p1}, Lcom/tapjoy/internal/gl$p;->d(Lcom/tapjoy/internal/gl$p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p$a;->e:Ljava/lang/Object;

    .line 16123
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 14067
    invoke-static {p1}, Lcom/tapjoy/internal/gl$p;->e(Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    .line 16127
    iput-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$p$a;
    .locals 1

    .prologue
    .line 14140
    if-nez p1, :cond_0

    .line 14141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14143
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    .line 14144
    iput-object p1, p0, Lcom/tapjoy/internal/gl$p$a;->c:Ljava/lang/Object;

    .line 14146
    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    .prologue
    .line 13986
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$p$a;->g()Lcom/tapjoy/internal/gl$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$p$a;
    .locals 1

    .prologue
    .line 14216
    if-nez p1, :cond_0

    .line 14217
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14219
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    .line 14220
    iput-object p1, p0, Lcom/tapjoy/internal/gl$p$a;->d:Ljava/lang/Object;

    .line 14222
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$p$a;
    .locals 1

    .prologue
    .line 14292
    if-nez p1, :cond_0

    .line 14293
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14295
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    .line 14296
    iput-object p1, p0, Lcom/tapjoy/internal/gl$p$a;->e:Ljava/lang/Object;

    .line 14298
    return-object p0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 14073
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13986
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$p$a;->g()Lcom/tapjoy/internal/gl$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gl$p;
    .locals 2

    .prologue
    .line 14023
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p$a;->e()Lcom/tapjoy/internal/gl$p;

    move-result-object v0

    .line 14024
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$p;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15316
    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    .line 14025
    throw v0

    .line 14027
    :cond_0
    return-object v0
.end method

.method public final e()Lcom/tapjoy/internal/gl$p;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 14031
    new-instance v2, Lcom/tapjoy/internal/gl$p;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gl$p;-><init>(Lcom/tapjoy/internal/do$a;B)V

    .line 14032
    iget v3, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    .line 14034
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 14037
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$p$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$p;->a(Lcom/tapjoy/internal/gl$p;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14038
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 14039
    or-int/lit8 v0, v0, 0x2

    .line 14041
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$p$a;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$p;->b(Lcom/tapjoy/internal/gl$p;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14042
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 14043
    or-int/lit8 v0, v0, 0x4

    .line 14045
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/gl$p$a;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$p;->c(Lcom/tapjoy/internal/gl$p;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14046
    invoke-static {v2, v0}, Lcom/tapjoy/internal/gl$p;->a(Lcom/tapjoy/internal/gl$p;I)I

    .line 14047
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

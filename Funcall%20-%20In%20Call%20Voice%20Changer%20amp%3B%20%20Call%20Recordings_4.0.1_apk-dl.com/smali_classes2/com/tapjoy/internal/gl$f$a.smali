.class public final Lcom/tapjoy/internal/gl$f$a;
.super Lcom/tapjoy/internal/do$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field private e:Lcom/tapjoy/internal/gl$i;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13230
    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    .line 13338
    sget-object v0, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f$a;->e:Lcom/tapjoy/internal/gl$i;

    .line 13373
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f$a;->c:Ljava/lang/Object;

    .line 13449
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f$a;->d:Ljava/lang/Object;

    .line 13232
    return-void
.end method

.method static synthetic e()Lcom/tapjoy/internal/gl$f$a;
    .locals 1

    .prologue
    .line 16237
    new-instance v0, Lcom/tapjoy/internal/gl$f$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$f$a;-><init>()V

    .line 13223
    return-object v0
.end method

.method private f()Lcom/tapjoy/internal/gl$f$a;
    .locals 2

    .prologue
    .line 14237
    new-instance v0, Lcom/tapjoy/internal/gl$f$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$f$a;-><init>()V

    .line 13252
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f$a;->d()Lcom/tapjoy/internal/gl$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$f$a;->a(Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    .prologue
    .line 13223
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$f$a;->f()Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/gl$f$a;
    .locals 2

    .prologue
    .line 13288
    invoke-static {}, Lcom/tapjoy/internal/gl$f;->d()Lcom/tapjoy/internal/gl$f;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 13304
    :goto_0
    return-object p0

    .line 13289
    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14951
    iget-object v0, p1, Lcom/tapjoy/internal/gl$f;->c:Lcom/tapjoy/internal/gl$i;

    .line 13290
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gl$f$a;->a(Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$f$a;

    .line 13292
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13293
    iget v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    .line 13294
    invoke-static {p1}, Lcom/tapjoy/internal/gl$f;->b(Lcom/tapjoy/internal/gl$f;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f$a;->c:Ljava/lang/Object;

    .line 13297
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13298
    iget v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    .line 13299
    invoke-static {p1}, Lcom/tapjoy/internal/gl$f;->c(Lcom/tapjoy/internal/gl$f;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f$a;->d:Ljava/lang/Object;

    .line 15123
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 13302
    invoke-static {p1}, Lcom/tapjoy/internal/gl$f;->d(Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    .line 15127
    iput-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method public final a(Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$f$a;
    .locals 1

    .prologue
    .line 13355
    if-nez p1, :cond_0

    .line 13356
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13358
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    .line 13359
    iput-object p1, p0, Lcom/tapjoy/internal/gl$f$a;->e:Lcom/tapjoy/internal/gl$i;

    .line 13361
    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    .prologue
    .line 13223
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$f$a;->f()Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 13308
    .line 15343
    iget v2, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1

    move v2, v1

    .line 13308
    :goto_0
    if-nez v2, :cond_2

    .line 13316
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 15343
    goto :goto_0

    .line 15378
    :cond_2
    iget v2, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    move v2, v1

    .line 13312
    :goto_2
    if-eqz v2, :cond_0

    move v0, v1

    .line 13316
    goto :goto_1

    :cond_3
    move v2, v0

    .line 15378
    goto :goto_2
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13223
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$f$a;->f()Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tapjoy/internal/gl$f;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13268
    new-instance v2, Lcom/tapjoy/internal/gl$f;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gl$f;-><init>(Lcom/tapjoy/internal/do$a;B)V

    .line 13269
    iget v3, p0, Lcom/tapjoy/internal/gl$f$a;->b:I

    .line 13271
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 13274
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$f$a;->e:Lcom/tapjoy/internal/gl$i;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$f;->a(Lcom/tapjoy/internal/gl$f;Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$i;

    .line 13275
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 13276
    or-int/lit8 v0, v0, 0x2

    .line 13278
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$f$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$f;->a(Lcom/tapjoy/internal/gl$f;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13279
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 13280
    or-int/lit8 v0, v0, 0x4

    .line 13282
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/gl$f$a;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$f;->b(Lcom/tapjoy/internal/gl$f;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13283
    invoke-static {v2, v0}, Lcom/tapjoy/internal/gl$f;->a(Lcom/tapjoy/internal/gl$f;I)I

    .line 13284
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

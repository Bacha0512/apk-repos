.class public Lcom/twitter/sdk/android/core/identity/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/identity/i$b;,
        Lcom/twitter/sdk/android/core/identity/i$a;
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/sdk/android/core/identity/b;

.field final b:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->a()Lcom/twitter/sdk/android/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/o;->w()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->a()Lcom/twitter/sdk/android/core/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/o;->b()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v1

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->a()Lcom/twitter/sdk/android/core/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/o;->f()Lcom/twitter/sdk/android/core/k;

    move-result-object v2

    invoke-static {}, Lcom/twitter/sdk/android/core/identity/i$a;->a()Lcom/twitter/sdk/android/core/identity/b;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/identity/i;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/identity/b;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/identity/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;",
            "Lcom/twitter/sdk/android/core/identity/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/twitter/sdk/android/core/identity/i;->a:Lcom/twitter/sdk/android/core/identity/b;

    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/i;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/i;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iput-object p3, p0, Lcom/twitter/sdk/android/core/identity/i;->b:Lcom/twitter/sdk/android/core/k;

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/i$b;)Z
    .locals 4

    invoke-static {p1}, Lcom/twitter/sdk/android/core/identity/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Using SSO"

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/i;->a:Lcom/twitter/sdk/android/core/identity/b;

    new-instance v1, Lcom/twitter/sdk/android/core/identity/g;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/i;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/identity/i;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->c()I

    move-result v3

    invoke-direct {v1, v2, p2, v3}, Lcom/twitter/sdk/android/core/identity/g;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/c;I)V

    invoke-virtual {v0, p1, v1}, Lcom/twitter/sdk/android/core/identity/b;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/a;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/i;->a()Lcom/twitter/sdk/android/core/internal/scribe/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;-><init>()V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v1

    const-string v2, "login"

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->b(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->c(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->d(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->e(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v1

    const-string v2, "impression"

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->f(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->a()Lcom/twitter/sdk/android/core/internal/scribe/c;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/twitter/sdk/android/core/internal/scribe/c;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a([Lcom/twitter/sdk/android/core/internal/scribe/c;)V

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;Lcom/twitter/sdk/android/core/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/i;->b()V

    new-instance v0, Lcom/twitter/sdk/android/core/identity/i$b;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/i;->b:Lcom/twitter/sdk/android/core/k;

    invoke-direct {v0, v1, p2}, Lcom/twitter/sdk/android/core/identity/i$b;-><init>(Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/c;)V

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/identity/i;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/i$b;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/identity/i;->b(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/i$b;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/twitter/sdk/android/core/n;

    const-string v2, "Authorize failed."

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/identity/i$b;->a(Lcom/twitter/sdk/android/core/p;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/i$b;)Z
    .locals 4

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Using OAuth"

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/i;->a:Lcom/twitter/sdk/android/core/identity/b;

    new-instance v1, Lcom/twitter/sdk/android/core/identity/d;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/i;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/identity/i;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->c()I

    move-result v3

    invoke-direct {v1, v2, p2, v3}, Lcom/twitter/sdk/android/core/identity/d;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/c;I)V

    invoke-virtual {v0, p1, v1}, Lcom/twitter/sdk/android/core/identity/b;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/a;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()Lcom/twitter/sdk/android/core/internal/scribe/a;
    .locals 1

    invoke-static {}, Lcom/twitter/sdk/android/core/internal/scribe/l;->a()Lcom/twitter/sdk/android/core/internal/scribe/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Cannot authorize, activity is finishing."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, La/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/identity/i;->b(Landroid/app/Activity;Lcom/twitter/sdk/android/core/c;)V

    goto :goto_0
.end method

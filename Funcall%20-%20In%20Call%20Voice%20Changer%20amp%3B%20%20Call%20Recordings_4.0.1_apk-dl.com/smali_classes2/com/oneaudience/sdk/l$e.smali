.class final Lcom/oneaudience/sdk/l$e;
.super Lcom/oneaudience/sdk/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/oneaudience/sdk/l;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/oneaudience/sdk/l;)V
    .locals 1

    iput-object p1, p0, Lcom/oneaudience/sdk/l$e;->a:Lcom/oneaudience/sdk/l;

    invoke-direct {p0}, Lcom/oneaudience/sdk/o;-><init>()V

    const-class v0, Lcom/oneaudience/sdk/l$e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneaudience/sdk/l$e;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneaudience/sdk/l;Lcom/oneaudience/sdk/l$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneaudience/sdk/l$e;-><init>(Lcom/oneaudience/sdk/l;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    const-string v0, "appKey"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oneaudience/sdk/l$e;->b:Ljava/lang/String;

    const-string v1, "App key is null"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "appKey"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "opt_out"

    invoke-virtual {p3, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/oneaudience/sdk/l$e;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v2}, Lcom/oneaudience/sdk/l;->b(Lcom/oneaudience/sdk/l;)Lcom/oneaudience/sdk/l$i;

    move-result-object v2

    new-instance v3, Lcom/oneaudience/sdk/l$a;

    iget-object v4, p0, Lcom/oneaudience/sdk/l$e;->a:Lcom/oneaudience/sdk/l;

    invoke-direct {v3, v4, v6}, Lcom/oneaudience/sdk/l$a;-><init>(Lcom/oneaudience/sdk/l;Lcom/oneaudience/sdk/l$1;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneaudience/sdk/l$e;->a(Lcom/oneaudience/sdk/r$b;Lcom/oneaudience/sdk/q;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/oneaudience/sdk/l$e;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v2}, Lcom/oneaudience/sdk/l;->c(Lcom/oneaudience/sdk/l;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneaudience/sdk/l$e;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v3}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneaudience/sdk/f;->c(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "appKey"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "opt_out"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "force_config"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lcom/oneaudience/sdk/l$c;

    iget-object v1, p0, Lcom/oneaudience/sdk/l$e;->a:Lcom/oneaudience/sdk/l;

    invoke-direct {v0, v1, v6}, Lcom/oneaudience/sdk/l$c;-><init>(Lcom/oneaudience/sdk/l;Lcom/oneaudience/sdk/l$1;)V

    invoke-virtual {v0, v6, v6, v2}, Lcom/oneaudience/sdk/l$c;->a(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/oneaudience/sdk/l$e;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v2}, Lcom/oneaudience/sdk/l;->b(Lcom/oneaudience/sdk/l;)Lcom/oneaudience/sdk/l$i;

    move-result-object v2

    new-instance v3, Lcom/oneaudience/sdk/l$f;

    iget-object v4, p0, Lcom/oneaudience/sdk/l$e;->a:Lcom/oneaudience/sdk/l;

    invoke-direct {v3, v4, v6}, Lcom/oneaudience/sdk/l$f;-><init>(Lcom/oneaudience/sdk/l;Lcom/oneaudience/sdk/l$1;)V

    new-array v4, v5, [Landroid/os/Bundle;

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneaudience/sdk/l$e;->a(Lcom/oneaudience/sdk/r$b;Lcom/oneaudience/sdk/q;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/oneaudience/sdk/l$e;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v2}, Lcom/oneaudience/sdk/l;->b(Lcom/oneaudience/sdk/l;)Lcom/oneaudience/sdk/l$i;

    move-result-object v2

    new-instance v3, Lcom/oneaudience/sdk/l$b;

    iget-object v4, p0, Lcom/oneaudience/sdk/l$e;->a:Lcom/oneaudience/sdk/l;

    invoke-direct {v3, v4, v0, v1}, Lcom/oneaudience/sdk/l$b;-><init>(Lcom/oneaudience/sdk/l;Ljava/lang/String;Z)V

    new-array v0, v5, [Ljava/lang/Void;

    invoke-virtual {p0, v2, v3, v0}, Lcom/oneaudience/sdk/l$e;->b(Lcom/oneaudience/sdk/r$b;Lcom/oneaudience/sdk/q;[Ljava/lang/Object;)V

    goto :goto_0
.end method

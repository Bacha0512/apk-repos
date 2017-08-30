.class final Lcom/oneaudience/sdk/l$c;
.super Lcom/oneaudience/sdk/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oneaudience/sdk/l;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/oneaudience/sdk/l;)V
    .locals 1

    iput-object p1, p0, Lcom/oneaudience/sdk/l$c;->a:Lcom/oneaudience/sdk/l;

    invoke-direct {p0}, Lcom/oneaudience/sdk/o;-><init>()V

    const-class v0, Lcom/oneaudience/sdk/l$e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneaudience/sdk/l$c;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneaudience/sdk/l;Lcom/oneaudience/sdk/l$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneaudience/sdk/l$c;-><init>(Lcom/oneaudience/sdk/l;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p3, :cond_0

    const-string v0, "appKey"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oneaudience/sdk/l$c;->b:Ljava/lang/String;

    const-string v1, "App key is null"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "appKey"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "force_config"

    invoke-virtual {p3, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "opt_out"

    invoke-virtual {p3, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/oneaudience/sdk/l$c;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v3}, Lcom/oneaudience/sdk/l;->b(Lcom/oneaudience/sdk/l;)Lcom/oneaudience/sdk/l$i;

    move-result-object v3

    new-instance v4, Lcom/oneaudience/sdk/l$d;

    iget-object v5, p0, Lcom/oneaudience/sdk/l$c;->a:Lcom/oneaudience/sdk/l;

    invoke-direct {v4, v5, v0, v1, v2}, Lcom/oneaudience/sdk/l$d;-><init>(Lcom/oneaudience/sdk/l;Ljava/lang/String;ZZ)V

    new-array v0, v6, [Ljava/lang/Void;

    invoke-virtual {p0, v3, v4, v0}, Lcom/oneaudience/sdk/l$c;->b(Lcom/oneaudience/sdk/r$b;Lcom/oneaudience/sdk/q;[Ljava/lang/Object;)V

    goto :goto_0
.end method

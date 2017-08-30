.class final Lcom/oneaudience/sdk/l$g;
.super Lcom/oneaudience/sdk/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/oneaudience/sdk/l;

.field private b:Landroid/app/Activity;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oneaudience/sdk/l;Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/oneaudience/sdk/l$g;->a:Lcom/oneaudience/sdk/l;

    invoke-direct {p0}, Lcom/oneaudience/sdk/o;-><init>()V

    const-class v0, Lcom/oneaudience/sdk/l$g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneaudience/sdk/l$g;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneaudience/sdk/l$g;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method a(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    if-eqz p3, :cond_0

    const-string v0, "appKey"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oneaudience/sdk/l$g;->c:Ljava/lang/String;

    const-string v1, "App key is null"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "appKey"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneaudience/sdk/l$g;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v1}, Lcom/oneaudience/sdk/l;->b(Lcom/oneaudience/sdk/l;)Lcom/oneaudience/sdk/l$i;

    move-result-object v1

    new-instance v2, Lcom/oneaudience/sdk/l$h;

    iget-object v3, p0, Lcom/oneaudience/sdk/l$g;->a:Lcom/oneaudience/sdk/l;

    iget-object v4, p0, Lcom/oneaudience/sdk/l$g;->b:Landroid/app/Activity;

    invoke-direct {v2, v3, v0, v4}, Lcom/oneaudience/sdk/l$h;-><init>(Lcom/oneaudience/sdk/l;Ljava/lang/String;Landroid/app/Activity;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v1, v2, v0}, Lcom/oneaudience/sdk/l$g;->b(Lcom/oneaudience/sdk/r$b;Lcom/oneaudience/sdk/q;[Ljava/lang/Object;)V

    goto :goto_0
.end method

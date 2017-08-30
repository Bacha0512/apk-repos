.class Lcom/oneaudience/sdk/l$f;
.super Lcom/oneaudience/sdk/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneaudience/sdk/q",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oneaudience/sdk/l;


# direct methods
.method private constructor <init>(Lcom/oneaudience/sdk/l;)V
    .locals 0

    iput-object p1, p0, Lcom/oneaudience/sdk/l$f;->a:Lcom/oneaudience/sdk/l;

    invoke-direct {p0}, Lcom/oneaudience/sdk/q;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneaudience/sdk/l;Lcom/oneaudience/sdk/l$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneaudience/sdk/l$f;-><init>(Lcom/oneaudience/sdk/l;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/oneaudience/sdk/l$f;->a([Landroid/os/Bundle;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Landroid/os/Bundle;)Ljava/lang/Void;
    .locals 5

    invoke-static {}, Lcom/oneaudience/sdk/b/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneaudience/sdk/l$f;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v1}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "facebook_json"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/oneaudience/sdk/j;

    invoke-direct {v1}, Lcom/oneaudience/sdk/j;-><init>()V

    new-instance v2, Lcom/oneaudience/sdk/c;

    invoke-direct {v2}, Lcom/oneaudience/sdk/c;-><init>()V

    iget-object v3, p0, Lcom/oneaudience/sdk/l$f;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v3}, Lcom/oneaudience/sdk/l;->c(Lcom/oneaudience/sdk/l;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oneaudience/sdk/l$f;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v4}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/oneaudience/sdk/j;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/oneaudience/sdk/b/a/c;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/oneaudience/sdk/c;->a(Lcom/oneaudience/sdk/b/a/c;)Lcom/oneaudience/sdk/b/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oneaudience/sdk/l$f;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v2}, Lcom/oneaudience/sdk/l;->c(Lcom/oneaudience/sdk/l;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneaudience/sdk/l$f;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v3}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/oneaudience/sdk/j;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/oneaudience/sdk/b/a/d;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

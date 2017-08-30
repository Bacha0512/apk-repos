.class Lcom/oneaudience/sdk/l$h;
.super Lcom/oneaudience/sdk/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneaudience/sdk/q",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/app/Activity;

.field final synthetic c:Lcom/oneaudience/sdk/l;


# direct methods
.method public constructor <init>(Lcom/oneaudience/sdk/l;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneaudience/sdk/l$h;->c:Lcom/oneaudience/sdk/l;

    invoke-direct {p0}, Lcom/oneaudience/sdk/q;-><init>()V

    iput-object p2, p0, Lcom/oneaudience/sdk/l$h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneaudience/sdk/l$h;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneaudience/sdk/l$h;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    iget-object v0, p0, Lcom/oneaudience/sdk/l$h;->b:Landroid/app/Activity;

    new-instance v1, Lcom/oneaudience/sdk/h;

    invoke-direct {v1}, Lcom/oneaudience/sdk/h;-><init>()V

    iget-object v2, p0, Lcom/oneaudience/sdk/l$h;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oneaudience/sdk/l$h;->c:Lcom/oneaudience/sdk/l;

    invoke-static {v3}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/oneaudience/sdk/l$h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/oneaudience/sdk/h;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/oneaudience/sdk/b/a/c;

    move-result-object v1

    iget-object v1, v1, Lcom/oneaudience/sdk/b/a/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

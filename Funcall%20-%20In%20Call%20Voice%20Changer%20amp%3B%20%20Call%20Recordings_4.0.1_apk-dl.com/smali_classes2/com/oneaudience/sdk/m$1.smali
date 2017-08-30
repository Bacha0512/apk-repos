.class Lcom/oneaudience/sdk/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneaudience/sdk/m;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneaudience/sdk/m;


# direct methods
.method constructor <init>(Lcom/oneaudience/sdk/m;)V
    .locals 0

    iput-object p1, p0, Lcom/oneaudience/sdk/m$1;->a:Lcom/oneaudience/sdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneaudience/sdk/m$1;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v0}, Lcom/oneaudience/sdk/m;->a(Lcom/oneaudience/sdk/m;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m$1;->a:Lcom/oneaudience/sdk/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/m;->a(Lcom/oneaudience/sdk/m;Z)Z

    iget-object v0, p0, Lcom/oneaudience/sdk/m$1;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v0}, Lcom/oneaudience/sdk/m;->b(Lcom/oneaudience/sdk/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/oneaudience/sdk/m;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error in webview dismiss"

    invoke-static {v1, v2, v0}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

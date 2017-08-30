.class Lcom/oneaudience/sdk/r$c$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/r$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneaudience/sdk/r$c;


# direct methods
.method constructor <init>(Lcom/oneaudience/sdk/r$c;)V
    .locals 0

    iput-object p1, p0, Lcom/oneaudience/sdk/r$c$1;->a:Lcom/oneaudience/sdk/r$c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/r$c$1;->a:Lcom/oneaudience/sdk/r$c;

    invoke-static {v0}, Lcom/oneaudience/sdk/r$c;->a(Lcom/oneaudience/sdk/r$c;)Lcom/oneaudience/sdk/r$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/r$c$1;->a:Lcom/oneaudience/sdk/r$c;

    invoke-static {v0}, Lcom/oneaudience/sdk/r$c;->a(Lcom/oneaudience/sdk/r$c;)Lcom/oneaudience/sdk/r$b;

    move-result-object v0

    instance-of v0, v0, Lcom/oneaudience/sdk/r$a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message_extra_exception"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/r$c$1;->a:Lcom/oneaudience/sdk/r$c;

    invoke-static {v0}, Lcom/oneaudience/sdk/r$c;->a(Lcom/oneaudience/sdk/r$c;)Lcom/oneaudience/sdk/r$b;

    move-result-object v0

    check-cast v0, Lcom/oneaudience/sdk/r$a;

    iget-object v2, p0, Lcom/oneaudience/sdk/r$c$1;->a:Lcom/oneaudience/sdk/r$c;

    invoke-static {v2}, Lcom/oneaudience/sdk/r$c;->b(Lcom/oneaudience/sdk/r$c;)Lcom/oneaudience/sdk/q;

    move-result-object v2

    check-cast v1, Ljava/lang/Exception;

    invoke-interface {v0, v2, v1}, Lcom/oneaudience/sdk/r$a;->a(Lcom/oneaudience/sdk/q;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/oneaudience/sdk/r$c$1;->a:Lcom/oneaudience/sdk/r$c;

    invoke-static {v1}, Lcom/oneaudience/sdk/r$c;->c(Lcom/oneaudience/sdk/r$c;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "oneaudience"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/oneaudience/sdk/r$c$1;->a:Lcom/oneaudience/sdk/r$c;

    invoke-static {v2}, Lcom/oneaudience/sdk/r$c;->c(Lcom/oneaudience/sdk/r$c;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed on ExceptionTaskWrapper, handleMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/oneaudience/sdk/f;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/Object;)V

    goto :goto_0
.end method

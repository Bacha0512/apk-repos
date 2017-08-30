.class public abstract Lcom/fyber/requesters/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fyber/requesters/Callback;


# instance fields
.field protected final a:Lcom/fyber/requesters/Callback;

.field protected final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/fyber/requesters/Callback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/requesters/a/b;->a:Lcom/fyber/requesters/Callback;

    iput-object p2, p0, Lcom/fyber/requesters/a/b;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/fyber/utils/d;)V
    .locals 1

    iget-object v0, p0, Lcom/fyber/requesters/a/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/requesters/a/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    invoke-static {p1}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/d;)V

    goto :goto_0
.end method

.method public onRequestError(Lcom/fyber/requesters/RequestError;)V
    .locals 1

    new-instance v0, Lcom/fyber/requesters/a/b$1;

    invoke-direct {v0, p0, p1}, Lcom/fyber/requesters/a/b$1;-><init>(Lcom/fyber/requesters/a/b;Lcom/fyber/requesters/RequestError;)V

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/a/b;->a(Lcom/fyber/utils/d;)V

    return-void
.end method

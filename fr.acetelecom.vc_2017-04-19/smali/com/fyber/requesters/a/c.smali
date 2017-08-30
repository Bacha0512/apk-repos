.class public final Lcom/fyber/requesters/a/c;
.super Lcom/fyber/requesters/a/b;

# interfaces
.implements Lcom/fyber/requesters/RequestCallback;


# direct methods
.method public constructor <init>(Lcom/fyber/requesters/RequestCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fyber/requesters/a/b;-><init>(Lcom/fyber/requesters/Callback;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onAdAvailable(Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lcom/fyber/requesters/a/c$1;

    invoke-direct {v0, p0, p1}, Lcom/fyber/requesters/a/c$1;-><init>(Lcom/fyber/requesters/a/c;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/a/c;->a(Lcom/fyber/utils/d;)V

    return-void
.end method

.method public final onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V
    .locals 1

    new-instance v0, Lcom/fyber/requesters/a/c$2;

    invoke-direct {v0, p0, p1}, Lcom/fyber/requesters/a/c$2;-><init>(Lcom/fyber/requesters/a/c;Lcom/fyber/ads/AdFormat;)V

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/a/c;->a(Lcom/fyber/utils/d;)V

    return-void
.end method

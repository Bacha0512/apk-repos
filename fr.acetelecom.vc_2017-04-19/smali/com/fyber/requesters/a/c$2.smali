.class final Lcom/fyber/requesters/a/c$2;
.super Lcom/fyber/utils/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/requesters/a/c;->onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/AdFormat;

.field final synthetic b:Lcom/fyber/requesters/a/c;


# direct methods
.method constructor <init>(Lcom/fyber/requesters/a/c;Lcom/fyber/ads/AdFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/requesters/a/c$2;->b:Lcom/fyber/requesters/a/c;

    iput-object p2, p0, Lcom/fyber/requesters/a/c$2;->a:Lcom/fyber/ads/AdFormat;

    invoke-direct {p0}, Lcom/fyber/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/fyber/requesters/a/c$2;->b:Lcom/fyber/requesters/a/c;

    iget-object v0, v0, Lcom/fyber/requesters/a/c;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/RequestCallback;

    iget-object v1, p0, Lcom/fyber/requesters/a/c$2;->a:Lcom/fyber/ads/AdFormat;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/RequestCallback;->onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V

    return-void
.end method

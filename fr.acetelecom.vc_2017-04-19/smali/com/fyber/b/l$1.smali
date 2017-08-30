.class final Lcom/fyber/b/l$1;
.super Lcom/fyber/utils/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/b/l;


# direct methods
.method constructor <init>(Lcom/fyber/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/b/l$1;->a:Lcom/fyber/b/l;

    invoke-direct {p0}, Lcom/fyber/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/fyber/b/l$1;->a:Lcom/fyber/b/l;

    invoke-static {v0}, Lcom/fyber/b/l;->a(Lcom/fyber/b/l;)Lcom/fyber/requesters/VirtualCurrencyCallback;

    move-result-object v0

    sget-object v1, Lcom/fyber/requesters/RequestError;->CONNECTION_ERROR:Lcom/fyber/requesters/RequestError;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/VirtualCurrencyCallback;->onRequestError(Lcom/fyber/requesters/RequestError;)V

    return-void
.end method

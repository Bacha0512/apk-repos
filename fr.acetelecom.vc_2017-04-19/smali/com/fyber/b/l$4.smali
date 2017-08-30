.class final Lcom/fyber/b/l$4;
.super Lcom/fyber/utils/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/b/l;->a(Lcom/fyber/currency/VirtualCurrencyResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/currency/VirtualCurrencyResponse;

.field final synthetic b:Lcom/fyber/b/l;


# direct methods
.method constructor <init>(Lcom/fyber/b/l;Lcom/fyber/currency/VirtualCurrencyResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/b/l$4;->b:Lcom/fyber/b/l;

    iput-object p2, p0, Lcom/fyber/b/l$4;->a:Lcom/fyber/currency/VirtualCurrencyResponse;

    invoke-direct {p0}, Lcom/fyber/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/fyber/b/l$4;->b:Lcom/fyber/b/l;

    invoke-static {v0}, Lcom/fyber/b/l;->a(Lcom/fyber/b/l;)Lcom/fyber/requesters/VirtualCurrencyCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/b/l$4;->a:Lcom/fyber/currency/VirtualCurrencyResponse;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/VirtualCurrencyCallback;->onSuccess(Lcom/fyber/currency/VirtualCurrencyResponse;)V

    return-void
.end method

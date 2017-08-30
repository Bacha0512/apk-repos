.class public abstract Lcom/fyber/requesters/Requester;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final EXTRA_AD_FORMAT:Ljava/lang/String; = "EXTRA_AD_FORMAT"


# instance fields
.field protected a:Lcom/fyber/requesters/Callback;

.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Lcom/fyber/requesters/Callback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/fyber/requesters/Requester;->a:Lcom/fyber/requesters/Callback;

    return-void
.end method

.method protected constructor <init>(Lcom/fyber/requesters/Requester;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "requester cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/fyber/utils/m;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    :cond_1
    iget-object v0, p1, Lcom/fyber/requesters/Requester;->a:Lcom/fyber/requesters/Callback;

    iput-object v0, p0, Lcom/fyber/requesters/Requester;->a:Lcom/fyber/requesters/Callback;

    iget-object v0, p1, Lcom/fyber/requesters/Requester;->c:Landroid/os/Handler;

    iput-object v0, p0, Lcom/fyber/requesters/Requester;->c:Landroid/os/Handler;

    return-void
.end method

.method private d()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "CUSTOM_PARAMS_KEY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fyber/Fyber$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Lcom/fyber/requesters/RequestError;)V
    .locals 1

    new-instance v0, Lcom/fyber/requesters/Requester$1;

    invoke-direct {v0, p0, p1}, Lcom/fyber/requesters/Requester$1;-><init>(Lcom/fyber/requesters/Requester;Lcom/fyber/requesters/RequestError;)V

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/Requester;->a(Lcom/fyber/utils/d;)V

    return-void
.end method

.method protected final a(Lcom/fyber/utils/d;)V
    .locals 1

    iget-object v0, p0, Lcom/fyber/requesters/Requester;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/requesters/Requester;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    invoke-static {p1}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/d;)V

    goto :goto_0
.end method

.method protected abstract a()Z
.end method

.method protected final a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object v1, Lcom/fyber/requesters/RequestError;->NULL_CONTEXT_REFERENCE:Lcom/fyber/requesters/RequestError;

    invoke-virtual {p0, v1}, Lcom/fyber/requesters/Requester;->a(Lcom/fyber/requesters/RequestError;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/fyber/utils/h;->f()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/fyber/requesters/RequestError;->DEVICE_NOT_SUPPORTED:Lcom/fyber/requesters/RequestError;

    invoke-virtual {p0, v1}, Lcom/fyber/requesters/Requester;->a(Lcom/fyber/requesters/RequestError;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/Fyber$a;->d()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/fyber/requesters/RequestError;->SDK_NOT_STARTED:Lcom/fyber/requesters/RequestError;

    invoke-virtual {p0, v1}, Lcom/fyber/requesters/Requester;->a(Lcom/fyber/requesters/RequestError;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->a()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/fyber/requesters/RequestError;->MISMATCH_CALLBACK_TYPE:Lcom/fyber/requesters/RequestError;

    invoke-virtual {p0, v1}, Lcom/fyber/requesters/Requester;->a(Lcom/fyber/requesters/RequestError;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fyber/requesters/Requester;->d()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->c()Ljava/util/Map;

    move-result-object v1

    const-string v2, "CUSTOM_PARAMS_KEY"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public addParameters(Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/fyber/utils/m;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/fyber/requesters/Requester;->d()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->c()Ljava/util/Map;

    move-result-object v1

    const-string v2, "CUSTOM_PARAMS_KEY"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/fyber/requesters/Requester;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final c(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/fyber/requesters/Requester;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method protected final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    return-object v0
.end method

.method public clearParameters()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fyber/requesters/Requester;->d()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final d(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fyber/requesters/Requester;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public invokeCallbackOnHandler(Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/fyber/requesters/Requester;->c:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fyber/requesters/Requester;->d()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract request(Landroid/content/Context;)V
.end method

.method public withCallback(Lcom/fyber/requesters/Callback;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/requesters/Callback;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/fyber/requesters/Requester;->a:Lcom/fyber/requesters/Callback;

    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public withPlacementId(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "PLACEMENT_ID_KEY"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

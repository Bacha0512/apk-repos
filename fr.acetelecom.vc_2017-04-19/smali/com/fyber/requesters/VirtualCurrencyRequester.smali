.class public Lcom/fyber/requesters/VirtualCurrencyRequester;
.super Lcom/fyber/requesters/Requester;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/requesters/Requester",
        "<",
        "Lcom/fyber/requesters/VirtualCurrencyRequester;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/fyber/requesters/Requester;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fyber/requesters/Requester;-><init>(Lcom/fyber/requesters/Requester;)V

    return-void
.end method

.method private constructor <init>(Lcom/fyber/requesters/VirtualCurrencyCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fyber/requesters/Requester;-><init>(Lcom/fyber/requesters/Callback;)V

    return-void
.end method

.method public static create(Lcom/fyber/requesters/VirtualCurrencyCallback;)Lcom/fyber/requesters/VirtualCurrencyRequester;
    .locals 1

    new-instance v0, Lcom/fyber/requesters/VirtualCurrencyRequester;

    invoke-direct {v0, p0}, Lcom/fyber/requesters/VirtualCurrencyRequester;-><init>(Lcom/fyber/requesters/VirtualCurrencyCallback;)V

    return-object v0
.end method

.method public static from(Lcom/fyber/requesters/Requester;)Lcom/fyber/requesters/VirtualCurrencyRequester;
    .locals 1

    new-instance v0, Lcom/fyber/requesters/VirtualCurrencyRequester;

    invoke-direct {v0, p0}, Lcom/fyber/requesters/VirtualCurrencyRequester;-><init>(Lcom/fyber/requesters/Requester;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    iget-object v0, p0, Lcom/fyber/requesters/VirtualCurrencyRequester;->a:Lcom/fyber/requesters/Callback;

    instance-of v0, v0, Lcom/fyber/requesters/VirtualCurrencyCallback;

    return v0
.end method

.method protected final bridge synthetic b()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public forCurrencyId(Ljava/lang/String;)Lcom/fyber/requesters/VirtualCurrencyRequester;
    .locals 2

    invoke-virtual {p0}, Lcom/fyber/requesters/VirtualCurrencyRequester;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "CURRENCY_ID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public notifyUserOnReward(Z)Lcom/fyber/requesters/VirtualCurrencyRequester;
    .locals 3

    invoke-virtual {p0}, Lcom/fyber/requesters/VirtualCurrencyRequester;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "NOTIFY_USER_ON_REWARD"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public request(Landroid/content/Context;)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/fyber/requesters/VirtualCurrencyRequester;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fyber/requesters/RequestError;->SECURITY_TOKEN_NOT_PROVIDED:Lcom/fyber/requesters/RequestError;

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/VirtualCurrencyRequester;->a(Lcom/fyber/requesters/RequestError;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/fyber/requesters/VirtualCurrencyRequester;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/VirtualCurrencyCallback;

    const-string v3, "CURRENCY_ID"

    invoke-virtual {p0, v3}, Lcom/fyber/requesters/VirtualCurrencyRequester;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CUSTOM_PARAMS_KEY"

    invoke-virtual {p0, v4}, Lcom/fyber/requesters/VirtualCurrencyRequester;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "TRANSACTION_ID"

    invoke-virtual {p0, v5}, Lcom/fyber/requesters/VirtualCurrencyRequester;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "PLACEMENT_ID_KEY"

    invoke-virtual {p0, v6}, Lcom/fyber/requesters/VirtualCurrencyRequester;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "NOTIFY_USER_ON_REWARD"

    invoke-virtual {p0, v7}, Lcom/fyber/requesters/VirtualCurrencyRequester;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v8, "vcs"

    invoke-static {v8}, Lcom/fyber/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Lcom/fyber/a/a;)Lcom/fyber/utils/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/utils/u;->a()Lcom/fyber/utils/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/utils/u;->c()Lcom/fyber/utils/u;

    move-result-object v1

    new-instance v8, Lcom/fyber/b/l;

    invoke-direct {v8, v1, v0, v2, p1}, Lcom/fyber/b/l;-><init>(Lcom/fyber/utils/u;Lcom/fyber/requesters/VirtualCurrencyCallback;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Lcom/fyber/b/l;->a(Z)Lcom/fyber/b/l;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fyber/b/l;->a(Ljava/util/Map;)Lcom/fyber/b/l;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/fyber/b/l;->d(Ljava/lang/String;)Lcom/fyber/b/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/requesters/VirtualCurrencyRequester;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/fyber/b/l;->a(Landroid/os/Handler;)Lcom/fyber/b/l;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fyber/b/l;->b(Ljava/lang/String;)Lcom/fyber/b/l;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/fyber/b/l;->c(Ljava/lang/String;)Lcom/fyber/b/l;

    move-result-object v0

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public withTransactionId(Ljava/lang/String;)Lcom/fyber/requesters/VirtualCurrencyRequester;
    .locals 2

    invoke-virtual {p0}, Lcom/fyber/requesters/VirtualCurrencyRequester;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "TRANSACTION_ID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withVirtualCurrencyCallback(Lcom/fyber/requesters/VirtualCurrencyCallback;)Lcom/fyber/requesters/VirtualCurrencyRequester;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/fyber/requesters/VirtualCurrencyRequester;->withCallback(Lcom/fyber/requesters/Callback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/requesters/VirtualCurrencyRequester;

    return-object v0
.end method

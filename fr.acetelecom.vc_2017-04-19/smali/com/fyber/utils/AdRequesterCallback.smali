.class public abstract Lcom/fyber/utils/AdRequesterCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fyber/requesters/RequestCallback;


# instance fields
.field protected a:Lcom/fyber/requesters/Requester;


# direct methods
.method public constructor <init>(Lcom/fyber/requesters/Requester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/utils/AdRequesterCallback;->a:Lcom/fyber/requesters/Requester;

    return-void
.end method


# virtual methods
.method public onAdAvailable(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V
    .locals 0

    return-void
.end method

.method public onRequestError(Lcom/fyber/requesters/RequestError;)V
    .locals 0

    return-void
.end method

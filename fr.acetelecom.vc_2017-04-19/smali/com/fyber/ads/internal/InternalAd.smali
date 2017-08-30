.class public abstract Lcom/fyber/ads/internal/InternalAd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/fyber/ads/internal/InternalAd",
        "<TV;TU;>;U:",
        "Lcom/fyber/ads/Ad;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lcom/fyber/ads/Ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Ljava/util/Map;
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

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/ads/internal/InternalAd;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/fyber/ads/internal/InternalAd;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/fyber/ads/internal/InternalAd;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/fyber/ads/internal/a;)V
.end method

.method public addRawContextData(Ljava/lang/String;Ljava/lang/Object;)Lcom/fyber/ads/internal/InternalAd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->g:Ljava/util/Map;

    new-instance v0, Lcom/fyber/utils/y;

    iget-object v1, p0, Lcom/fyber/ads/internal/InternalAd;->g:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/fyber/utils/y;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->h:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addTrackingParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/internal/InternalAd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->d:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addTrackingParameters(Ljava/util/Map;)Lcom/fyber/ads/internal/InternalAd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->d:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public getAd()Lcom/fyber/ads/Ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->a:Lcom/fyber/ads/Ad;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fyber/ads/internal/InternalAd;->h()Lcom/fyber/ads/Ad;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->a:Lcom/fyber/ads/Ad;

    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->a:Lcom/fyber/ads/Ad;

    return-object v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getContextData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->g:Ljava/util/Map;

    invoke-static {v0}, Lcom/fyber/utils/m;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->h:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContextData()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->g:Ljava/util/Map;

    invoke-static {v0}, Lcom/fyber/utils/m;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->g:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getRawContextDataValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->g:Ljava/util/Map;

    invoke-static {v0}, Lcom/fyber/utils/m;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRawContextDataValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fyber/ads/internal/InternalAd;->getRawContextDataValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p3, v0

    :cond_0
    return-object p3
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/ads/internal/InternalAd;->d:Ljava/util/Map;

    return-object v0
.end method

.method protected abstract h()Lcom/fyber/ads/Ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation
.end method

.method public setPlacementId(Ljava/lang/String;)Lcom/fyber/ads/internal/InternalAd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    iput-object p1, p0, Lcom/fyber/ads/internal/InternalAd;->e:Ljava/lang/String;

    return-object p0
.end method
